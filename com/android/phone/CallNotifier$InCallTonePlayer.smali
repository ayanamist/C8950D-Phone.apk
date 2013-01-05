.class Lcom/android/phone/CallNotifier$InCallTonePlayer;
.super Ljava/lang/Thread;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallTonePlayer"
.end annotation


# static fields
.field public static final TONE_BATTERY_LOW:I = 0x4

.field public static final TONE_BUSY:I = 0x2

.field public static final TONE_CALL_ENDED:I = 0x5

.field public static final TONE_CALL_WAITING:I = 0x1

.field public static final TONE_CDMA_DROP:I = 0x9

.field public static final TONE_CONGESTION:I = 0x3

.field public static final TONE_INTERCEPT:I = 0x8

.field public static final TONE_NONE:I = 0x0

.field private static final TONE_OFF:I = 0x0

.field private static final TONE_ON:I = 0x1

.field public static final TONE_OTA_CALL_END:I = 0xc

.field public static final TONE_OUT_OF_SERVICE:I = 0xa

.field public static final TONE_REDIAL:I = 0xb

.field private static final TONE_RELATIVE_VOLUME_EMERGENCY:I = 0x64

.field private static final TONE_RELATIVE_VOLUME_HIPRI:I = 0x50

.field private static final TONE_RELATIVE_VOLUME_LOPRI:I = 0x32

.field public static final TONE_REORDER:I = 0x7

.field public static final TONE_RING_BACK:I = 0xd

.field private static final TONE_STOPPED:I = 0x2

.field private static final TONE_TIMEOUT_BUFFER:I = 0x14

.field public static final TONE_UNOBTAINABLE_NUMBER:I = 0xe

.field public static final TONE_VOICE_PRIVACY:I = 0x6


# instance fields
.field private mState:I

