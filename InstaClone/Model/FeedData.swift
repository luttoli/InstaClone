//
//  FeedData.swift
//  InstaClone
//
//  Created by 김지훈 on 3/3/24.
//

import Foundation
import UIKit

struct FeedData {
    static var feedList: [Feed] = [fridend6Feed, fridend7Feed, fridend8Feed, fridend9Feed, fridend10Feed]
    
    static var feedImage = [steak, jeju, singapore, la, cancun]
}

let fridend6Feed: Feed = Feed(nickName: "fridend6", profileImage: UIImage(named: "feedProfileImage.png"), location: nil, feedImage: steak, likeStatus: false, likedBy: [LikedbyData.likedList[0]], likeCount: 99999, content: "We first met at Gwanghwamun. I was eating steak, but it came out late.", comment: fridend6FeedComment)

let steak: [String?] = [
     "https://lh3.googleusercontent.com/fife/ALs6j_HtC9aCCYnrBrHmi55FCMxMeybSxsbg80fqeZOVvnR55n8eR19KPCsKQ-Ni31jxjFnOCl-saMls-zg1_Q0C99m5egwnKYbc6uc_xgK8P56vOjYWxV71kDaSelyvibeSYoMECa-uj2u8C5f57QhOYjadxHg4mPsL7rfVZV-DKiqe8yTOy4TQOb6HIMj4cw2u2MmrThn71CpiJJJXSYKyuynyUcCbptmp1ISlJk8eoZli7xnW0VrL7KZ0JVtYY1vUcF1C9Dsht-ArBXff7XhXJOkLwzjVtqUarfgzCFEjP37BgHz26QZhCmCbvoRaTPW0M_Wy8kW7bc1DkfRRfRs9DS8Ec164dhMiXOii0siSt2Hh19inKolatSorco0dM_rQPHDnTKyd9auV3PXjbevakimuJiqB5EOFwKrjk1y7z17ihZJT6MajU-j51Zkk6xVWP1gfY86SL2TlOks09WXNt93vWjGTHQY4MApPyh0lpiZfpBzHNxM6HrB8x12SuAJfvpHyYOjhfAmycFpDXGDdG8iRWQwhf_6LIOtGTGa5vukZrKzXrlOVcbfHODJTL8yW0pjGSG7xODnNm-lP4nm6_Z6b8p7lIxz-xBFCiwg7wSVYP0zd31M1-b1GZ8HaSeHRQeNWeoCVjSAhkg-WX37czvw7NZ5Q8sjn6gKG70IWL64L3ZRNH5fq-oribxmullA_jg8PmqrObc445rBBbIgJUY7HeQhhKEL8s6RiizQwEaPEXi-91GuJBOH5WVanxtLevJPuBNJG0wQQr9golfiAGDKi0ECEg5CMmmwRGPIoWMQMta7KUtVBcZknmAdkF6-Kwt5Q_Ved3LHk1LQ6rA9JG3Fc2Ei_QjjiizfhcQ33LzlGW5E_hQyXlGnUIXDLhNbnEI9aOSpKfjkwvvMCpJFBOVhRQ_7dst9BR3i-q5BLY1991HwiDKJjHMB1W9vxe5tApyPJDdwh8ebLTsYtX3iXBMmjsBCFQqQnJfEHvIm0gUP4hdCAuWppuJxluuVWUfgnHp-9QL2Jb7EOLh4cwmSJkaA25AbN4GSyUFsao_SvpBD6TVT9Lm_iMG_BbztIHJSVwNqyToiuO2FSNoNGo4-1iPy2lHIrOWi_wkRBd3rXrQ6FPh6P9EnI1Okt2-tx1g-noI2TnmEBfUVVXNarMIOZ7nzfkdW23OTrauP_GHObUMBR8-Jq_-ePG95bMgLzH9Nr2A5GhtRTh0qFMQfGrm1cMqJE6inIcsEmfbLmw0HyIRkG35FVFH37EoUu7qjZ9LGz-26WhnW5KlkbdXXixdZi5nQsGo4Yfu1KtV0Nanwmksax2xgNl3S8rKMWA-mpPVqKKSmUKNDbUKoQ8Snal8qFIomEY2978WNCbgMmjOe6itR9yTw6ZWADxnu1KltOMnwx9V2s099w_IAdGeC9HLyj46I3gBcdF4UDBg-N7V9affRBBivbI9Cuhwquj5umQtvtZY2U5QuiBLKztmnF0DaI9h8Gn4cJgahhVOe0TxJF4AnELI9VUtZIjElJZvYk_i7Luic6gUbEr__L3C1dPEX6VRXM0kiAuk4-ksxu0ql7mPyTEEAaUrbftUuoJ2qSS_bL05z0CuU5WDO_FAWXLXvtCcF2GKXaEwjPCPo63YXSsq_c9NAiffwRDpgoWPEOAPk4oXvVsWD9SWNhLE3X52yL=w2000-h4354",
     "https://lh3.googleusercontent.com/fife/ALs6j_EhdOFJjfb7VzxvkG3ydI94Qc2Dn29a3fVjsiA3fuagokOXGZg9BmcCxon_HKtChGGXc5e2e6H60BEUEtQjoo9UKFaXFdObcacwbCeeFzoKhxmMBkJVSezWnvv6pMLRO7dyPjpJXPlFnM6SJtiXLx00UzSlcQ9Sgzb5rwhq2_aZ34kNAQ8fiTmb8EqkjCywRax_sfwG8boGrSQy1syQPcDNibW15bHE_GAGLorqcyiwGU88blL0xei3RUlqFlQ_CUQRNlNR4pfgltVc-Ld0Qcf7VtFFDc5y3eHsr8xCC4hFu4mwbEMyeiBuZfcgXIQMTfKoE9O4YcKo_V-UrdgF2D72GUIG1dNyyxYHn7Kh6aChuf1mSmAk0I1oq7dqcmZmlBMimDAlFblMjTlHNJGpejYgahe1qTg21-qAYEVT0jZJCRVrBQnWha5izrW0wgRFZATAq8brh7-bNs0PszjI4mSuW-2LoWbDMT4ZvToBbDeMBHRhSddwoXCWQaVDSM-CUC1oAaNip2DejoRGY94gcJWNMPnwXmK7k2MM9eLrc6TbgKFwfTAOa6ggiXniDPgRlatdRBXT84vqpmltHX_ievuHdtlDKQ22RW7OsZ9WlsHVzSBMt15z4bt9KPOEM4WMqIMn8SIGqaKh23A15O-XB_sXKatVq3wxcmDVixpFDavACWvrOB3OrqIOVOq95mK3Iwl-rS_XsmNbtss9J-OKtK6LeLkxBRH25IFUlNml4cnUhVQBGgKjIpnNAgV3CcLNT_y8h61kLEzi-hC64w0csHjQSAFRohn0iff_Hb9kqYx3MUr38by70NuY6Zu2NWBcC00V0sBsgSPFvqemphhtqNtZDFth6NfOObVMFVwIH9X5a375kS68tfYG_bnUDtRBBC0iY5cyKWRCgwwgbuv0oQKnIXLi_XZXNGOTgXija_qPsg5rohuHDWUQJAaSTxFQ0eXzqbG7HiU8S8CsUjcqYkyTkaffEMohQuw20EQ6o8YmLFJuzK8q37r3i5v2iv72Z21mxoIdesf_e2R72bL5w6B9DiSx4TE4TmjE_qgn_xESfHC8RnwPgGyPY5dNmDNq31ThxPEYuqtEdWuzwVxH1CpIsCsx3jWzNhKKMTTFOEYGzsvK7kFn3LlR06XkCz4eUBIpsOZ9QNofzfW8j5vFTnzhktXwv1tKoUQ1-0CdJNrkoBr-lyiXLvkJz3exMcYDnbL7ZTcu6k7pIPowvcSaawYCkeupRmHc8uBq3XFilpyzJODHobqpXYWEkQPwj3hAh95YzHLscG9CMZnLptVSwkvSU7QcGyo7di3n70fwmVpgBiGJ2SnyGn2PwL9Cxbd_WXKvgIWqJGFe5phvQnoW_3lAOqHAi-N5tS5UpXGE-wt80B09lPy42nOkcDPSrJ4gOFCDzeowh_ou-Hufh7C5Sm54mAgsgqajFBSeYeiePInLLglCHCNDbITcZBSCSEyxMtviuR89epk0_RPSJvFxUqvKoWA_a22EK2SWZoH4KLTj3c2zIEIj1pszIr3FS-4oh6u-3CyhtRXZvGBK3wGUv_z5hs5rbyaWjDneC5bA1hawMGMvicy3V1T50vo_79peiaI2YFuxzJ8YsCpIgGduR-W_OzR89vWdImHNkbE5sZj5e1rtymUWDcxWyaz8kcxTZbs_XTL7huIok9ts8nYfdg=w2000-h4354",
     "https://lh3.googleusercontent.com/fife/ALs6j_Ee_3ieP3t_vzKTV3JxHwLn22896xYVNGZd-ktQKDSz8zqiaJPjmsX4yizh4RKri9gRvVu3SBY5fPaMFHvkHS5SAf1b9Q-DN-kmG5MqQuWezslRMyA7pMbN37jVHHjFF3M_xvFsQywTJLZDUiAJ6mnnArJeLFgDuIq8JJkioluk_eSwXrr4gFCQJbQ1v1LHLV5d7lJVb6MUTuBeTjg7cUkWnyPPVdFnllRNV0uIYJ4CRNqtOTyDWF6Ay377H7AlhIJq6MZPwGlcjNbR_tGzLYwwpXRvrhHu6IvxcFYuF4wptO4Qu_-Y9H0nNaQZme06rqNv1-XmEJxTJFkrCFCCDoCyS9X_CeZ0Q29-UxGRC8gTnc5KWI4NvWIYUayOhp7shVsMAbZhKL6ajezO0S97TT6rr92kUEozbyCWdF-cSs8csrXauc4dWWfngWay2punIhN0cC50sT2w3z5KA2jHhrxou8S9MJW5CfhzegXA6eJCuHhvjaeJO_4eaGXs0rhQj-M9EIuSkaz0iJAVARd11A9knNLWBP_YA3-QtZWVHPd_LFfaO6ad4HUrxXfHMt9ayrjg4dr57kFLrkuTY-egOBu6icws2Lu2sJwHfrb6MpwRNaGr1UEgPj1t_urlpsNIQ_huJesna4Nl93bjv6Xw-Cm2YJ2-W575RqdkJaLpbY6UPwHfkoyv-wQGb7uXhRqYEZUvXBq6ARr2pNvB7EkP-CLt-SoEr-H9QkvO9AMqIKo2Pg_Bw44r_Q3nnlWZZMVAe1FbE-_9TvjgD0OrP0oitcPFsWlRRKlXLfZXjDYDqi-tmSpqNZ2iWo5hEJAf4oaAFvZgFCXDMepLGcLDbNyFOdeLzH1hWLrcMGeD5LPUGgzfXp-QGNWPS7c8lwz5Mn1OqQ0YMExYNmYZAHGWO2rXPI1pJ-Zjgy1fa2LLgiBKx1NBHSQUeX7ofn2vkJGZMgNfexznoT66gaNoyJ6_H-KlkmvO43sIAPr0VhAzyFmrIZEZwxpxklR2hlVMTqGBZl9M-U08p3RevfVC_x3OZpbyWi6JSItce83tsceIc5PZ4LnygCDAIirbIkRU6h7zjrud7m0Ru5oL4wOU44qEEOEaeUjtpnasWsJY0B2Yde_fVzYtbRtFHL3SaC8yjnLoMqDRr2rHFJg1vau4REhLm6sIr_JI6yWSFnXnxvRvlZeSSwnjzq0XWM9vj5p1DBZHcX_Sq5JgjkzF9YAUiLX77UPQxWB0c3gufpupiY22UHwCD5CIRgoOFTqgUxmMFvGzAOlypvd1_V1w19xNS8IdCh0JnqeyXcG0Oa6MPir5VOS74b2wr-Z4ELbArFlF85aKHoHU_YJ8yQwoucYn9YzK4lTnVxfN2gwBtZnLt4WcKF5UQ4DDwFFivj9tmfS5nqW7yr86_rv7YTuhN_3JGBqScIo-x_YKsMi0JG07WHPiRLjxlDF6AsXiBBZ1yEc8cMMjz7GuuX1uV0EAgp1Acu98Vugr8C9-BJyaiTGul8qb1d5SyOZcw6nlM-nlguD1TRRO4iQQja8-4-Jr5U4R9THe_1U0JLgep0YvsK6ZUXLl28RM5bXYWoom5t2Kv3ukX49SSWOJqWzqFj8hqMqvjEBCuBri1TnFwTl6yYMmRQa_yQE66WhUMK_VbMBGwH93-OvL1wFzvsXoudQVmuTJhSGINU5G=w2346-h1916"
]

