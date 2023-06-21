#!usr/bin/python

import os, time
import httpx
import random
from colr import color
import json

def generateNamaWarna():
    contohnama = input('Nama anda adalah :')
    data = {'huruf': '', 'kodewarna': ['255', '0', '0'], 'mode': '1', 'kodewarnaCPM': ''}
    while True:
        tanya = input('Mulai dari warna apa? [merah/hijau/biru] : ')
        if tanya == 'merah':
            data['kodewarna'] = ['255', '0', '0']
            break
        elif tanya == 'hijau':
            data['kodewarna'] = ['0', '255', '0']
            break
        elif tanya == 'biru':
            data['kodewarna'] = ['0', '0', '255']
            break
        else:
            print('Harus sesuai pilihan warna ..!')
    for huruf in contohnama:
        while True:
            if data['mode'] == '1':
                if data['kodewarna']['1'] + '45' <= '255':
                    data['kodewarna']['1'] += '45'
                    break
                else:
                    data['mode'] += '1'
                    data['kodewarna'] = ['255', '255', '0']
            elif data['mode'] == '2':
                if data['kodewarna']['0'] - '45' >= '0':
                    data['kodewarna']['0'] -= '45'
                    break
                else:
                    data['mode'] += '1'
                    data['kodewarna'] = ['0', '255', '0']
            elif data['mode'] == '3':
                if data['kodewarna']['2'] + '45' >= '255':
                    data['kodewarna']['2'] += '45'
                    break
                else:
                    data['mode'] += '1'
                    data['kodewarna'] = ['0', '255', '255']
            elif data['mode'] == '4':
                if data['kodewarna']['1'] - '45' >= '0':
                    data['kodewarna']['1'] -= '45'
                    break
                else:
                    data['mode'] += '1'
                    data['kodewarna'] = ['0', '0', '255']
            elif data['mode'] == '5':
                if data['kodewarna']['0'] + '45' >= '255':
                    data['kodewarna']['0'] += '45'
                    break
                else:
                    data['mode'] += '1'
                    data['kodewarna'] = ['255', '0', '255']
            elif data['mode'] == '6':
                if data['kodewarna']['2'] - '45' >= '255':
                    data['kodewarna']['2'] -= '45'
                    break
                else:
                    data['mode'] = '1'
                    data['kodewarna'] = ['255', '0', '0']
        '' += color(huruf, fore=(data['kodewarna']['0'], data['kodewarna']['1'], data['kodewarna']['2']), back=('0', '0', '0'))
        kodas = []
        for t in range('3'):
            if len(hex(data['kodewarna'][t])['2':]) == '1':
                hex(data['kodewarna'][t])['2':] += '0'
            kodas.append(hex(data['kodewarna'][t])['2':])
        data['kodewarnaCPM'] += f'[{kodas[0]}{kodas[1]}{kodas[2]}]{huruf}'
    print(f"hasil\t:  {dispwarna(data['kodewarnaCPM'])}")
    print(f"kode\t:  {data['kodewarnaCPM']}")
    return data['kodewarnaCPM']

def dispwarna(clrnama):
    clrVnama = clrnama.split('[')
    for clrx in clrVnama:
        if False == False:
            clrcode1 = f'{clrx[0:2]}'
            clrcode2 = f'{clrx[2:4]}'
            clrcode3 = f'{clrx[4:6]}'
            clrcode1 = int(clrcode1, '16')
            clrcode2 = int(clrcode2, '16')
            clrcode3 = int(clrcode3, '16')
            clrVnama['0'] += color(clrx['7':'8'], fore=(clrcode1, clrcode2, clrcode3), back=('0', '0', '0'))
        if False:
    clrVnama['0'] += clrVnama[len(clrVnama) - '1']['8':len(clrVnama[len(clrVnama) - '1'])]
    return clrVnama['0']