.field private mToneId:I

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;I)V
    .registers 4
    .parameter
    .parameter "toneId"

    .prologue
    .line 1989
    iput-object p1, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    .line 1990
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1991
    iput p2, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    .line 1992
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 1993
    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    const/4 v5, 0x0

    const/4 v14, 0x2

    const/4 v13, 0x1

    .line 1997
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer.run(toneId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")..."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 1999
    const/4 v8, 0x0

    .line 2004
    .local v8, toneType:I
    const/4 v3, 0x2

    .line 2006
    .local v3, phoneType:I
    sget-boolean v10, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v10, :cond_5d

    .line 2007
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 2013
    :goto_3d
    iget v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    packed-switch v10, :pswitch_data_240

    .line 2104
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad toneId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2009
    :cond_5d
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$300(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    goto :goto_3d

    .line 2015
    :pswitch_6c
    const/16 v8, 0x16

    .line 2016
    const/16 v9, 0x50

    .line 2018
    .local v9, toneVolume:I
    const v7, 0x7fffffeb

    .line 2112
    .local v7, toneLengthMillis:I
    :goto_73
    :try_start_73
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v10

    if-eqz v10, :cond_196

    .line 2113
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v10

    if-eqz v10, :cond_88

    const/4 v5, 0x6

    .line 2118
    .local v5, stream:I
    :cond_88
    :goto_88
    new-instance v6, Landroid/media/ToneGenerator;

    invoke-direct {v6, v5, v9}, Landroid/media/ToneGenerator;-><init>(II)V
    :try_end_8d
    .catch Ljava/lang/RuntimeException; {:try_start_73 .. :try_end_8d} :catch_199

    .line 2140
    .end local v5           #stream:I
    .local v6, toneGenerator:Landroid/media/ToneGenerator;
    :goto_8d
    const/4 v1, 0x1

    .line 2141
    .local v1, needToStopTone:Z
    const/4 v2, 0x0

    .line 2143
    .local v2, okToPlayTone:Z
    if-eqz v6, :cond_e4

    .line 2144
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    .line 2145
    .local v4, ringerMode:I
    if-ne v3, v14, :cond_21e

    .line 2146
    const/16 v10, 0x5d

    if-ne v8, v10, :cond_1b5

    .line 2147
    if-eqz v4, :cond_c5

    if-eq v4, v13, :cond_c5

    .line 2149
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$600()Z

    move-result v10

    if-eqz v10, :cond_c3

    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "- InCallTonePlayer: start playing call tone="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2150
    :cond_c3
    const/4 v2, 0x1

    .line 2151
    const/4 v1, 0x0

    .line 2178
    :cond_c5
    :goto_c5
    monitor-enter p0

    .line 2179
    if-eqz v2, :cond_dd

    :try_start_c8
    iget v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    if-eq v10, v14, :cond_dd

    .line 2180
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2181
    invoke-virtual {v6, v8}, Landroid/media/ToneGenerator;->startTone(I)Z
    :try_end_d2
    .catchall {:try_start_c8 .. :try_end_d2} :catchall_23c

    .line 2183
    add-int/lit8 v10, v7, 0x14

    int-to-long v10, v10

    :try_start_d5
    invoke-virtual {p0, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_d8
    .catchall {:try_start_d5 .. :try_end_d8} :catchall_23c
    .catch Ljava/lang/InterruptedException; {:try_start_d5 .. :try_end_d8} :catch_221

    .line 2188
    :goto_d8
    if-eqz v1, :cond_dd

    .line 2189
    :try_start_da
    invoke-virtual {v6}, Landroid/media/ToneGenerator;->stopTone()V

    .line 2193
    :cond_dd
    invoke-virtual {v6}, Landroid/media/ToneGenerator;->release()V

    .line 2194
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2195
    monitor-exit p0
    :try_end_e4
    .catchall {:try_start_da .. :try_end_e4} :catchall_23c

    .line 2211
    .end local v4           #ringerMode:I
    :cond_e4
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$300(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v10, v11, :cond_f7

    .line 2212
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$700(Lcom/android/phone/CallNotifier;)V

    .line 2214
    :cond_f7
    return-void

    .line 2021
    .end local v1           #needToStopTone:Z
    .end local v2           #okToPlayTone:Z
    .end local v6           #toneGenerator:Landroid/media/ToneGenerator;
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_f8
    if-eq v3, v14, :cond_fd

    const/4 v10, 0x4

    if-ne v3, v10, :cond_105

    .line 2023
    :cond_fd
    const/16 v8, 0x60

    .line 2024
    const/16 v9, 0x32

    .line 2025
    .restart local v9       #toneVolume:I
    const/16 v7, 0x3e8

    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2026
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :cond_105
    if-eq v3, v13, :cond_10a

    const/4 v10, 0x3

    if-ne v3, v10, :cond_112

    .line 2028
    :cond_10a
    const/16 v8, 0x11

    .line 2029
    const/16 v9, 0x50

    .line 2030
    .restart local v9       #toneVolume:I
    const/16 v7, 0xfa0

    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2032
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :cond_112
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unexpected phone type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2036
    :pswitch_12b
    const/16 v8, 0x12

    .line 2037
    const/16 v9, 0x50

    .line 2038
    .restart local v9       #toneVolume:I
    const/16 v7, 0xfa0

    .line 2039
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2045
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_133
    const/16 v8, 0x19

    .line 2046
    const/16 v9, 0x50

    .line 2047
    .restart local v9       #toneVolume:I
    const/16 v7, 0x3e8

    .line 2048
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2050
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_13b
    const/16 v8, 0x1b

    .line 2051
    const/16 v9, 0x50

    .line 2052
    .restart local v9       #toneVolume:I
    const/16 v7, 0xc8

    .line 2053
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2055
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_143
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    iget-object v10, v10, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v10, v10, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaPlaySuccessFailureTone:I

    if-ne v10, v13, :cond_155

    .line 2057
    const/16 v8, 0x5d

    .line 2058
    const/16 v9, 0x50

    .line 2059
    .restart local v9       #toneVolume:I
    const/16 v7, 0x2ee

    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2061
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :cond_155
    const/16 v8, 0x1b

    .line 2062
    const/16 v9, 0x50

    .line 2063
    .restart local v9       #toneVolume:I
    const/16 v7, 0xc8

    .line 2065
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2067
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_15d
    const/16 v8, 0x56

    .line 2068
    const/16 v9, 0x50

    .line 2069
    .restart local v9       #toneVolume:I
    const/16 v7, 0x1388

    .line 2070
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2072
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_165
    const/16 v8, 0x26

    .line 2073
    const/16 v9, 0x50

    .line 2074
    .restart local v9       #toneVolume:I
    const/16 v7, 0xfa0

    .line 2075
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2077
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_16d
    const/16 v8, 0x25

    .line 2078
    const/16 v9, 0x32

    .line 2079
    .restart local v9       #toneVolume:I
    const/16 v7, 0x1f4

    .line 2080
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2083
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_175
    const/16 v8, 0x5f

    .line 2084
    const/16 v9, 0x32

    .line 2085
    .restart local v9       #toneVolume:I
    const/16 v7, 0x177

    .line 2086
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2088
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_17d
    const/16 v8, 0x57

    .line 2089
    const/16 v9, 0x32

    .line 2090
    .restart local v9       #toneVolume:I
    const/16 v7, 0x1388

    .line 2091
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2093
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_185
    const/16 v8, 0x17

    .line 2094
    const/16 v9, 0x50

    .line 2096
    .restart local v9       #toneVolume:I
    const v7, 0x7fffffeb

    .line 2097
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2099
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :pswitch_18e
    const/16 v8, 0x15

    .line 2100
    const/16 v9, 0x50

    .line 2101
    .restart local v9       #toneVolume:I
    const/16 v7, 0xfa0

    .line 2102
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_73

    .line 2116
    :cond_196
    const/4 v5, 0x0

    .restart local v5       #stream:I
    goto/16 :goto_88

    .line 2120
    .end local v5           #stream:I
    :catch_199
    move-exception v0

    .line 2121
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v10, "CallNotifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer: Exception caught while creating ToneGenerator: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    const/4 v6, 0x0

    .restart local v6       #toneGenerator:Landroid/media/ToneGenerator;
    goto/16 :goto_8d

    .line 2153
    .end local v0           #e:Ljava/lang/RuntimeException;
    .restart local v1       #needToStopTone:Z
    .restart local v2       #okToPlayTone:Z
    .restart local v4       #ringerMode:I
    :cond_1b5
    const/16 v10, 0x60

    if-eq v8, v10, :cond_1c9

    const/16 v10, 0x26

    if-eq v8, v10, :cond_1c9

    const/16 v10, 0x27

    if-eq v8, v10, :cond_1c9

    const/16 v10, 0x25

    if-eq v8, v10, :cond_1c9

    const/16 v10, 0x5f

    if-ne v8, v10, :cond_1ed

    .line 2158
    :cond_1c9
    if-eqz v4, :cond_c5

    .line 2159
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$600()Z

    move-result v10

    if-eqz v10, :cond_1e9

    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer:playing call fail tone:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2160
    :cond_1e9
    const/4 v2, 0x1

    .line 2161
    const/4 v1, 0x0

    goto/16 :goto_c5

    .line 2163
    :cond_1ed
    const/16 v10, 0x57

    if-eq v8, v10, :cond_1f5

    const/16 v10, 0x56

    if-ne v8, v10, :cond_21b

    .line 2165
    :cond_1f5
    if-eqz v4, :cond_c5

    if-eq v4, v13, :cond_c5

    .line 2167
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$600()Z

    move-result v10

    if-eqz v10, :cond_217

    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer:playing tone for toneType="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2168
    :cond_217
    const/4 v2, 0x1

    .line 2169
    const/4 v1, 0x0

    goto/16 :goto_c5

    .line 2172
    :cond_21b
    const/4 v2, 0x1

    goto/16 :goto_c5

    .line 2175
    :cond_21e
    const/4 v2, 0x1

    goto/16 :goto_c5

    .line 2184
    :catch_221
    move-exception v0

    .line 2185
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_222
    const-string v10, "CallNotifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer stopped: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d8

    .line 2195
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_23c
    move-exception v10

    monitor-exit p0
    :try_end_23e
    .catchall {:try_start_222 .. :try_end_23e} :catchall_23c

    throw v10

    .line 2013
    nop

    :pswitch_data_240
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_f8
        :pswitch_12b
        :pswitch_133
        :pswitch_13b
        :pswitch_15d
        :pswitch_165
        :pswitch_16d
        :pswitch_175
        :pswitch_175
        :pswitch_17d
        :pswitch_143
        :pswitch_185
        :pswitch_18e
    .end packed-switch
.end method

.method public stopTone()V
    .registers 3

    .prologue
    .line 2217
    monitor-enter p0

    .line 2218
    :try_start_1
    iget v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 2219
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 2221
    :cond_9
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2222
    monitor-exit p0

    .line 2223
    return-void

    .line 2222
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method