//예시
let fridend6FeedComment: [String?] = [
    "맛있어보이네요",
    "배고파요...",
    "❤️",
    "거기 어디인가요 정보좀요",
    "김밥한줄 놓고갑니다. @))))))",
    "그럼 저는 장미 @-----",
]

let fridend7Feed: Feed = Feed(nickName: "fridend7", profileImage: UIImage(named: "feedProfileImage.png"), location: "Jeju, Korea", feedImage: jeju, likeStatus: false, likedBy: [LikedbyData.likedList[1]], likeCount: 9999, content: "I went to Jeju Island to live for a month.", comment: [])

let jeju: [String?] = [
    "https://lh3.googleusercontent.com/fife/ALs6j_HA6FboXRt-1ZMumoN4WGd2kUy6kZK_U-WrGRxvvYUp63kDWB618Y4HK83acVNPqs4HL4A7J_Po5DDdAktpedyPeuLEF3bwNdyLfyAtX_3hCvhHPcYz28TJdfftWQmNmVYbBYq8jpDERsNFfTysxvhSH5o1GWMytlI4U_HtTD0vkL5e8jzmoRWenxLj2pF6mpREPqcq7kqKPEK1pzSwfwZEphp5llR3ht8ZLlbYG0SJhWZCOgxbtaKiLrG4sMyo61cfx5CVVYOSZoTSLVRvOiG_QskFgVCUnitggODMNWM8llINJoDAclD6QPknLCBNRY0bFZl9bQlxq5yJu5Ew6YtRRbhUJlcB7bAHtpnXGQAdtRKPgy65x147UEs2A6XOrSKTV2lBROa08RO0gfTjeo6GOcjbKdR_AcFAa9Rv52P8YojvJyZ9vC2jIf7x8EdSwoUxAJBGvr0VnizJdKGFNhTXu5Fdr4LFKYFnCRpYzKsVk-4gyxntrwp08vciTgLwFWlHNfyFis6G-znWzEZFffAqpTZ2SAVLQajsiIw31xklSAIfGNF1lKR-SH9R2c-ay7zxsfpUMmHO3crimD9Mb7xbevyl-qpJNCthJGb1xOBYVKxhUhAZlfRqAJw8Pw8MlamfTLBq-sNcGt9Ym4zCCNbSRhhxJVMnZ6Two2XGKks_8OaZfPYw1aB6ji92Pk5QIwC_JTnXwF8-8wlHK6HXzKw6fowSYbZ1onH1ZKZmj-0vd_g36-1V3t6xijyxlONzRglpevZCWMULRFK_tY1jdQKBNzBpZ0bvuT8k3nDjaxYnBSq-wEfKODvKZIKxXLQ8Wzb9p-YoeOmLgribcaro94II6FbNflTTzCko9FSKBxK-CYWw8Bj043nT89xGOzMRLMxb5q140cq4AQDHcsYmzyUrZD95VCtGI_LHyT3MXR3-L8pLB5abw-w0kEfAd-LeNfbhnDqMni85cjkLL_mm4LYjz0soLUuAYXHMK6YPxeN_xNWZljLzoJG3GjLt34ohy15Q8bgdVOfWFeNTy2dO6bb3vepqo8H0BS-2Ba6os66lDgIj1hFBlZuUFyCzjK_di8Mbwr32nAIJK7OSqaPunTC3SFJMVTL0_wkE-mLl2XvL2o6O2mwWi32d4HmIDw8mIIRhnvaPTpMQhd3b2W2teDv4umzyYAzBb-atC2nKksR7zEMPYftRSVoIyDk4NQZeRSpCtwWyteavvBPie5za-JD86kylB_Tx5Mh8aZZGS0cHK-uEn-mQyn61TzyusYmz6bAQWpTXfusaeWA-3SbHKD9LbwIvuRE49DDNnJz5_aqMGJkIqh4pFON2TAR0zyPcbxrsolRbt5Y10F0qS9IgeU06uuZRsAhzu-lsCjXolOMZV_J3MuTFmUJD1lTugsWQBRm_4bV3C3fB5owLBCqjZ_Ydjo1GsDhgnqJDt-n_Xr_RL3oGVXJ_LKFJbOkY3qihQj84wlKFgLA0VJm1NTozOXFFq5Yi-D6KcBsa6d1RNZiD4eYLacDlAsrL_46mgjHz1ILpzPHoB8-YA5fDiwETNiKRXebebCq1szgdohUrmGcGs7h-ahrQK_SOmUClTeqd5ataHsNIXaKRf--wsNm2LukMWHGSTRRRMwfXd_EK6_gaRa_TFLZwIYZWWrS_qsZBbLQT4xj4NyeOCbuqinRT=w2346-h1916",
    "https://lh3.googleusercontent.com/fife/ALs6j_ER_WXVVf608WKFO46G3dYNXl9sIB5EIDGA_-hCCScrtAPg5z0WP7AIJ8ddFPcn818vSp73_UAFUZWkIEXKrzTfAKtghXCAa5_I-8CAM_wYvMp8oiT16VdO36urzub-q9QgXxgGqxrbG7tjTu7PpRG4IJrjUJje1mGe66TBd43SJF9ZrTtaLX8wXboY8cC3VGaiB1-nlvCigSrF6wspQJhxrNeI8wCW_oTG1aA-2AzEaOzirFQVo2FbS5JlDku5iIwwwO2HlpcRJMT3J05p7VFh_jjaePv2RIndH_5lQkDeR6C9YKsKs4URJTjvOJCytswj3CRSJtcwMXvfnWhpPUSXqLj1l4C9PwH3_hWyinA1HFgonGKjuleuYYBeIDnmUO_ACY_UuJ2VJF2mYWdiIHgDVuVXMOjsCD9nzqX8OFtP9brQ69E1KUXTvZZdyQ4REbdGfzVX2zwIMKx6xb-rozcDrkg0peHXpUXyeEPOX5PSR1X1z4bwpT9c7BH8e66rp0UWZQyyGD9NxbGVocMvVWemfEsUkmXDNtGpfkd1FglMf6p8V3Ki735Gb-a_ZpLZ_DK9W1iA4Z7AdQD1IyT0O4vgNCxnwCqqd6HJR_xdA5_QK8qK51XjlWbbOAk4i_hCNkrIxvuJrcNt6I6bWZxXmhm_DwXiP9ThxeXM8TbypPVSmKAKj2iLojiCA3MAHL2djYcxv69_SbQCXiEsDu07PFdQTo6ok0XKwKhH7otXPFkX8_Y-q_PUkUOUGz0CxK3JjpOTpJaIlIlLCW7PPKLrkcEIjjG9fTNldYCpkcdoROH1k0Il3hRVpiz3h1pJhnLplqdxdhpIiCbYbcnN4pgmN6bGI9Yl7Oog43EwCJNSeAQdTrwft2NxbYNAzJp_8UCBLC1ptwkIZNulNBLs2hd0ZiBr7aTN5q0Ju9HhaqjeaS2ewH9NJnpa9LaGXKQv3fW3Wj8zHDtg9B8EKzFE_kybyH6qMoGTjnL8t0XR9gxZG1LwOCNya9viEnZ9Twlp5oVWfWyHbLrML3upUyW4bVQ6RclvHUsc54EAWvL67fGmw3OQovWKarubNuHSjI9q7ubLnVGaGHU9QOMjcP74PR0AwRO22fS1Vorsr4_ksrGCIOOFsZpTr4Pl1tVJ_DoTNPSem0XQWC0zJp5uvNHwTcr_M3YX6ebqfYeM42GCEDmYZy080HhwA14JaARMKkem5sMQNH3zN_UcYneg-tGdqbDxKNNcSmPs-UaOW3Sr606fw1xXpgIF84FBkhTi0J9-lcJeAh03jwnMX6cotZoOZlbU1-R1Acl2jVnYg-sAEyJ318CTxqwSo3wm46qeKN9CrU38s1jq3y5J3YBjo9mLRc2wolr14iQ8U0DB6cztILkHxB7EQOerX1ibPxf37MPfzes8zk5zywkyL6GuhSUYUISgsei9ZWFwpjzygiljHCA27FInEVHdHsOz5bqN7ezZTibJVLWbBqELiRrTHL6xjkmiGXb1U1CLchbfwrYcaILRTL7qot7QtlR7oROQHuY60acm5w11iY8zBNYjdt_DGgJtjzSS9f1QgqWHAiA2S3CIztPGB4uV22Wb1zqmLHjBnsfUb-lLpFHRsXXQdGJrO9-x8qWAV1q2vO8U9mgr9ZzUqhz7fapUdrdyF8GvnIwlFL9Q_aGW-Hk5G_ctapy3Me76ig=w2346-h1916"
]