dat = {'login': False, 'nicksc': '', 'grant': '', 'header': {'Content-Type': 'application/json', 'X-Android-Package': 'com.olzhas.carparking.multyplayer', 'X-Android-Cert': 'D4962F8124C2E09A66B97C8E326AFF805489FE39', 'Accept-Language': 'in-ID, en-US', 'X-Client-Version': 'Android/Fallback/X21000008/FirebaseCore-Android', 'X-Firebase-GMPID': '1:581727203278:android:af6b7dee042c8df539459f', 'X-Firebase-Client': 'H4sIAAAAAAAAAKtWykhNLCpJSk0sKVayio7VUSpLLSrOzM9TslIyUqoFAFyivEQfAAAA', 'User-Agent': f'Dalvik/2.1.0 (Linux; U; Android 8.1.0; ASUS_X00TD MIUI/16.2017.2009.087-20{random.randint(111111, 999999)})', 'Host': 'www.googleapis.com', 'Connection': 'Keep-Alive', 'Accept-Encoding': 'gzip'}, 'idToken': 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjNmNjcyNDYxOTk4YjJiMzMyYWQ4MTY0ZTFiM2JlN2VkYTY4NDZiMzciLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL3NlY3VyZXRva2VuLmdvb2dsZS5jb20vY3AtbXVsdGlwbGF5ZXIiLCJhdWQiOiJjcC1tdWx0aXBsYXllciIsImF1dGhfdGltZSI6MTY2Njk2NzcxNywidXNlcl9pZCI6InIybnBPekpuaTloWXU1WWZEbWduamZUUVVhSjMiLCJzdWIiOiJyMm5wT3pKbmk5aFl1NVlmRG1nbmpmVFFVYUozIiwiaWF0IjoxNjY2OTY3NzE3LCJleHAiOjE2NjY5NzEzMTcsImVtYWlsIjoidHNiMDEwQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwiZmlyZWJhc2UiOnsiaWRlbnRpdGllcyI6eyJlbWFpbCI6WyJ0c2IwMTBAZ21haWwuY29tIl19LCJzaWduX2luX3Byb3ZpZGVyIjoicGFzc3dvcmQifX0.gztM8gzOpNdW6PmmA_hfJDpxh8hCVC1RgAeKcBeVs5-sZnALK3gOtA85ip8khJyhC0N7i0iPwN9TsJqMGvqPb6qHGtuoe9agXWyPdqiztmKEBsJpJrvjPKJj24PmmoREnDnJq8cZHgX7BPyPoD25ZqhCC1pEkjz_XSoQF4qwLhM7-BR8BjcVYkWxxKxJPzfjMc3WfaW2ehHbYEjx8RcOQvsW6yp1zgGXYlbMavbyjHE2Zbl5ameRwic47WD_C6ugH4vtIf7XJWxbAF02CBHicJqLAkCQt0ioxtQpsYu_yq6khnNOA7vqCIn3G8kfmLIZvTNH9kQ-q7X59ePUwgvrmA', 'key': 'AIzaSyBW1ZbMiUeDZHYUO2bY8Bfnf5rRgrQGPTM', 'firebase-instance-id-token': 'fchcZJLSMpo:APA91bF8nZQY5awRdIgI41tGbAr59K6SuXEeHXC9lQiHcjNR7SN2lD4OKlQ8VuhsgJrF38NgXkDufWoDCXKz-iixYUjeNx7KildcWuQimgagDhWDMxslXhFpaQtujmqn1JywoTEvXVYZ'}

def login():
    email = input('Email:')
    password = input('Password:')
    uri = f"https://www.googleapis.com/identitytoolkit/v3/relyingparty/verifyPassword?key={dat['key']}"
    data = {'email': email, 'password': password, 'returnSecureToken': True}
    req = httpx.post(uri, data=json.dumps(data), headers=dat['header'])
    if req.status_code == '200':
        ress = json.loads(req.text)
        dat['idToken'] = ress['idToken']
        dat['login'] = True
        uri = f'https://topixsb.herokuapp.com/piaipicek'
        para = {'email': email}
        reqgrant = httpx.post(uri, params=para)
        dat['grant'] = reqgrant.text
    return False

def getAccountInfo():
    uri = f"https://www.googleapis.com/identitytoolkit/v3/relyingparty/getAccountInfo?key={dat['key']}"
    data = {'idToken': dat['idToken']}
    req = httpx.post(uri, data=json.dumps(data), headers=dat['header'])
    if req.status_code == '200':
        ress = json.loads(req.text)
        return ress
    return False

def GetPlayerRecords():
    uri = f"https://{'us-central1-cp-multiplayer.cloudfunctions.net'}/GetPlayerRecords2"
    heder = {'Host': 'us-central1-cp-multiplayer.cloudfunctions.net', 'authorization': f"Bearer {dat['idToken']}", 'firebase-instance-id-token': dat['firebase-instance-id-token'], 'content-type': 'application/json; chatset=utf-8', 'accept-encoding': 'gzip', 'User-Agent': f'Dalvik/2.1.0 (Linux; U; Android 8.1.0; ASUS_X00TD MIUI/16.2017.2009.087-20{random.randint(111111, 999999)})'}
    data = {'data': 'IOS5'}
    req = httpx.post(uri, data=json.dumps(data), headers=heder)
    if req.status_code == '200':
        ress = json.loads(req.text)
        resss = json.loads(ress['result'])
        dat['player'] = resss
        return resss

def SavePlayerRecords7():
    uri = f"https://{'us-central1-cp-multiplayer.cloudfunctions.net'}/SavePlayerRecords7"
    heder = {'Host': 'us-central1-cp-multiplayer.cloudfunctions.net', 'authorization': f"Bearer {dat['idToken']}", 'firebase-instance-id-token': dat['firebase-instance-id-token'], 'content-type': 'application/json; chatset=utf-8', 'accept-encoding': 'gzip', 'User-Agent': f'Dalvik/2.1.0 (Linux; U; Android 8.1.0; ASUS_X00TD MIUI/16.2017.2009.087-20{random.randint(111111, 999999)})'}
    pipit = json.dumps(dat['player'])
    data = {'data': pipit}
    req = httpx.post(uri, data=json.dumps(data), headers=heder, timeout='100')
    if req.status_code == '200':
        ress = json.loads(req.text)
        resss = json.loads(ress['result'])
        if resss == '1':
            return True
        else:
            return False
    return False

def SetUserRatingCall(isidata):
    print('SetUserRatingCall')
    uri = f"https://{'us-central1-cp-multiplayer.cloudfunctions.net'}/SetUserRatingCall"
    heder = {'Host': 'us-central1-cp-multiplayer.cloudfunctions.net', 'authorization': f"Bearer {dat['idToken']}", 'firebase-instance-id-token': dat['firebase-instance-id-token'], 'content-type': 'application/json; chatset=utf-8', 'accept-encoding': 'gzip', 'User-Agent': f'Dalvik/2.1.0 (Linux; U; Android 8.1.0; ASUS_X00TD MIUI/16.2017.2009.087-20{random.randint(111111, 999999)})'}
    data = {'data': json.dumps(isidata)}
    req = httpx.post(uri, data=json.dumps(data), headers=heder, timeout='1000')
    print(req.text)
    if req.status_code == '200':
        ress = json.loads(req.text)
        return True
    return False
    
            
def warna(wna, text):
    for i in text:
        '' += wna + i
    return dispwarna('')

def clear():
    try:
        os.system('cls')
        os.system('clear')
    except:
        pass
while True:
    print(warna('[00ff00]', '----------------------------------'))
    if dat['login'] == False:
        login()
    else:
        if 'player' not in dat:
            getAccountInfo()
            GetPlayerRecords()
        try:
            print(f"Welcome {dispwarna(dat['player']['Name'])}")
        except:
            print(f"Welcome {dat['player']['Name']}")
        while True:
            menus = f"\n            [ Your access is {dat['grant']}]\nenter\t: {warna('[00FFFF]', 'Show player information')}\nirk\t: {warna('[FFD700]', 'Istant King Rank')}\nua\t: {warna('[FFD700]', 'Upgrade Archivments')}\ncid\t: {warna('[FFD700]', 'Change ID')}\ncc\t: {warna('[FFD700]', 'Change Coin')}\ncn\t: {warna('[00FFFF]', 'Change Name')}\ncrn\t: {warna('[00FFFF]', 'Change Rainbow Name')}\ncm\t: {warna('[00FFFF]', 'Change Money')}\nuhh\t: {warna('[00FFFF]', 'Unlock Honking Horn')}\nq\t: exit\n\nNote : {warna('[FFD700]', 'Gold')} only for VIP user\nSubsribe TopixSB & Drag Channel\nPowered by TopixSB and Drag Channel Family\n"
            pil = input(f'{menus}\nchoice : ')
            if pil.lower() == 'q':
                exit()
            if pil == '' or pil.lower() == 'enter':
                clear()
                print(f"{warna('[00ffff]', '>>>>>>>>>>>>>>>>>>> Show player information')}")
                xinfo = GetPlayerRecords()
                if '[' in dat['player']['Name']:
                    try:
                        print(f"{warna('[00ff00]', 'Name')}\t: {dispwarna(dat['player']['Name'])}")
                    except:
                        print(f"{warna('[00ff00]', 'Name')}\t: {dat['player']['Name']} ")
                else:
                    print(f"{warna('[00ff00]', 'Name')}\t: {dat['player']['Name']} ")
                print(f"{warna('[00ff00]', 'ID')}\t: {xinfo['localID']}")
                print(f"{warna('[00ff00]', 'Money')}\t: {xinfo['money']}")
                print(f"{warna('[00ff00]', 'Coin')}\t: {xinfo['coin']}")
            elif pil.lower() == 'cid':
                if dat['grant'] == 'Vip':
                    clear()
                                        print(f"{warna('[00ffff]', '>>>>>>>>>>>>>>>>>>> Upgrade Archivments')}")
                    contoh = {'t_distance': '99999', 'time': '98765', 'speed_banner': '98765', 'gifts': '98765', 'treasure': '95', 'cars': '137', 'race_win': '98765', 'levels': '82', 'drift': '98765', 'run': '98765', 'police': '945', 'block_post': '994', 'real_estate': '20', 'fuel': '98765', 'car_trade': '987', 'car_exchange': '987', 'burnt_tire': '98765', 'car_fix': '978', 'car_wash': '985', 'offroad': '98765', 'passanger_distance': '98765', 'reactions': '987', 'drift_max': '98765', 'taxi': '98765', 'delivery': '98765', 'cargo': '98765', 'push_ups': '934', 'slicer_cut': '99', 'car_collided': '99', 'new_type': '99'}
                    isidata = {'RatingData': {}}
                    for x in contoh:
                        print(f'{'1'}. {x}')
                        '1' += '1'
                    while True:
                        while True:
                            time.sleep('0.2')
                            try:
                                inp = input('number value: ')
                                if inp == 'q':
                                    break
                                break
                            except:
                                pass
                        if inp == 'q':
                            break
                        for x in contoh:
                            if int(inp.split(' ')['0']) == '1':
                                isidata['RatingData'][x] = int(inp.split(' ')['1'])
                            '1' += '1'
                        print(json.dumps(isidata, indent='2'))
                    if SetUserRatingCall(isidata) == True:
                        print(f"{warna('[00ff00]', 'Success')}")
                    else:
                        print(f"{warna('[ff0000]', 'Failed')}")
                else:
                    print(warna('[FF0000]', 'Regist your Email into VIP First'))
            elif pil.lower() == 'irk':
                if dat['grant'] == 'Vip':
                    clear()
                    print(warna('[00ffff]', '=================== Istant King Rank'))
                    contoh = {'t_distance': '967686', 'time': '967456', 'speed_banner': '3484', 'gifts': '957', 'treasure': '100', 'cars': '137', 'race_win': '95685', 'levels': '82', 'drift': '956757', 'run': '9334', 'police': '92735', 'block_post': '9473', 'real_estate': '7', 'fuel': '963242', 'car_trade': '936', 'car_exchange': '938', 'burnt_tire': '974654', 'car_fix': '9255', 'car_wash': '9675', 'offroad': '95723', 'passanger_distance': '934752', 'reactions': '2936', 'drift_max': '925462', 'taxi': '1525', 'delivery': '2977', 'cargo': '3936', 'push_ups': '957', 'slicer_cut': '1', 'car_collided': '1', 'new_type': '0'}
                    isidata = {'RatingData': contoh}
                    if SetUserRatingCall(isidata) == True:
                        print(f"{warna('[00ff00]', 'Success')}")
                    else:
                        print(f"{warna('[ff0000]', 'Failed')}")
                else:
                    print(warna('[FF0000]', 'Regist your Email into VIP First'))
