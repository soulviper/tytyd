#!usr/bin/python

import os, time
import httpx
import random
from colr import color
import json


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
    
            
while True:
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
            menus = f"\n            [ Your access is {dat['grant']}]\nenter\t: {warna('[00FFFF]', 'Show player information')}\nirk\t: {warna('[FFD700]', 'Instan King Rank')}\nua\t: {warna('[FFD700]', 'Upgrade Archivments')}\ncid\t: {warna('[FFD700]', 'Change ID')}\ncc\t: {warna('[FFD700]', 'Change Coin')}\ncn\t: {warna('[00FFFF]', 'Change Name')}\ncrn\t: {warna('[00FFFF]', 'Change Money')}\nuhh\t: {warna('[00FFFF]', 'Unlock Honking Horn')}\nq\t: exit\n\nNote : {warna('[FFD700]', 'Gold')} only for VIP user\nSubsribe DPRLynX\nPowered by @DPR_LynX\n"
            pil = input(f'{menus}\nchoice : ')
            if pil.lower() == 'q':
                exit()