let fridend8Feed: Feed = Feed(nickName: "fridend8", profileImage: UIImage(named: "feedProfileImage.png"), location: "Merlion Park, Singapore", feedImage: singapore, likeStatus: false, likedBy: [LikedbyData.likedList[2]], likeCount: 999, content: "We went to Singapore for our first overseas trip together. I found out later that it was a national holiday.", comment: [])

let singapore: [String?] = [
    "https://lh3.googleusercontent.com/fife/ALs6j_HjU2dNFZoZJhtAY-3I0Y-VIpLXc1enSwLsY4QXwARO3kXGuHyWWhocBBK1KBabE_szHVPakl7F-HZfONJ75SndeIOaFTHwnuAXHVQ6UZbXsIicd-NqZvZuJIzdqpnOX56Lp60ojjIVAuLi136OxiCEUeWWcIzIVDTFUDElHed8o-AzhnThzr9j5gr2zieRFEHr0-U_S-oNCBvxKeuntO9MaB4BYAX26JGW17K1xl7ssyWc245VW4VG1yuX6po2yjjKi-d_zMthJSRel3W-qhU9_cOaHJ80GGpHa8GfbQ5Fwnd4Uei33D_r720IVNiRn9bQ7_9FWdm7L5liQiF73BxToqMtx7lI1-5Hwlbl4EyadmjxZf1waXSrQWj2onpm7KMWBPiYJqbAG9jXTdgjNPK-_K_u4G5E00C3XGtruFFJzOR4pZ0_XFVBLmMnKcIqSd0OXUvBvo7wHcBrapJZsDhTq8bxYGVDw_zlZhcOnjR8yupBMMzqVOcSwCz7H50zaqmhgEydqohkjrUhMHFjXuqbPRyh9SEnfy1yF6dmlXDYzC2jdPSW-QtzT0aRxsJIAwinkp8QkCzywY25gPeerzJ5SjVMM0ozJqHDH3hRIJ28hHO2KRLX8CW_CmRIGk8XninAODGxWBf0jZIpIBjT9FW3MQNveFDtFP2stHV4BmuoFdJQdHIy-Sdjctkgg5u_t9L5v_wtTU5q7mVgUToPkupeccL4C02__vpFFJQgCP7otao9DRSUssMCYpqEMq3_JP7OAXfuvFojKlGraL63x1vytTzJIdzftQ0gaemZxze1DzYr2kTiKi3p03Vg8pOhHl78e27DwWMF1vIol-IhZedEcSaPi991zo0X639-Tm5GI63wkiJSXeMeqaws_pSbO6cxleDuQgy70UZyL686jS6-XEShx6QyXMI9T8IqRFWZGk3kU5fbKOzRp5vCQ11eNXvnoH8efvqWJ_0usIyXJ9CSokNddMFUaJ49i8l1c6sG9Nz97j7jtJDWmR04hUMOUIdRoiPwY965F3BuOshfE1XV10nzs8E-6_nXEegWFb1o27rRYCDHGLKh4x_xxZLwS2UZGkC9f21ri68HRwoPfCi2s8KSZcfBkuiqeoc0KMQZ_aKVSOS5-q3C4IDpy4WtRoUtQ8d-zhbH0cBjmE8-XbmveYqqB0a2s_UbW5zG0DOewjTP1ZEWKmseqRev-zbvK0PHh4ID8AiAax3O0PZvO0F4zrhh59gNy4ooHJLCmUeG8WTfyUyvBY6tizA7TuUpEvCkzMYUgLkf80SkfGl7T1pne0GOlk6cIfZeDLmW9G3J80Q5bNIBToMkNz7RFIj5n3D-zvZrzKs1jDjv0T-H48mNd5y3JOY-bLjsN_JvDSQ7EviqXgaIxmUtjyClHIoN0yrJ1A2A-QSxo2uMV3oChFXKk36VHY1NFps7JF3ivvvlJLH0-7vJxUPBwq7cZxZ4mDx3v-obh_NXFb8tFlWJWW2ZEcm-hEKAfPHHL4tB8pIGiISvz2G-OGN-Gs8hJ0SLdhTwZWszdyKejEvpccULhzePetiy8jgweCW92DgRO4YI0rDluBuZ3P0vMW48-5d9DWxyF42wao1x5MzkbSDA3JLhAwDIupfnhLOIMnoD7P6q5rzxLNAXLsNYAgBz8QbZnaNAnMTYy9-UtL74dxgfdQ=w2346-h1916",
    "https://lh3.googleusercontent.com/fife/ALs6j_G-DYJ3TZP-uTNazthpJexp3SnYnYfjXCGaUo9tvCJrhkjqsvBzKzF7Skr4bTIJmt6yglIbyDGOSS59dwyORe6V6DY385_neXwHNK9OvIU94Pk7c5AKY4wkAbT66oUx-mdklB7GPqV5c0IT0tqNuYmhD29EXUnMScGU_YDum165lCOdBL3QDYMPCzcaJzTLzSVVhckCdu8ab5cJO8Rxr8U_bToheU7ZcGNI_sZ_ZRjj4Ns-C1sb9nDnNDs8ktloaDZAatelS6F6JtSkMgmPalHP3IV9Ohc-bLU7oh4zJmkcS6sQmRUgpnbkXZciVqLkh-L_JnNvfOlWZZDuwHbANGU9GUcB_9A1LbIt7DHB5nLQPsrP4vrd1vVSALc0BLO5Cj8ba4FfQZl77yGOvhGX8UQKQyHs0XipeTNjHL8mNot-es3FmS-8RnsW_5HxIRp9tw5URlTUzpc4aHBIQ70xBlZYJE4QmMUKXbxeYdsRu7kC2N3iInbE3-y6OCrufytaJXrOBuFqk455w6Y6yPUNJmSR_jOSG2vWZYZyG2fRfSjYCUz4xYwxumHmRh3Ztn54PCwMTX6h4xDB8ejh3xI69yMqdq7B3QYkkeyxh1FnKVLKsB26zZxj2paxQ14EGmMl_pCABQDPA4Sv5fZ5FbF9YctPrhW5mw9LQ1CtB3MJi_J_jH2ANmiiYasEAxtR28MDTS7rYPjjUghzdA7NUNj0bz9bbWpx1MpsEnQFO55gJH8mK1sIl7weTGwEcUCtTg-Bk495xbDn1pBTCZ6PXLongns93b52Uqc32tIMO4fAVgHMcCraRrL8iDfExdwu-EjqQti-5uhzu1YR7SCqhTYDi4H9m-Dp4BORgQpga-gVokN6dvADFiG3Poib_Fd6U4JY7A92o3L4sS61hRFFtXbQ_gxgvOzKD8LNg5m3oq7BdnZP_C5-VQV0gsdPgXSnHGiK7wLz6wJZ550kGQb1zwwViZIHPuP54i0gefm4xf6Mh6uaBVD8TVzwsGFLvX_IRGuIVBAwVoISQ1TIxH7Kt53bwyb0jdxxL_EP4cyU0zF5YfCUJqpEPWr77Tzyp6CdIRL2289mH16F4pQDxe1PsaEwEwkWBWXDOd1ep8ubGCyY-NqlqSEhVpyztg-o9QiVWF0xCcRZ47bL7NaqyL0CGEU9dgptIY4r_gfRMK9h9RTEWJyFI8M6WURd8LGrbbA3D0UkrPkTTBQkm1dd9py50FpJiZr30ryxMWMQUOvNCauRcwUBtyHyXrlrAhWCFxOqkYG7VdYEXsM0FAOV_gBO8sNInEtcafLG4PIiVtomueIj8xNxk9B6aKEv6RDKSPHJhCDIAV_FFtAFQrcY_oZMLOOmwHSRnGAWEB1_-TWSDjnlKqMDzelzMpPkduULnCHxT-Y7LF5rxU0h5Aa3mczKTnsrfzw-wlErv7-hs3dlCsfXTkma9EhJoo5dlATpdBHOeMPvR-cUPDyUJmIkeCG1NJBpJuMScXxDi1ZKdN33EN7c2LDIkSzVmKpC2mPLRINAEbK9pv631BBxagDaKrmNLwif2bxTwD3EGMozWUwTkE0mEUKqmWm3QICbS5YYqMKGktGe0OhvnFnDNdajFR1BkpVdCdRf9w6FappmTf57RLzezEZLuODU9I1O3mNFP1hubbNtNHPyMDAt0MAl8CM_eCLl=w2346-h1916"
]

