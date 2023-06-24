//
//  KakaoAuthVM.swift
//  kakaologin
//
//  Created by 성현주 on 2023/06/24.
//

import Foundation
import Combine
import KakaoSDKAuth
import KakaoSDKUser

class KakapAuthVM : ObservableObject {
    var subscription = Set<AnyCancellable >()
    
    
    func handleKakaoLogin(){
        print("KakapAuthVM - handleKakaoLogin() called")
        
        // 카카오톡 실행 가능 여부 확인
        if (UserApi.isKakaoTalkLoginAvailable()) {
            UserApi.shared.loginWithKakaoTalk {(oauthToken, error) in
                if let error = error {
                    print(error)
                }
                else {
                    print("loginWithKakaoTalk() success.")
                    
                    //do something
                    _ = oauthToken
                }
            }
        } else {UserApi.shared.loginWithKakaoAccount {(oauthToken, error) in
            if let error = error {
                print(error)
            }
            else {
                print("loginWithKakaoAccount() success.")
                
                //do something
                _ = oauthToken
            }
        }
            
            
        }
    }
}