let fridend9Feed: Feed = Feed(nickName: "fridend9", profileImage: UIImage(named: "feedProfileImage.png"), location: "Beverly Hills, Los Angeles", feedImage: la, likeStatus: false, likedBy: [LikedbyData.likedList[3]], likeCount: 999999, content: "I bought my first luxury item in a wealthy neighborhood in LA where I went on my honeymoon.", comment: [])

let la: [String?] = [
    "https://lh3.googleusercontent.com/fife/ALs6j_GcK7-s4syGlqRu3lfRB-jReYAQYb9Z07Eyhzs_Uj31XdB3xgc7ahPt1mx8w7tNWNODi5d8BG5q3Oig_ww4L2Z4j2u0qEXgZrWgZUeeYE4CMelXTDhsEKlQ-kZH9sf_t8PVK3gwtjdx40OBB_zYjfQn_EJIGVutGvZeurMwrERDDXH_Oj2DKa8NTfwSV4WAFeayxbD9bRf7DOfZE7gbDJatBZ0HSub5trgaIrZAb88EzpC2oFeurA1e4ZT1El72-tC-EvVq5EGDylN8KPhu7pCYdIYWHjGLT-vFDe-Z5T8JV0tX-dEIAGtMScPvl-lqJXcGihXfMFyRpgjFWE5BAbgC6DqU-1ahag2s3oOzZbDmpvt-gp6GsbY5e1RKYpzafTsLsq1BzNvFPuoFaKzYqjqPa2K8PdRP7yE6D8ZoW604RQ4A3dyPQPUPyR0lMFu97qxuWaVrha7ht5zgW9WVgX7rNdYD8PrJq2vd1cjg6CSMSx-V_IsWjIbt_afxnqwEMUM1Urg19G2tC18Cu2eInlFb-e9S0pPRCoHiyMpObK5pH_9aaK6xZ6cO0EeLX34SAbf6G3R08mROY_1k6ajm3hmx_28-GKSSZvvNGRyTQ-uFpG_MfKBhpE2qEM3oNymIM-azwfzSi-MfzrRafjhz_aP8sCGGoxeg0R45jh8lH23E9Pa5HVOlgmDYO16WNjVMJRtq9sWTjOleF-7JiEjMf9MtZCiHMPetN18FWbtnAmClax99NcZ6nE_ct0mV_XCMMiNo3eFmijEsqwtK5x-8LW9cxOd-9YbRtEiatLYpEIrAcX1PqBALeKV8lrTzF0ITN_HMWOGZL0aGE6pEHXlSZO5eQgAbL7WvgR4TsQrht5QsWWC34k4abMTbVjM_nWLbT6qm5pkngJ8Z5ui0xCXaEPk41N7M_8qFHwJM7PRS6cwEgYqf1xOgjCFgx7hf4brmqKAFTVJHR5qq5SFnsDi7JjFPmPYr5_Ztgg1LaUaEuA0yYykwUydZHab9da_CBbhtOC6wCpGVYS529ukW42FlcvjLwehAnArjY_1xyLufy3SZryIVoO4NHEzh2lIL3TZ0a8jXYkZ-ueNgm2vqvRoG51Kp5dJBKQbSlC5gp6YPc_vY3WZ1IxlI_ocbcjnnDX6f2s6kq2kuvg274Vug7HNzOytIgpircMA6hWqevSMywgha0KSF76DBFf7UwTaGmBDxk9_PNAJ_06EXpDWDy0y2kNeRwkQ6B6F7Wf53_-eGDYfNZg6EX_SwgeQ86M9atQCiXB1l3rx2Od-RR4aQQ_Pf4LIRK1krpR0zUFVS3FpanlUb0dwMJKjx11DnJAV262jPHqvbsxbwGByGGDM6ZnGUU8Flh9B7jE3jcv1sA4bUqmZqZPbmdv5gbcOxM8D9yWe-p2fGvvetDkvmAesVu_PYbjka2y8uVUzc2DZrrm9lKzQe5NbY1q3JSv9w8MwfFipeFWlYGfF-6rz21TTMgvM2ZchSTOD5dSJP5lFHDeVsVQ29DsrMvrXMja2bafP9aiwwLv8GHHqUsdtYZsMmr9a76-ij_nJnJk6S-jpKMYGKcrTHaaXwGEWSmHqgWArwSjXxU9cK7ARpqAEk-dZSOOD_WjDVAwZcfcewelmPNOI-B830zjxLubg4HTcKAsxP0-AyPr69AJpXGYLGGAES4jAriA=w2346-h1916",
    "https://lh3.googleusercontent.com/fife/ALs6j_G1hydBbK83a0XDvyHh27Xy8V1dD4lyZMWsa-79UfZHD_MKJZRreXQdA1DQhMSM1_0E2URp4-3Pflgj57sX9sM9toRbZZURP-KImKpKwdDtOa_ZGwgg2YsAiozyEEP_foBXgSsuu17THMCPTlE0hyvczreFq_C7H9ZKd-yK76J28wnMlzPMW5lgUkYr_N3T7m18ot1b80NfqNQbNSZXPmAZktDziJFSQAvq3aMu89aF_fu5V5ugTJB1AS85YMEESdEGXKZYiKh3LGw_XfiJ1a2w5oUwtzVVBXy1Ny8Aun3LaWhIQklHFA_kTH5JUwJnqtD5UFSzew7yGrG6pcaNFQj4RxOJVQu_JxGtoD3ysEBm_rjXqab9VbyxpeA9oypeVOfm75q9j3dz6bU1e-4UyU9dojYwnOtoTUhx0-uwV99Wcni31_Q68AdzVXFTiCOdWsVKCLtZ4gatmIT34Rs4K8JdRMNCudIN-GbVcvTsJjQW4QmilgT5wcNugZ-PhlvysSPjU8dvk_xERgYtqmOlcxvxCGlm69NkGStO5LV1Hlkdt8Z7X1vK5odkq8UTLiqh2zx66sGkhrti1vdkDO96QpiK98J9WBNN3XmEyVNOabR29FLeyXRYEmURI6otW2uKswRh8EeQ5HYqy1bn9i-5x0KPkTJWeww463Fhz66YTA-H5NyK7q-EcQ9JK5QnybfzHbcHUbLNQtSvrEh9jz6llUg85tIIJM9vPZ55XsML8LhIUxlhsHootzS_jYU6r_HAjJN_cnS1dwua123pzczF8PveN_Of44GIeKhCbxy54CVnbrCYL66Dcwg0Ts4GGCOQtosZUSjrT5mUdsDXcSczDjK62cp-XPJXySCOtms6MzPw1fHGENagYze7d9Ff_x9lF1rvxEuNJdxOU4XuTwL-JVhxIqVWt7d5RsbaoXl0xkJD4WTe896Z26dkvyMWkDyIkNPm3adwf2IhRxWojOWTTjgWOqgfDlS2JmcAnFzlVY0uHD3mhMYfz2pK4Yw7G1y5_OExe9G4pdQOMJPfhRZBg99wTRRYsT_ApAzabgclQAMUQyt9QnH0-pxxHOs-ioEN57dlJpjXKDI3zBDGi2Jz9udqAEGJELljzIrsBmA6uH3uE8Nwgsf9NVZk7GIUQD1LlQKrGQ4XNp6_n8XiGX1nobrpzlPIeEdyvHNNpp2kRk3igPvgwDglAYHxQJdJVN3XI4U2i4NYUBBtsbCdd5lcPjkZQxWUQFkFrMSZGG5qIF66Zz5zKqSbE2AW1WASvhp2IOeQCY8eV1GyRt82349Qslkp2Jf2B7nBmd2o2qq1uVvExqwlHBM6vVNAs-w878VT1I8G103DF1YM83ZquBaOJ00vW5Q-WIGhqIcnTiR_y-uuaQjd-ZqoNnrI4EwoH26sHwk2rF5fQHa1S9gtgWkzW4pWwnsJoiESPAKJCieuH2oAbetOVNLia2xo7eeTIioJnclfXmlZRzsqjHYb97QG0fvRFVBmaNcseQzg91lIW4ERDX_NKUMWm6amI3GjKLsHXphRzZq3yDbUYBo-olgJtzmDy5iIZxdaQ5Jl98UegUBvCn1Wap-rVtfIN2pIgxZ0PuH-M7BxENrOAASYl_DPkLV_hVlrRRVvPvh7s9sm_kS9u3MYL5Ph6djWNAtLL7_QI4cWZHCX49yCjet4r407Sw=w2346-h1916",
    "https://lh3.googleusercontent.com/fife/ALs6j_FfEBB9kLfWwb_xQSY55VJki9EJMr2A0CXkP1L0OWrXVK1Xo_Y7t8Am_yDJD1MrssOi3mhQXy378YOMW1pI3syPAjbXJIy26krFF3Ug11UAEy-0fD1UbBxzC6zdDOZL2h4C4cjIxy8gNV5Yj6nYWySMd_Wj6TMqnUPCkRz4Zm4jYkoBO3OylGMRfYzqMiqIFyFq-E7UWcQkG_gyiKx2-bbCBFuGWbUppkjDz563BDMXEoARtgVaFHir-BqduRZEkfjWSfsvN8CiMJSuXf4HQIJdMVmE5Mi0W7KbfDPuu1MnichJZ2XKrh8CBSAcph5nQfIyjJDFNHV32DOOPmqB_prZZ_gI40aJAgylEQpDiiJ3IwWIN5uAPXilUKx53qh7VPe8d5MsaJeSo52GshrBvH9z_BcwXjl8M0DKbvu9Cxf2UzhZyhUraQqVktE-STBdBWgOnus7-SWJKrYKNltxQzeWHksu1w6hIPNLrvtmOtTbW6LxaK5rcbjZLf1YV02nygJVN2wlvJzmBZE6VAo66aoZpgtsF9txKqci3u0lyHS6q0rA0Z9Q1IrMLi03SFyz-6PLGiMtR0sJGeOFuWfnT9B2y76Quik-NOT3wpO1uUbASoaI4RGfCMsi4e4uEhUIWR9xogBjTcFiZ3vD9DtGQfl-ZZ87o8Sp6AoiPg3qYC9d86lnjPwI1Q0Q3DkyuX2E1v01i3Cg_hcnOd2pZ6F8XKyhHZkdV06-k__-MbaPcSVai67YQFoyJmyOozOAUTy3xTKu00N-nTvHd4kMWTO-xnKznyvFy6N84dkD6qcrJqt_KVUcssUpM2U1patbX9PD00UO72wm3Tydt7DsVxLoJc30gBM--p3GpI18PYXvknZFrxhtOtzZ374FFoqE3khfsxkRWHZcLRPcc0piymdXyAUDzpSYjYDoB6mJGw7Kq9pBJt3kzSGEqOm2ffqA32xHjsUYUwhF26tkR0RX9wJjPMx9JUn4UFs2zQ8CZDvd1tsC4EhbbGV9aosC-62d3lw4QV5Mq15yzgcYC-uvmBjswc0WIlQAwYJoHqM-UAqRWNCdOnX58hROcUBi2M2ujmTjdI-l5Ja1XwBFSU27rSE0BdVTVsyt6L6-0vtxWKX_r5aZjyw1-5hGKcUkfok_0ZQXFcWfFMnmIumn7IZY3dwFKZQeb18EitotFsqTx4lW__EsJS6rF7xDvLP6XIFYScyZjpwzGvBT3p7rGCVqreUg2GNllsmvB0NH94PkULA_adDyKmSnDKUfMGLHvMlwhZ4GAQfenEbLgd6J7TSvYczb57glH8hoLN8Yb1yHWgoZYbOlc58oz3WtE8L7ut9Voma4Up1r4ITJWJDqCxPvrKgqtfvwIy-sxCRPd4miEawNxIe-xFa1Vs60Scfz16INGhJ3cnKYhV6QanlUQb9SDoxtY12IUQXU0DIEqZVTEvm6bDf9cDHxnfTr4AWP-tU7XA0b9EGRq9qgveHY9axSe_J4_mcgmkjhaolpNwLIPg0mnPt3tAZJDNL9-nuq_aVSzyloc3DB4d8vE0ekZ82zL1PoESy6kpr_19pePIqckmOLqZSaYCpP_cdj6-ZAmpi9U6k3_XnAPvexhmwp2kWHKB3XIduF8AHCXNhk6hCWhMXWvy9AKRnydFhRjj9t6xjesi5uJux9YTdB96KDtabTgNRaEA=w2346-h1916",
    "https://lh3.googleusercontent.com/fife/ALs6j_H-vnRM_1itDer29152y8nEssamvlK5JZpuJCCbkm4LgXensTmhgjMAvSu940bYZfgD-pWOn_fpAQT8lAjM1qdKdZzaxeTe9riigVUNeZb991DnGmAf_POy2e87iqDDv3KXKjwiPobwE0cWwR43jdXyBqyRql0E8sR3yp6caDrSoYwDxI7hojoGIOA3mohjMf8CZV9-QQ_MzgvpIB6DD64yvvAnat42ldcVb4CyODNXUUttwL-ppYOEc9QpJC54rRPioOmefDuvTRLLR6PtTMqslGn21jtblE5BTyivA6CoFhSCw-W_5JLxZoNkRzOxf9xt8X8attpnFTrQvkXHEKDGuCFZ9HGfN8wq0r_KkWlOSl2jjDNOjWuscra5SMmHOsXQFNJhC6Cg-I0Zf4quDyGyLvJ5oWTqoiQwyQAth-0o33vDWyYyi8N-ajsWRWNOxJXKH3r_rsKfsBv7_NiLd8ufwGewYXaPNAWKR3pT_WNrWjlIvopQnL3Z8xsuPMzm6UZUeY-RNGDIOA7Vl9PkqVxVSJEhSGvrPrbITU9ssL0In9GUxk7XzxVH_GLVporkn8nwivkD9-rSUby1IcJJ0MWnHcU5kfxk-iq2zwPASARkA99WRDCBL0cc8TCGpsPpMaSaIbwYyVm8cqOpBm6QWE0ab5pYEIMXDdTU3Ugro36YkY0SdYJB6cCrwoaikf1sZBF0Ov8P3PLTC-95414lyiWPymZwn7a37jNayRtSKexT7M-lN31P92LJvMv9_dyaojDJFV4h4fRzGUgUSL026oxG3Wwb584kddIIIjQ2pHFL_zuHqxbxjyTP8jNJr9v0-sgFvEAVH3w7KuLzdXoVB4dN2rBudCb4zBt9Z5punLEYxboYWkDKMtvsPNpMlpwpNaFQgXIAfD-Ml30lrptMdc40jDGP_QT16MILo_U9I0X1XQ3E4vYBKBfgDrA-eDy-B9OIBSq2xjz4qFC2jK4h1AsaJur0vFSHU6MUJLKqcGavTKe_0R6IKWL-pBkWKV2cnB09xDEWJZjLwXzcVuojCUKFfEGIE8P4-MTOaJ5OA_EbXxPqg8p0R3NXdX6gpggru8Qo1WDSmeb9LzLhXNvNqt_H5CHkOnYUvwQF5MgSY6bwZ6M_E-5vp7vwnT-ktwTSGBujoM2hHAC3cYS0BBwXXL1mUgSKe-d2zU5gejS0sTEwsI25xQneBqv1dcA6ul3Oe0v3fKVPLz0J7shdsRq7LR6_xWkcTlha9fVBE35WWt4W3vO_cXunNkbikLdYPKV4V0m7jI5P1qYD7vLwDOMw7_pRYR-uSufFNhitNryQ661HrIHG4Af2Ig2Lm2ac8NB9gLZKipRbaFhPd9TDmZyrvPXzXf0yNIANnN4NPMm49UaWIcl_BnaA917nLipKX8mrTsVa8D1lpsBmXAxi-MCaKiif4kMdLWfFLwVT4L9uNh0sd19JhJTl5SS0t9Rk-G1ICzfME_bKtt5J9-zTFCq1D-lZLY5sQoDb_5uAfdt7nSjfxj6QcAOthrwcxJQCsboQtGH8tCcSiNHBvSzrDvNJWBSpzFGLglzexe_Whgo7nP5ZErrAMYEElybZkzADZ2UYRK122rqVlxe1vx0PAzproza3coRqH8lbWEGnSz8x0ROE129m4aEyC4nei5odbNalZGCiw2_QnEtng9menfAzPQ=w2346-h1916"
]

let fridend10Feed: Feed = Feed(nickName: "fridend10", profileImage: UIImage(named: "feedProfileImage.png"), location: "Cancun, Mexico", feedImage: cancun, likeStatus: false, likedBy: [LikedbyData.likedList[4]], likeCount: 9999999, content: "All-inclusive stay in Cancun is unforgettable. I want to eat non-alcoholic fida cola again.", comment: [])

let cancun: [String?] = [
    "https://lh3.googleusercontent.com/fife/ALs6j_GTOWUZBX1E-WaJUwwsv7ZOxb4NVPhJZxouvOVzhkoeNzgsNU_ejZsjiJUOY_Xogi74ZuGUafQYDrwAwbLm-AM69f0nSNKdLpH9WuCrxWZdZMLZ9n9fszW3cWPBYqUYldMO6Ct2AXkX4grusM_sLqc_V9ZQgHNWVr1jKl6swuTjcpvSxb2QZK2J0xdLMMDWYABX0clMeQ5njHJMyZ8tdWW3E8erAoUHhPZ72rPjY8s6B-YV24l8eTD_ItEnF7WOAkH2KhG3G2hALSQQwF0OmtITES8zyOSILDFIXOwuivcfPz6jbXrZsZomyABdGeEePMmSJqgwDU-3GHzkRsRMotROFqjYd_E-Xr6GVrIOK1mJrzJ67rP8sjJVSOSPLaBEqlJ3s9F26hViPvirjTUqKu8DmJVxTJexlXp8Fq7Qp-mlaVl9yfSGHUxF6rCFNfJOsjNzHmN8n11z0y2qmhhFpLZmvcZnaj87kVIpOY-u0Ozcrudvyjp9AGFTxGqNLTdAd3UgszKmX0pAC0AnimFXnaH4GtexJZgmRj9VD36FrUg9UYzvfHcrlR4mfbVFnrZyrhp50F5Jn8sk_MAg2Oo4bZQ2u0zixJF_WUcWU5VA9wtwDa9vqLoAAVme_F8RGNqWtGrhmRGN2SZfWJE2mp6zNH1X7UFCdcXp9g8qaQMGPzdw1kec8bYVdCtwtF5YIV3PIqaaxNFf2bBpBOkGiAMewMTc90ZqVpUSsx9HuMgmeOMgX0yl9Q4xKmgSHLIuPGIQmeO3hqz8REHme7bWa6VQWOBESkUI8DdgSF7Q6tTWRehgvMzekJIWsLRvSCBeAHLgOrMV3WpUR0lzWAPraO9i0wzsmDXkgnnRLOoew8ge42YiCbUCXLBe5pFEyBW57UtSdtiew3ljxvlv7Ikbs2XQmNktH_XDqqgyyxbdzP4oCtCAbCC0JKNGP5TvZLSJVtHcBBi23MTFniO8ttk0mwSU9HkU19odiobyAuRuSJNPNMrqIUQU_zmdCB4BMkSCa4evsygQJA0k17LdFnHaCbX6EDtwTuSp3v8B1MFvqSieizud9tWNLGKSwNEjA1r8U3XLYRvx_LKgd5AM44KPfbYmdH6r9f5HBnKc-Fe_URNgsGOD6o2wGH_uX16X9qF_n4tpRogCrnI7AOMnPT3hPVhylNVq8kfmyaNNZuWmXFDtS76e_kazSu3FWIHIze0kHACGImv7N8UCD9S1r5BhDS5O10mHskK7tNkkxZf5Oyql-GjgCYzCwoEcMyXrLPbjRxwUHmmeD30P-xMNcl0VehwHkEUugKGjtMWDFg86mzkiUUaEJj-r0r1lAFb4T36aLyRTzg14uqakPhISn6V_9GKwPBosCR-6mDE7dCMWvdWsbAv8wOA7BgDUn6ICgiUlWNPfDeb62oaHVSTwRm8rS3IQeDfElXJy_zJ1vLgaszHmq1cQqzrxpFwT5sesOdbgdi4DgThUNZfhUs3OTxYxC3hppXtZR3ct9-yR3k_wCiiXaCDVDt4klMvLsn_MaGjPnBLNdzs1AaBGeobfRERldSQjZ6Nskou3MT2XkBmjMehaweYtIN__uN2vs07R08Moa2qFEzw5cC-zFz_eQQv-LNNwtROIHufoZL8ZKur-Km6Aq3mRyCGMDy7WjLaQit9afuSZm1-O1Whyz-ui03ENWzkJ2w=w2346-h1916",
    "https://lh3.googleusercontent.com/fife/ALs6j_G7S6CnfhtFhrEz-KBGl75OGdVjorhCR9iAFFltixJWn7jxws03Pwa7J6eqtHjmB_VzSI1HaGr_crdbkFySJHOjvcwnE3WSNuTBauLQK2alNSq3i-urqg--Z0N0lyQhd3gfgCOxX7cFSKJGnLJP4b0an1UvBX-7hDit3uWfM9hlp4iTIaBDMdHlogvICmRa_dB7uhDM_WwS1zk0Lxq7vGs1sNT2CN0KzX25656tVEuBn0dmNBkoLJsLoiS2MkUIsVXijs4HR-gnHOrNaUNsXpiekI_lKPXLT7XPpxqJZ5Av0jk7VU730Gmlnga2RriIjjWJwe0idH-_g_32MlELTKDwTyO6IjqjaaruMaFygvmAPg2UV62GKugOEmKsLxaO5nMwIh1TPlgiI-L0ufUmZvUP6H8WdnXdTSfxP3s7pzpqiFwsMT8iTycMC1uayDzCXrSQiDKXg97zrPW1NauegIokibw0UGtuE4-H1WRMMD-a_dQALYTZ-k4VPbGd99cL9uonO3ag20xBMv9HpmA5-QMu4-WFPXz9tiLoaFnkL5NSo5rCe1Z5gUcrFefD1EspjLUGUbvAzeQeF1KnlIGc23PONMNyj9_FS2HGZzVXee8Bs4hdP8n87_XTzVHG11G27wQX5I3m8z0TxvnFaDs04RU5RWUUOJxPHZ0M2qCGw_-5lnacQ0VZR1pmXFEV7XE62NuS6tJ6Tc6hvrJKgwHjdVqBM_WhEstTKXSXk6yhUW9wLdD12ZL34vLjsjfPGUsqqm1kEsIK-McRGiQToJg8L6CZJvlKVBcbvgqf5lC7Lc50bQ28CktY5I5F8mv0p10U2DhsUqVjC1a3L-hPmI8fLx9m7wgAuMIgxD1nF5UMCA_o92XNlFhzDt40oIs1RDAn_Q0DoUG5cuzuBZlcsorSmSGgIhohzoJiNyuQROZXkkrKR2IbapSBcVMTVy0Kva38pxoeadqZ0ZbvD-JX-ckOOildQoJaOYcq5c6KR1ZSwViccdI9TqUc2C2efr_L3Qm8CoNjXZeriHpYaDMv7ufFvJvQUP6of3MIncMln2wTPCQBrYlrcgt7EduAMO_Ni6eKhu5azulYK3d4YG_8IrPpONYsDrjU-W1pQHt8O4FB2SNQQbbIrcjohP1T9NrnDW5AesUjTcVfAFAo_XZXNjSovkSoXYNCzGTE00z_oqJxrjF1YfV1z9M78pDGAySfxmFxC_rk8QyJj8LUAVNNj8i9gF8LLxV2_U3tSi2_ZQAR45e1qxyt2sS04__rN1aEDHm58sLw7e2TaSlAkVK-o4lFhbEVyR-2t-4BXIkjg4FXcN2OteCQ1bUy9wu1BPOyKs2W3h6TX364XBFzPIylNPhkL4kjUmI6XUm38lfvbxFH38XYolCU3HMwTXomca_yYiEfL3kYd80UxhmyQTidSKIzqHFdmMntxItxDSw0u2ryC6WPf7eK4QgrwXKCTXPPA9GzbkEk3eBQ06dDRDlz4NLuogfL4PK0JaMOyq6QGkZRnuLed60dzafWDC73w4ZI0B2ilRpLj5_N_dK9evnW1ItzS97KyhB9y4A7mMvA3iLlmErKZnn_SUbRR6GotWvqIBjY5WU0lf1EmPqbTi8cjjOZpVzQBZhC6ItAQU1p71RSpkeUtWOBuDf8pAp_fiI32WyCZszLxsneKgg97g0-CWsVgQ=w2346-h1916",
    "https://lh3.googleusercontent.com/fife/ALs6j_F9DUBgeUYkqZpgu_ljFDujd84TUiNjfVbXk1REQbY53OH04lCUnM3yFPRVcp2XVqzK4xizvIyOCJIxR3b4foDOhlxpP2PcEwOT7ejtBc-oNuJAnsvKwKDI4oaEdeFdZsVE_MXM5oGeRAO8tnQM2VoMu5jb9uMzsNPtqdMjmMtuFmgfkvAfYcQQya65KCaqEzna9r3HzNfmqJf3KqckodxKYm3OdrOrV0h8YcS746H0_jwlWFb-Mg1uhyQwftblCoxXVJ9Jh6bghPY9jKsgDPetXCaFvZh3kn0AjdNwMY3ToO5IHaYGD8ZeJF3t0gMkK2ZiK9-F4EuW8GVV1j1UJMWRC-WO2ZEtBIQOvKLnJCBNuYXlmNdfztPwjw9ROKU7CK5k55C5w5oFxEBJxU9Mk8nwWz2E2egTOmroP4IN39cw5374AA3Xhb1fvqOc-kCo3Fc56Lii9yG4MvAhuAOmIkukIyafuoWs8ZyYrfGByVIdrgsCk5KEpLO0AcLofWLtDOWuLIXWZy5GmobcLQ2rtW93xRhXo6OLuHtDxyEUAztfponp_JGXLWVnPSRAfskIlPv2ZjWhYkxMduzVnTJM5Yw0Ml6HATDvvUju6u8agZbU3FwZrdl9h009bsiPQyrKU-CwPSFDk1SEjX-SJGyP6ZAJO4oYbgEyE1-0pgShsiCYDI__yWNDfoKx-YmYqBZXR6tBFFpj1CYbTA1TkP_FxgvU3ET7QmVML2wsLuRTBIOmyUXufvPnchw4_30x1skOa8uhRpfr6bjc66Ms7FxBQEMv2qj9eNQCl7YAbweXaJgVqN1h9bjBZuSIDu7oxq6cYf6cZQmgtCMUDg--uLm9Eb-2ZZP_e26cvlgB6tjralsgNwKQfBtVqvnBMxvAGHn15Co121nQMNRSR1D__mQ0KBKyaptGWejoVvxcKJDCx1xSwwsIdl0e0GghLpAjHsslR0KOKuEWrt0THyq8mq_l-qonkSlDkrjcSum21iYXIqGzMkmRWQVH8pC5VsxjK4TQTuOqEYpes-sRXYLyPYntCi7iecmF7GN5caajP1kVZbGTrjRcDV4aTcuRsKsrTL_sRYVlOIhBZDt8zk0ttuqFqjXLig2VcOYMS-WYkF9j-G48cWYZLqQ63JwTJ4F5FLd0fKOFjuz2lmfbM08jthUuHNnWI60POIOXvbs5uyKym4NOZQ4d8cpPgib7-ER09oeEGiZf0ezr4jsFEGsJhtmiYJ6gIj6as0Y2hMiCMO-tcAbVbMcB9T8WbrnKmgugdwgMC7BCyzegfeC_GMMJNukc1px7nkbHhyyczshDb6lgXrDVd0-Elgb-VLS6kZT38ztko2q2jas_YT3Jpic8pOgphietgiaRslEt0DivkA7Vzd058NYw8f4syTDBRBisuZDdyE3nqZD2lGfztcc_bJWoYBGwocwFQAs9rEaUlZV2HXgI_6u0l4ly4S9HMPJtaMxZWV7pGGimKNbK2vgZv5sqFYXSbZ8x5mu1iJsXJ9NmE75fL3q9JZaxEAxjrqlgRXA4BkfhQ86fvPRJAOQxyd0cnizG_ZBHcBQjKhBEIoikGj4cI7PfLFXjCmjdPzsHsSpmYssFyqytBg8DImMDrSVSgwJf2jDBiO5MoOAWBcwOfWyrp5h_RpgViNenkJSY5rSzptyCLeTawJpe7OI7ozn1yQ=w2346-h1916",
    "https://lh3.googleusercontent.com/fife/ALs6j_Hu77ZnaANK9UWKss87D-ZDePnYcLMcOUL3TAr65dr3Ft17pcHHWwduJicDOPtUry0X18pDJvNc-jwOXyFeZvIZX2U1UuJpSQ1ZrV5lOTyzNe4uH_uV1RwG6FBUaP0tAqmZn__v7POuEJTThaUwkOlbVP8ugCzREQZtBWsYQocXZlW9gnPw_uM4rzdnB2MR0E9Or5PvsIPgNi7UI5jt1PDBRSM92dW6YTPLwVeNJLqBB5VWuinr4MMUlN4zMw5nxVkm1I5XMSwuBfYvl93ozz3HlhNu8SJ2KO7Na78fmuzBHpmDYZJREjmocToHbYXmlWLguyzp2_RK6473zEAFafiJMwYSjZy4t08j4sBoW28OuCJIdDVsfVL8NOEJG-JrrXDJlxsfE8xfBiepGpXi3YUT5ur7YJdJ7oVjxHUkMdXorPAsv0Lkd3KcRR6oHHc9J4upjG-Pl6S2EssAp6YHcccDhPcamltbNG0yP38ty4aZ13d7gTHzTIWRo6psFmpxqtDWjXz9u_h7HkyMcsTcp3Odib-1_2PQXSKsv5dr07p5Z99kyXfaJovDqUM2EglzuqXL3YPV3I8T-VN4yrXTR8yDMUZHd44mri5_5R7m8NPVlMJUAxCD0dGXn2OaLVKxgsut3RAGZUpIh9PZB-83MUa0E6dwZOectC0Ic7LZ-K3uUaaC6u4-NR3K0SO_kFmyYxzMT13WAI-TwkzvXTxUleQQqlfsWK2FMKyOm8NIs5Dd1o2xYINicPsGAf6NJCkn9XhFjhkpxdl63EDj8ut-32VD25-PiVxiwMPato2GimjNVCq4eusdnfMir6lchCI2bviQTVt0WbQ1PojPFWutOV38eFc3Yc6pqZW8UTSwhJ52NU3ZS9Q6kvPo6vfJXBvAirrnvweyGU6orgbzenWHVbdlBLyJUCV9DfDvJJznueMBGOF2DBuR0XyS2qyY5LlS1Em-miFpOuBPqyMxz9lf2eqgRlAZixI0q3jbPLBJxnDgBeDfWCjtjeLH75JhhEKY3fkpHdtPrN6azJrLkFmzNS9BzC8T6zY_8zIoTvo_ZXeet4GA7hQ-liAdwk0WCWnZJwad__Fhry5Jy6PZCbUOpzF3Dv5EzrgIvpnyETnr8C5KLNEwf7L1AZ6ffmWgvZxTBd_NYoeeRPBunqvIzOc7moU6noxrMCXXEhlm7CNWSziswoCaOVtr2tcSMf2Y9upHqOQOeg-lCxNGo_iqxd8vuzkkxDaxmY1hp5rGNO0hP6RpG_1qJF-XW4KPvOSX2PZE96aGRWY8YzNYzkoDC1gAGHsmhaOToF3hbg6mo9LwmruTcNxkUW9NAGKeN71meFfhDBopN57Kn7dLS7lchliv84j1j6m0-WA3M5w6xaicb9Wf06e_Vn0hA67IEUYNw3YH2VlvmGiR38bVXJgtwLclGogKg9RDA25ydsrz9ZpB0WkCJJAIlcJE5AyBinJ4SIqxqCshkoYwyB6stHkFoyUaEKjsAGqV-su_ArTRTJmyZ_siNyov7uoXBVkek8-UremRVLrWfK-CJlOHgjZ1mRCXKaoVVI3pcCMhFjCHss8Ov-Mrm6MMZHWHLTX6xwRRzIHft7qjLSJrF6qDFkwoIjGcrL2kVFHB8dDMuObtue8Q3ESOxx3bV_tDDYd2ReOCFVWdIMqfL1F-iCQqPAGkhXdI=w2346-h1916",
    "https://lh3.googleusercontent.com/fife/ALs6j_HbHqveDSgCZt7nfq_-0k95rVT7_xl2aHoVCzlIZHwSGKZzGvp1nLtrJ3pWD3XNpD8SMr7KY6SFtUc0mkWpjIaNP0oJtOtE7z-CnKyikVl13oQdEt5JnQahHUe3ACYvGC04Z8gcJ1I1zVDYya2qwDKWcQ14n4GCBnEW6-VKLUkUXjIufFZYfrg1q--9a7uoQtWDpdnBqMM5Ly44KaPeX3st6jS_njZaPqdpJskdOAYx-ICINhUFvYJDOt-ucaTHSZ1iTetET_EcCewtajMBhRfZPS3HME-N-ByzgCA47eR7hbH309sLG8fQSwjL9JBvC9pPP2Wz9HbTlBkn81k7nKFUiw8Ff7KmvE8tegNAr6sOcsD61lG8Pmqe-TKSnAtgVc-SWWmwhjguB0ZgPIi6w_y_baiOPsDkjVm0wgTbeGdU_bltBMdP5iWam4BaBJqn45Mn_IGG_JFkVAqwA3GWXRICoCmw7TGVlxwryzVfYEOepEeIe8BX-CindP0yo2egmEKYFBjs4bTYQXYRR_amLRsNihtITTmEFfDgpFLkXw_QBgbAtVhww6_9gICEh7gQj3pkIA_v9jJpJzBHOjiXpW-B9GhfZjLoR6kzhf1LQ5gRk3xkK2pzvPi5Pg0W-pZB2xpo-W8B4LaIyx3vNACqeCqb39W8FvybvObE9P4et98aiDCkwFy2VaqCs2_4rbpV_XUfddI75OKtfsDCpevd2NdPpuolLtN4ZrdMzREaWWnVBvruaksp5RibRb8z_Bwuw4vRUrV05d9KeCCIHwJ_o2yntDwF35PACOZU0RdyKjtcG4NLQF39-r36RQZuQgyfTCJzfxwDgeTit3_A42vi02UA13pbZUZn7ezIbI0ikPASu1ic6zriDQFSJ8rjpgcVSrzuxuiR8Z01YXOQhnxZwYdE3-yFU4bC31Uq6ExUqLlgsJTmoxEaedBMvtirLUGGvA3G7pnxiEZi8h3g8AvRqLIQL8ZfGYFVe4KbIhurZ23HAlsRdpRVn6Ohvn5D0iugQC2oclp2ghJyDebetqL7w72Lz6sichahWy3IZ9eSW-YMr78woN4cDiuSLe8cVp1h9q-gM7YcrBGmSwzeVInlt1cgBRruEdKuxg4ezodG1zN_GvEDPT1pj23AxFAa4GrmhWLVc3nqjCl3U9SLQmsaHvlSI9__BbyPDA9OETLyN6SDTg07ilTrVE5HTNyr_5aSHsD4eWVDjNJUHb1n7GQGgNUWnocDnTJB8I9s5CADcsZsnwnrhrrBHwkF0JZgqjIkJeM0UT4hnplnrUgR4xS68Kc4TduLxFXDMZc12GnZulycjHQkFPWkKS0IgsqLkgjVvMh3DiwVhaHP5uLXyvCS0_1jXhBRmvMFahLZkM9_LriNqaBGiUzMKcHqiXhECz1X6nIQ6p6OYSbzujU9g-RzZ02QtPHAtQ1wsBRNxEr54QCZ7HnTwm9pCqRgEf5-PlSgMNZluNXkufGTR7siRI3fI9CXv0Xg5dLsu2iM7tgPP_SYZMW_AGKynpQoUpLAS1_Jx6PuDya5APaw1m4n2MZM4LrecT8Z5MIuvvQ8C-U176SyU7cBhtnVs1jtQTwEBtmsrN2NAzjYaffnyxwT35Qma0IMe4cTosDxvh5Muhm-oRqUNtvUf8nX_V_ut_5w1HWXLEMOFbXn4nw8d9If6-dWAQ=w2346-h1916"
]
