.class public Lcom/android/phone/PhoneUtils;
.super Ljava/lang/Object;
.source "PhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneUtils$10;,
        Lcom/android/phone/PhoneUtils$CallerInfoToken;,
        Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;,
        Lcom/android/phone/PhoneUtils$ShowTip;,
        Lcom/android/phone/PhoneUtils$ConnectionHandler;
    }
.end annotation


# static fields
.field static final ADD_CALL_MODE_KEY:Ljava/lang/String; = "add_call_mode"

.field static final AUDIO_IDLE:I = 0x0

.field static final AUDIO_OFFHOOK:I = 0x2

.field static final AUDIO_RINGING:I = 0x1

.field static final CALL_STATUS_DIALED:I = 0x0

.field static final CALL_STATUS_DIALED_MMI:I = 0x1

.field static final CALL_STATUS_FAILED:I = 0x2

.field public static final CDMA_CDMA:I = 0x1

.field public static final CDMA_GSM:I = 0x2

.field private static final CNAP_SPECIAL_CASE_NO:I = -0x1

.field private static final DBG:Z = false

.field private static final DBG_SETAUDIOMODE_STACK:Z = false

.field private static final EVENT_HEADSET_CLICK_END:I = 0x1

.field private static final EVENT_HEADSET_HANGUP_CALL:I = 0x0

.field private static final EVENT_LINE_CONTROL_INFO:I = 0x7d

.field private static final EXTERNAL_SDCARD:Ljava/lang/String; = "external"

.field private static final EXTERNAL_SDCARD_MOUNTED_FILE:Ljava/lang/String; = "/dev/hw_extern_sdcardMounted"

.field private static ExtendedNetworkServiceConnection:Landroid/content/ServiceConnection; = null

.field public static final GSM1_GSM2:I = 0x4

.field public static final GSM_CDMA:I = 0x3

.field private static final INTERNAL_SDCARD:Ljava/lang/String; = "internal"

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneUtils"

.field private static final MIN_AVAILABLE_SIZE:I = 0x200000

.field public static final MTK_MODEM:I = 0x2

.field private static final PHONE_STATE_CHANGED:I = -0x1

.field public static final QC_MODEM:I = 0x1

.field private static final QUERY_TOKEN:I = -0x1

.field private static final SUFFIX:Ljava/lang/String; = "%s.amr"

.field protected static answerflag:Z

.field protected static hangupCall:Lcom/android/internal/telephony/Call;

.field private static mCDMAisAcitve:Z

.field private static mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

.field private static mGSMisAcitve:Z

.field private static mHandler:Landroid/os/Handler;

.field private static mIsHeadsetClicked:Z

.field private static mIsLongPressKeyHandSet:Z

.field private static mMmiTimeoutCbMsg:Landroid/os/Message;

.field private static mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

.field private static mRegisteredForLineControlInfo:Z

.field static sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

.field private static sConnectionMuteTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsNoiseSuppressionEnabled:Z

.field private static sIsSpeakerEnabled:Z

.field private static sVoipSupported:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 162
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    .line 165
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    sput-object v3, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    .line 178
    sput-object v4, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    .line 180
    sput-object v4, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    .line 183
    sput-boolean v1, Lcom/android/phone/PhoneUtils;->sIsNoiseSuppressionEnabled:Z

    .line 187
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->mIsLongPressKeyHandSet:Z

    .line 213
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->mIsHeadsetClicked:Z

    .line 216
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->answerflag:Z

    .line 217
    sput-object v4, Lcom/android/phone/PhoneUtils;->hangupCall:Lcom/android/internal/telephony/Call;

    .line 221
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->mRegisteredForLineControlInfo:Z

    .line 223
    sput-boolean v1, Lcom/android/phone/PhoneUtils;->mCDMAisAcitve:Z

    .line 224
    sput-boolean v1, Lcom/android/phone/PhoneUtils;->mGSMisAcitve:Z

    .line 349
    new-instance v3, Lcom/android/phone/PhoneUtils$1;

    invoke-direct {v3}, Lcom/android/phone/PhoneUtils$1;-><init>()V

    sput-object v3, Lcom/android/phone/PhoneUtils;->ExtendedNetworkServiceConnection:Landroid/content/ServiceConnection;

    .line 1867
    new-instance v3, Lcom/android/phone/PhoneUtils$2;

    invoke-direct {v3}, Lcom/android/phone/PhoneUtils$2;-><init>()V

    sput-object v3, Lcom/android/phone/PhoneUtils;->mHandler:Landroid/os/Handler;

    .line 2977
    new-instance v3, Lcom/android/phone/PhoneUtils$9;

    invoke-direct {v3}, Lcom/android/phone/PhoneUtils$9;-><init>()V

    sput-object v3, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 4336
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->sVoipSupported:Z

    .line 4338
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 4339
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_64

    iget-object v3, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_64

    iget-object v3, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110023

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_64

    :goto_61
    sput-boolean v1, Lcom/android/phone/PhoneUtils;->sVoipSupported:Z

    .line 4344
    return-void

    :cond_64
    move v1, v2

    .line 4339
    goto :goto_61
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 380
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 381
    return-void
.end method

.method public static acceptCall(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .registers 6
    .parameter "cm"
    .parameter "ringingCall"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 4944
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 4950
    .local v1, ringingPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v2

    .line 4951
    .local v2, sub:I
    invoke-static {p0, v2}, Lcom/android/phone/PhoneUtils;->hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 4952
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_26

    const/4 v0, 0x1

    .line 4953
    .local v0, hasBgCall:Z
    :goto_19
    if-eqz v0, :cond_22

    .line 4954
    invoke-static {p0, v2}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 4958
    .end local v0           #hasBgCall:Z
    :cond_22
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->acceptCall()V

    .line 4963
    return-void

    .line 4952
    :cond_26
    const/4 v0, 0x0

    goto :goto_19
.end method

.method static synthetic access$000()Ljava/util/Hashtable;
    .registers 1

    .prologue
    .line 139
    sget-object v0, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 139
    sput-boolean p0, Lcom/android/phone/PhoneUtils;->mGSMisAcitve:Z

    return p0
.end method

.method static synthetic access$202(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 139
    sput-boolean p0, Lcom/android/phone/PhoneUtils;->mCDMAisAcitve:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/Phone;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 139
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->unregisterForLineControllInfo(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/Phone;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V

    return-void
.end method

.method static synthetic access$502(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 139
    sput-boolean p0, Lcom/android/phone/PhoneUtils;->mIsLongPressKeyHandSet:Z

    return p0
.end method

.method static synthetic access$602(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 139
    sput-boolean p0, Lcom/android/phone/PhoneUtils;->mIsHeadsetClicked:Z

    return p0
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/IExtendedNetworkService;)Lcom/android/internal/telephony/IExtendedNetworkService;
    .registers 1
    .parameter "x0"

    .prologue
    .line 139
    sput-object p0, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    return-object p0
.end method

.method static synthetic access$900(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 139
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static activateSpeakerIfDocked(Lcom/android/internal/telephony/Phone;)V
    .registers 5
    .parameter "phone"

    .prologue
    const/4 v3, 0x1

    .line 4230
    sget v2, Lcom/android/phone/PhoneApp;->mDockState:I

    if-eqz v2, :cond_22

    .line 4232
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 4233
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v1

    .line 4235
    .local v1, bthf:Lcom/android/phone/BluetoothHandsfree;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v2

    if-nez v2, :cond_22

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v2

    if-nez v2, :cond_22

    .line 4236
    :cond_1b
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3, v3}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 4239
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #bthf:Lcom/android/phone/BluetoothHandsfree;
    :cond_22
    return-void
.end method

.method static answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z
    .registers 11
    .parameter "cm"
    .parameter "ringing"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1508
    sget-boolean v7, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v7, :cond_8e

    .line 1511
    :try_start_6
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1512
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->resetAndSetRingingSubscription(Lcom/android/internal/telephony/Call;)V

    .line 1513
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->hangupDialingCallOnAltSub(Lcom/android/internal/telephony/Call;)V

    .line 1515
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 1516
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Call;)Z

    move-result v7

    if-nez v7, :cond_26

    .line 1517
    const-string v6, "PhoneUtils"

    const-string v7, "end active call failed!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v2           #phone:Lcom/android/internal/telephony/Phone;
    :goto_25
    return v5

    .line 1521
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    .restart local v2       #phone:Lcom/android/internal/telephony/Phone;
    :cond_26
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v4

    .line 1522
    .local v4, sub:I
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6a

    move v3, v6

    .line 1523
    .local v3, phoneIsCdma:Z
    :goto_32
    if-eqz v3, :cond_3f

    .line 1524
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/phone/PhoneApp;->setCDMACallReallyConnected(Z)V

    .line 1528
    :cond_3f
    sget-boolean v7, Lcom/android/phone/PhoneApp;->DSDA_SWITCH_NEW_DESIGN:Z

    if-eqz v7, :cond_6c

    .line 1529
    sget-object v7, Lcom/android/phone/PhoneUtils;->hangupCall:Lcom/android/internal/telephony/Call;

    if-eqz v7, :cond_5b

    sget-object v7, Lcom/android/phone/PhoneUtils;->hangupCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    if-eq v7, v8, :cond_65

    .line 1530
    :cond_5b
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->setAudioMode(I)V

    .line 1531
    const/4 v7, 0x0

    invoke-static {v2, v7}, Lcom/android/phone/PhoneUtils;->switchCallModes(Lcom/android/internal/telephony/Phone;Z)V

    .line 1532
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/phone/PhoneUtils;->answerflag:Z

    .line 1534
    :cond_65
    const/4 v7, 0x0

    sput-object v7, Lcom/android/phone/PhoneUtils;->hangupCall:Lcom/android/internal/telephony/Call;

    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v2           #phone:Lcom/android/internal/telephony/Phone;
    .end local v3           #phoneIsCdma:Z
    .end local v4           #sub:I
    :cond_68
    :goto_68
    move v5, v6

    .line 1581
    goto :goto_25

    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    .restart local v2       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v4       #sub:I
    :cond_6a
    move v3, v5

    .line 1522
    goto :goto_32

    .line 1536
    .restart local v3       #phoneIsCdma:Z
    :cond_6c
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->setAudioMode(I)V

    .line 1537
    const/4 v7, 0x0

    invoke-static {v2, v7}, Lcom/android/phone/PhoneUtils;->switchCallModes(Lcom/android/internal/telephony/Phone;Z)V
    :try_end_73
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_6 .. :try_end_73} :catch_74

    goto :goto_68

    .line 1540
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v2           #phone:Lcom/android/internal/telephony/Phone;
    .end local v3           #phoneIsCdma:Z
    .end local v4           #sub:I
    :catch_74
    move-exception v1

    .line 1541
    .local v1, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v6, "PhoneUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "answerAndEndActive: caught "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    .line 1547
    .end local v1           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_8e
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Call;)Z

    move-result v7

    if-nez v7, :cond_68

    .line 1548
    const-string v6, "PhoneUtils"

    const-string v7, "end active call failed!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method

.method static answerAndEndHolding(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z
    .registers 4
    .parameter "cm"
    .parameter "ringing"

    .prologue
    .line 1483
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1484
    const-string v0, "PhoneUtils"

    const-string v1, "end holding failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    const/4 v0, 0x0

    .line 1489
    :goto_12
    return v0

    :cond_13
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    goto :goto_12
.end method

.method static answerCall(Lcom/android/internal/telephony/Call;)Z
    .registers 16
    .parameter "ringing"

    .prologue
    .line 917
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "answerCall("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")..."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 918
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 922
    .local v1, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/Ringer;->stopRing()V

    .line 926
    sget-boolean v12, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v12, :cond_2e

    .line 930
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->resetAndSetRingingSubscription(Lcom/android/internal/telephony/Call;)V

    .line 937
    :cond_2e
    sget-boolean v12, Lcom/android/phone/PhoneApp;->DSDA_SWITCH_NEW_DESIGN:Z

    if-eqz v12, :cond_42

    .line 938
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/phone/PhoneUtils;->answerflag:Z

    .line 939
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->smartHangupAndAnswer(Lcom/android/internal/telephony/Call;)Z

    move-result v12

    sput-boolean v12, Lcom/android/phone/PhoneUtils;->answerflag:Z

    .line 940
    sget-boolean v12, Lcom/android/phone/PhoneUtils;->answerflag:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_42

    .line 941
    const/4 v0, 0x1

    .line 1075
    :cond_41
    :goto_41
    return v0

    .line 944
    :cond_42
    const/4 v0, 0x0

    .line 945
    .local v0, answered:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    .line 946
    .local v9, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_f9

    const/4 v10, 0x1

    .line 947
    .local v10, phoneIsCdma:Z
    :goto_4f
    const/4 v2, 0x0

    .line 949
    .local v2, bthf:Lcom/android/phone/BluetoothHandsfree;
    if-eqz v10, :cond_5f

    .line 951
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v12, v13, :cond_5f

    .line 952
    iget-object v8, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 953
    .local v8, notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v8}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 957
    .end local v8           #notifier:Lcom/android/phone/CallNotifier;
    :cond_5f
    if-eqz p0, :cond_41

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v12

    if-eqz v12, :cond_41

    .line 960
    if-eqz v10, :cond_7a

    .line 961
    :try_start_69
    iget-object v12, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v12}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v12

    sget-object v13, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v12, v13, :cond_fc

    .line 965
    iget-object v12, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v13, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v12, v13}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 989
    :cond_7a
    :goto_7a
    sget-boolean v12, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v12, :cond_81

    .line 993
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangupDialingCallOnAltSub(Lcom/android/internal/telephony/Call;)V

    .line 1000
    :cond_81
    sget-boolean v12, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v12, :cond_115

    .line 1001
    iget-object v12, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v12, p0}, Lcom/android/phone/PhoneUtils;->acceptCall(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 1007
    :goto_8a
    const/4 v0, 0x1

    .line 1020
    sget-boolean v12, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v12, :cond_128

    .line 1021
    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v11

    .line 1026
    .local v11, sub:I
    if-eqz v10, :cond_a0

    .line 1027
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/phone/PhoneApp;->setCDMACallReallyConnected(Z)V

    .line 1032
    :cond_a0
    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 1033
    .local v3, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v12

    if-nez v12, :cond_11c

    .line 1034
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_b2
    :goto_b2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_11c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/Connection;

    .line 1035
    .local v5, cn:Lcom/android/internal/telephony/Connection;
    sget-object v12, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-virtual {v12, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_b2

    .line 1037
    const/4 v12, 0x0

    invoke-static {v12, v11}, Lcom/android/phone/PhoneUtils;->setMute(ZI)V
    :try_end_ca
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_69 .. :try_end_ca} :catch_cb

    goto :goto_b2

    .line 1062
    .end local v3           #call:Lcom/android/internal/telephony/Call;
    .end local v5           #cn:Lcom/android/internal/telephony/Connection;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v11           #sub:I
    :catch_cb
    move-exception v6

    .line 1063
    .local v6, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v12, "PhoneUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "answerCall: caught "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1065
    if-eqz v10, :cond_41

    .line 1067
    iget-object v12, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    iget-object v13, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v13}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 1069
    if-eqz v2, :cond_41

    .line 1070
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lcom/android/phone/BluetoothHandsfree;->cdmaSetSecondCallState(Z)V

    goto/16 :goto_41

    .line 946
    .end local v2           #bthf:Lcom/android/phone/BluetoothHandsfree;
    .end local v6           #ex:Lcom/android/internal/telephony/CallStateException;
    .end local v10           #phoneIsCdma:Z
    :cond_f9
    const/4 v10, 0x0

    goto/16 :goto_4f

    .line 970
    .restart local v2       #bthf:Lcom/android/phone/BluetoothHandsfree;
    .restart local v10       #phoneIsCdma:Z
    :cond_fc
    :try_start_fc
    iget-object v12, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v13, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v12, v13}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 975
    iget-object v12, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V

    .line 980
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v2

    .line 981
    if-eqz v2, :cond_7a

    .line 982
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Lcom/android/phone/BluetoothHandsfree;->cdmaSetSecondCallState(Z)V

    goto/16 :goto_7a

    .line 1003
    :cond_115
    iget-object v12, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v12, p0}, Lcom/android/internal/telephony/CallManager;->acceptCall(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_8a

    .line 1043
    .restart local v3       #call:Lcom/android/internal/telephony/Call;
    .restart local v11       #sub:I
    :cond_11c
    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->setAudioMode(I)V

    .line 1044
    const/4 v12, 0x0

    invoke-static {v9, v12}, Lcom/android/phone/PhoneUtils;->switchCallModes(Lcom/android/internal/telephony/Phone;Z)V

    .line 1061
    .end local v3           #call:Lcom/android/internal/telephony/Call;
    .end local v11           #sub:I
    :goto_123
    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->activateSpeakerIfDocked(Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_41

    .line 1050
    :cond_128
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v12

    iget-object v4, v12, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 1051
    .local v4, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_13a
    :goto_13a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_153

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/Connection;

    .line 1052
    .restart local v5       #cn:Lcom/android/internal/telephony/Connection;
    sget-object v12, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-virtual {v12, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_13a

    .line 1053
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    goto :goto_13a

    .line 1057
    .end local v5           #cn:Lcom/android/internal/telephony/Connection;
    :cond_153
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V
    :try_end_156
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_fc .. :try_end_156} :catch_cb

    goto :goto_123
.end method

.method private static audioModeToString(I)Ljava/lang/String;
    .registers 2
    .parameter "mode"

    .prologue
    .line 3540
    packed-switch p0, :pswitch_data_18

    .line 3546
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    .line 3541
    :pswitch_8
    const-string v0, "MODE_INVALID"

    goto :goto_7

    .line 3542
    :pswitch_b
    const-string v0, "MODE_CURRENT"

    goto :goto_7

    .line 3543
    :pswitch_e
    const-string v0, "MODE_NORMAL"

    goto :goto_7

    .line 3544
    :pswitch_11
    const-string v0, "MODE_RINGTONE"

    goto :goto_7

    .line 3545
    :pswitch_14
    const-string v0, "MODE_IN_CALL"

    goto :goto_7

    .line 3540
    nop

    :pswitch_data_18
    .packed-switch -0x2
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method

.method public static canConference(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;I)Z
    .registers 7
    .parameter "cm"
    .parameter "heldCall"
    .parameter "sub"

    .prologue
    .line 4681
    const/4 v0, 0x0

    .line 4682
    .local v0, activePhone:Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 4684
    .local v1, heldPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {p0, p2}, Lcom/android/phone/PhoneUtils;->hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 4685
    invoke-static {p0, p2}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4688
    :cond_10
    if-eqz p1, :cond_16

    .line 4689
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 4693
    :cond_16
    if-eqz v1, :cond_27

    if-eqz v0, :cond_27

    .line 4694
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 4696
    :goto_26
    return v2

    :cond_27
    const/4 v2, 0x0

    goto :goto_26
.end method

.method static cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z
    .registers 8
    .parameter "phone"

    .prologue
    const/4 v6, 0x0

    .line 2575
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v4

    .line 2576
    .local v4, pendingMmis:Ljava/util/List;,"Ljava/util/List<+Lcom/android/internal/telephony/MmiCode;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 2579
    .local v1, count:I
    const/4 v0, 0x0

    .line 2580
    .local v0, canceled:Z
    if-lez v1, :cond_1d

    .line 2585
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/MmiCode;

    .line 2586
    .local v3, mmiCode:Lcom/android/internal/telephony/MmiCode;
    invoke-interface {v3}, Lcom/android/internal/telephony/MmiCode;->isCancelable()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 2587
    invoke-interface {v3}, Lcom/android/internal/telephony/MmiCode;->cancel()V

    .line 2588
    const/4 v0, 0x1

    .line 2593
    .end local v3           #mmiCode:Lcom/android/internal/telephony/MmiCode;
    :cond_1d
    sget-object v5, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    if-eqz v5, :cond_26

    .line 2595
    :try_start_21
    sget-object v5, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    invoke-interface {v5}, Lcom/android/internal/telephony/IExtendedNetworkService;->clearMmiString()V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_2d

    .line 2600
    :cond_26
    :goto_26
    sget-object v5, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    if-eqz v5, :cond_2c

    .line 2601
    sput-object v6, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    .line 2603
    :cond_2c
    return v0

    .line 2596
    :catch_2d
    move-exception v2

    .line 2597
    .local v2, e:Landroid/os/RemoteException;
    sput-object v6, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    goto :goto_26
.end method

.method static checkAndCopyPhoneProviderExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .registers 4
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 4105
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hasPhoneProviderExtras(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 4106
    const-string v0, "PhoneUtils"

    const-string v1, "checkAndCopyPhoneProviderExtras: some or all extras are missing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4114
    :goto_d
    return-void

    .line 4110
    :cond_e
    const-string v0, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    const-string v1, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4112
    const-string v0, "com.android.phone.extra.GATEWAY_URI"

    const-string v1, "com.android.phone.extra.GATEWAY_URI"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_d
.end method

.method private static checkCnapSpecialCases(Ljava/lang/String;)I
    .registers 2
    .parameter "n"

    .prologue
    .line 4007
    const-string v0, "PRIVATE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "P"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "RES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 4011
    :cond_18
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    .line 4020
    :goto_1a
    return v0

    .line 4012
    :cond_1b
    const-string v0, "UNAVAILABLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "UNA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "U"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 4017
    :cond_3b
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    goto :goto_1a

    .line 4020
    :cond_3e
    const/4 v0, -0x1

    goto :goto_1a
.end method

.method private static checkWhichStorageVolume(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 14
    .parameter "externalOrInternal"
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    .line 5109
    const-string v9, "storage"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    .line 5110
    .local v5, sm:Landroid/os/storage/StorageManager;
    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v6

    .line 5111
    .local v6, storageVolumes:[Landroid/os/storage/StorageVolume;
    const-string v9, "PhoneUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkWhichStorageVolume()->storageVolumes.size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5112
    const-string v9, "internal"

    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9f

    .line 5113
    const-string v9, "PhoneUtils"

    const-string v10, "checkWhichStorageVolume()->internal sdcard branch"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5114
    move-object v0, v6

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_38
    if-ge v2, v3, :cond_117

    aget-object v7, v0, v2

    .line 5115
    .local v7, sv:Landroid/os/storage/StorageVolume;
    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 5116
    .local v4, path:Ljava/lang/String;
    const-string v9, "PhoneUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkWhichStorageVolume()->storage_volume_path="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5117
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5118
    .local v1, f:Ljava/io/File;
    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v9

    if-nez v9, :cond_9c

    .line 5119
    const-string v9, "PhoneUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkWhichStorageVolume()->canRead and canWrite:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "||"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5121
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v9

    if-eqz v9, :cond_9a

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v9

    if-eqz v9, :cond_9a

    .line 5145
    .end local v0           #arr$:[Landroid/os/storage/StorageVolume;
    .end local v1           #f:Ljava/io/File;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #path:Ljava/lang/String;
    .end local v7           #sv:Landroid/os/storage/StorageVolume;
    :cond_99
    :goto_99
    return-object v4

    .restart local v0       #arr$:[Landroid/os/storage/StorageVolume;
    .restart local v1       #f:Ljava/io/File;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #path:Ljava/lang/String;
    .restart local v7       #sv:Landroid/os/storage/StorageVolume;
    :cond_9a
    move-object v4, v8

    .line 5124
    goto :goto_99

    .line 5114
    :cond_9c
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 5128
    .end local v0           #arr$:[Landroid/os/storage/StorageVolume;
    .end local v1           #f:Ljava/io/File;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #path:Ljava/lang/String;
    .end local v7           #sv:Landroid/os/storage/StorageVolume;
    :cond_9f
    const-string v9, "external"

    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_117

    .line 5129
    const-string v9, "PhoneUtils"

    const-string v10, "checkWhichStorageVolume()->external sdcard branch"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5130
    move-object v0, v6

    .restart local v0       #arr$:[Landroid/os/storage/StorageVolume;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_b1
    if-ge v2, v3, :cond_117

    aget-object v7, v0, v2

    .line 5131
    .restart local v7       #sv:Landroid/os/storage/StorageVolume;
    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 5132
    .restart local v4       #path:Ljava/lang/String;
    const-string v9, "PhoneUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkWhichStorageVolume()->storage_volume_path="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5133
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5134
    .restart local v1       #f:Ljava/io/File;
    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v9

    if-eqz v9, :cond_114

    .line 5135
    const-string v9, "PhoneUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkWhichStorageVolume()->canRead and canWrite:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "||"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5137
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v9

    if-eqz v9, :cond_112

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v9

    if-nez v9, :cond_99

    :cond_112
    move-object v4, v8

    .line 5140
    goto :goto_99

    .line 5130
    :cond_114
    add-int/lit8 v2, v2, 0x1

    goto :goto_b1

    .end local v0           #arr$:[Landroid/os/storage/StorageVolume;
    .end local v1           #f:Ljava/io/File;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #path:Ljava/lang/String;
    .end local v7           #sv:Landroid/os/storage/StorageVolume;
    :cond_117
    move-object v4, v8

    .line 5145
    goto :goto_99
.end method

.method public static conference(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;I)V
    .registers 7
    .parameter "cm"
    .parameter "heldCall"
    .parameter "sub"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 4715
    invoke-static {p0, p2}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 4716
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 4717
    .local v1, fgPhone:Lcom/android/internal/telephony/Phone;
    instance-of v2, v1, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v2, :cond_12

    .line 4718
    check-cast v1, Lcom/android/internal/telephony/sip/SipPhone;

    .end local v1           #fgPhone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/sip/SipPhone;->conference(Lcom/android/internal/telephony/Call;)V

    .line 4729
    :goto_11
    return-void

    .line 4719
    .restart local v1       #fgPhone:Lcom/android/internal/telephony/Phone;
    :cond_12
    invoke-static {p0, p1, p2}, Lcom/android/phone/PhoneUtils;->canConference(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 4720
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->conference()V

    goto :goto_11

    .line 4722
    :cond_1c
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "Can\'t conference foreground and selected background call"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static copyIMSExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .registers 5
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 4122
    if-nez p0, :cond_a

    .line 4123
    const-string v0, "PhoneUtils"

    const-string v1, "intent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4131
    :goto_9
    return-void

    .line 4127
    :cond_a
    const-string v0, "android.phone.extra.CALL_TYPE"

    const-string v1, "android.phone.extra.CALL_TYPE"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4129
    const-string v0, "android.phone.extra.CALL_DOMAIN"

    const-string v1, "android.phone.extra.CALL_DOMAIN"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_9
.end method

.method private static dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/CallDetails;)Lcom/android/internal/telephony/Connection;
    .registers 5
    .parameter "phone"
    .parameter "dialString"
    .parameter "callDetails"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 5238
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 5246
    .local v0, basePhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/CallDetails;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 5253
    .local v1, result:Lcom/android/internal/telephony/Connection;
    return-object v1
.end method

.method static displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V
    .registers 25
    .parameter "phone"
    .parameter "context"
    .parameter "mmiCode"
    .parameter "dismissCallbackMessage"
    .parameter "previousAlert"

    .prologue
    .line 2309
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    .line 2311
    .local v2, app:Lcom/android/phone/PhoneApp;
    const/16 v16, 0x0

    .line 2312
    .local v16, title:I
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v14

    .line 2316
    .local v14, state:Lcom/android/internal/telephony/MmiCode$State;
    sget-object v17, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    if-eqz v17, :cond_23

    .line 2318
    :try_start_e
    sget-object v17, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v17

    sget-object v18, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_1f
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_1f} :catch_1ca

    .line 2322
    :goto_1f
    const/16 v17, 0x0

    sput-object v17, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    .line 2326
    :cond_23
    sget-object v17, Lcom/android/phone/PhoneUtils$10;->$SwitchMap$com$android$internal$telephony$MmiCode$State:[I

    invoke-virtual {v14}, Lcom/android/internal/telephony/MmiCode$State;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_1ce

    .line 2352
    new-instance v17, Ljava/lang/IllegalStateException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unexpected MmiCode state: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 2329
    :pswitch_49
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/MmiCode;->getMessage()Ljava/lang/CharSequence;

    move-result-object v15

    .line 2355
    .local v15, text:Ljava/lang/CharSequence;
    :goto_4d
    if-eqz p4, :cond_52

    .line 2356
    invoke-virtual/range {p4 .. p4}, Landroid/app/AlertDialog;->dismiss()V

    .line 2361
    :cond_52
    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getPUKEntryActivity()Landroid/app/Activity;

    move-result-object v17

    if-eqz v17, :cond_b8

    sget-object v17, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    move-object/from16 v0, v17

    if-ne v14, v0, :cond_b8

    .line 2366
    new-instance v13, Landroid/app/ProgressDialog;

    invoke-direct {v13, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 2367
    .local v13, pd:Landroid/app/ProgressDialog;
    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 2368
    invoke-virtual {v13, v15}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2369
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 2370
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 2371
    invoke-virtual {v13}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    const/16 v18, 0x7d8

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->setType(I)V

    .line 2372
    invoke-virtual {v13}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->addFlags(I)V

    .line 2375
    invoke-virtual {v13}, Landroid/app/ProgressDialog;->show()V

    .line 2379
    invoke-virtual {v2, v13}, Lcom/android/phone/PhoneApp;->setPukEntryProgressDialog(Landroid/app/ProgressDialog;)V

    .line 2564
    .end local v13           #pd:Landroid/app/ProgressDialog;
    :cond_91
    :goto_91
    return-void

    .line 2333
    .end local v15           #text:Ljava/lang/CharSequence;
    :pswitch_92
    const v17, 0x7f0c0030

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 2334
    .restart local v15       #text:Ljava/lang/CharSequence;
    goto :goto_4d

    .line 2336
    .end local v15           #text:Ljava/lang/CharSequence;
    :pswitch_9e
    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getPUKEntryActivity()Landroid/app/Activity;

    move-result-object v17

    if-eqz v17, :cond_b3

    .line 2339
    const v16, 0x10400d8

    .line 2340
    const v17, 0x7f0c004a

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 2341
    .restart local v15       #text:Ljava/lang/CharSequence;
    goto :goto_4d

    .line 2348
    .end local v15           #text:Ljava/lang/CharSequence;
    :cond_b3
    :pswitch_b3
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/MmiCode;->getMessage()Ljava/lang/CharSequence;

    move-result-object v15

    .line 2350
    .restart local v15       #text:Ljava/lang/CharSequence;
    goto :goto_4d

    .line 2384
    :cond_b8
    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getPUKEntryActivity()Landroid/app/Activity;

    move-result-object v17

    if-eqz v17, :cond_c5

    .line 2385
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/phone/PhoneApp;->setPukEntryActivity(Landroid/app/Activity;)V

    .line 2390
    :cond_c5
    sget-object v17, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    move-object/from16 v0, v17

    if-eq v14, v0, :cond_129

    .line 2394
    sget-object v17, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    if-eqz v17, :cond_df

    .line 2396
    :try_start_cf
    sget-object v17, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Lcom/android/internal/telephony/IExtendedNetworkService;->getUserMessage(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    :try_end_d6
    .catch Landroid/os/RemoteException; {:try_start_cf .. :try_end_d6} :catch_123

    move-result-object v15

    .line 2401
    :goto_d7
    if-eqz v15, :cond_91

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v17

    if-eqz v17, :cond_91

    .line 2408
    :cond_df
    new-instance v17, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x7f0c002d

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    .line 2414
    .local v12, newDialog:Landroid/app/AlertDialog;
    new-instance v11, Lcom/android/phone/PhoneUtils$3;

    invoke-direct {v11, v2}, Lcom/android/phone/PhoneUtils$3;-><init>(Lcom/android/phone/PhoneApp;)V

    .line 2420
    .local v11, mUSSDDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-virtual {v12, v11}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2422
    invoke-virtual {v12}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    const/16 v18, 0x7d8

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->setType(I)V

    .line 2424
    invoke-virtual {v12}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->addFlags(I)V

    .line 2427
    invoke-virtual {v2, v12}, Lcom/android/phone/PhoneApp;->setUSSDDialog(Landroid/app/AlertDialog;)V

    .line 2429
    invoke-virtual {v12}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_91

    .line 2397
    .end local v11           #mUSSDDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    .end local v12           #newDialog:Landroid/app/AlertDialog;
    :catch_123
    move-exception v4

    .line 2398
    .local v4, e:Landroid/os/RemoteException;
    const/16 v17, 0x0

    sput-object v17, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    goto :goto_d7

    .line 2456
    .end local v4           #e:Landroid/os/RemoteException;
    :cond_129
    const-string v17, "layout_inflater"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 2458
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v17, 0x7f04000a

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2461
    .local v3, dialogView:Landroid/view/View;
    const v17, 0x7f07003f

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 2464
    .local v6, inputText:Landroid/widget/EditText;
    new-instance v8, Lcom/android/phone/PhoneUtils$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v8, v0, v6, v1}, Lcom/android/phone/PhoneUtils$4;-><init>(Lcom/android/internal/telephony/Phone;Landroid/widget/EditText;Lcom/android/internal/telephony/MmiCode;)V

    .line 2481
    .local v8, mUSSDDialogListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v17, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x7f0c0039

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x7f0c0031

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    .line 2489
    .restart local v12       #newDialog:Landroid/app/AlertDialog;
    new-instance v11, Lcom/android/phone/PhoneUtils$5;

    invoke-direct {v11, v2}, Lcom/android/phone/PhoneUtils$5;-><init>(Lcom/android/phone/PhoneApp;)V

    .line 2495
    .restart local v11       #mUSSDDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-virtual {v12, v11}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2499
    new-instance v7, Lcom/android/phone/PhoneUtils$6;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v6, v12}, Lcom/android/phone/PhoneUtils$6;-><init>(Lcom/android/internal/telephony/Phone;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    .line 2515
    .local v7, mUSSDDialogInputListener:Landroid/view/View$OnKeyListener;
    new-instance v9, Lcom/android/phone/PhoneUtils$7;

    invoke-direct {v9}, Lcom/android/phone/PhoneUtils$7;-><init>()V

    .line 2522
    .local v9, mUSSDDialogLongInputListener:Landroid/view/View$OnLongClickListener;
    new-instance v10, Lcom/android/phone/PhoneUtils$8;

    invoke-direct {v10}, Lcom/android/phone/PhoneUtils$8;-><init>()V

    .line 2546
    .local v10, mUSSDDialogTouchListener:Landroid/view/View$OnTouchListener;
    invoke-virtual {v6, v10}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2547
    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2548
    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2549
    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z

    .line 2553
    invoke-virtual {v12}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    const/16 v18, 0x7d8

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->setType(I)V

    .line 2555
    invoke-virtual {v12}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->addFlags(I)V

    .line 2558
    invoke-virtual {v2, v12}, Lcom/android/phone/PhoneApp;->setUSSDDialog(Landroid/app/AlertDialog;)V

    .line 2561
    invoke-virtual {v12}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_91

    .line 2320
    .end local v3           #dialogView:Landroid/view/View;
    .end local v5           #inflater:Landroid/view/LayoutInflater;
    .end local v6           #inputText:Landroid/widget/EditText;
    .end local v7           #mUSSDDialogInputListener:Landroid/view/View$OnKeyListener;
    .end local v8           #mUSSDDialogListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v9           #mUSSDDialogLongInputListener:Landroid/view/View$OnLongClickListener;
    .end local v10           #mUSSDDialogTouchListener:Landroid/view/View$OnTouchListener;
    .end local v11           #mUSSDDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    .end local v12           #newDialog:Landroid/app/AlertDialog;
    .end local v15           #text:Ljava/lang/CharSequence;
    :catch_1ca
    move-exception v17

    goto/16 :goto_1f

    .line 2326
    nop

    :pswitch_data_1ce
    .packed-switch 0x1
        :pswitch_49
        :pswitch_92
        :pswitch_9e
        :pswitch_b3
    .end packed-switch
.end method

.method static displayMMIInitiate(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 15
    .parameter "context"
    .parameter "mmiCode"
    .parameter "buttonCallbackMessage"
    .parameter "previousAlert"

    .prologue
    const v10, 0x7f0c002f

    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2211
    if-eqz p3, :cond_c

    .line 2212
    invoke-virtual {p3}, Landroid/app/Dialog;->dismiss()V

    .line 2244
    :cond_c
    sget-object v8, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    if-eqz v8, :cond_53

    .line 2247
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 2248
    .local v2, pd:Landroid/app/ProgressDialog;
    const-string v4, ""

    .line 2250
    .local v4, textmsg:Ljava/lang/CharSequence;
    :try_start_17
    sget-object v8, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    invoke-interface {v8}, Lcom/android/internal/telephony/IExtendedNetworkService;->getMmiRunningText()Ljava/lang/CharSequence;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1c} :catch_47

    move-result-object v4

    .line 2257
    :goto_1d
    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2258
    invoke-virtual {v2, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 2259
    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 2260
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/Window;->addFlags(I)V

    .line 2261
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d8

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 2262
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 2264
    sput-object p2, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    .line 2266
    :try_start_3b
    sget-object v6, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v7, 0x3a98

    invoke-virtual {v6, p2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_46
    .catch Ljava/lang/NullPointerException; {:try_start_3b .. :try_end_46} :catch_4f

    .line 2293
    .end local v2           #pd:Landroid/app/ProgressDialog;
    .end local v4           #textmsg:Ljava/lang/CharSequence;
    :goto_46
    return-object v2

    .line 2252
    .restart local v2       #pd:Landroid/app/ProgressDialog;
    .restart local v4       #textmsg:Ljava/lang/CharSequence;
    :catch_47
    move-exception v0

    .line 2253
    .local v0, e:Landroid/os/RemoteException;
    sput-object v5, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    .line 2254
    invoke-virtual {p0, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_1d

    .line 2267
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_4f
    move-exception v0

    .line 2268
    .local v0, e:Ljava/lang/NullPointerException;
    sput-object v5, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    goto :goto_46

    .line 2273
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #pd:Landroid/app/ProgressDialog;
    .end local v4           #textmsg:Ljava/lang/CharSequence;
    :cond_53
    if-eqz p1, :cond_6e

    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->isCancelable()Z

    move-result v8

    if-eqz v8, :cond_6e

    move v1, v6

    .line 2275
    .local v1, isCancelable:Z
    :goto_5c
    if-nez v1, :cond_70

    .line 2277
    const v6, 0x7f0c002e

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2278
    .local v3, text:Ljava/lang/CharSequence;
    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    move-object v2, v5

    .line 2280
    goto :goto_46

    .end local v1           #isCancelable:Z
    .end local v3           #text:Ljava/lang/CharSequence;
    :cond_6e
    move v1, v7

    .line 2273
    goto :goto_5c

    .line 2285
    .restart local v1       #isCancelable:Z
    :cond_70
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 2286
    .restart local v2       #pd:Landroid/app/ProgressDialog;
    invoke-virtual {p0, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2287
    invoke-virtual {v2, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 2288
    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 2289
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/Window;->addFlags(I)V

    .line 2291
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    goto :goto_46
.end method

.method static dumpCallManager()V
    .registers 9

    .prologue
    const/4 v8, 0x0

    .line 4511
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v2, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 4512
    .local v2, cm:Lcom/android/internal/telephony/CallManager;
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4516
    .local v0, b:Ljava/lang/StringBuilder;
    const-string v5, "PhoneUtils"

    const-string v6, "############### dumpCallManager() ##############"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4523
    const-string v5, "PhoneUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CallManager: state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4524
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4525
    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 4526
    .local v1, call:Lcom/android/internal/telephony/Call;
    const-string v5, " - FG call: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v5

    if-eqz v5, :cond_1cf

    const-string v5, "YES "

    :goto_46
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4527
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4528
    const-string v5, "  State: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4529
    const-string v5, "  Conn: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4530
    const-string v5, "PhoneUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4531
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4532
    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 4533
    const-string v5, " - BG call: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v5

    if-eqz v5, :cond_1d3

    const-string v5, "YES "

    :goto_84
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4534
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4535
    const-string v5, "  State: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4536
    const-string v5, "  Conn: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getBgCallConnections()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4537
    const-string v5, "PhoneUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4538
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4539
    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 4540
    const-string v5, " - RINGING call: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v5

    if-eqz v5, :cond_1d7

    const-string v5, "YES "

    :goto_c6
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4541
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4542
    const-string v5, "  State: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4543
    const-string v5, "PhoneUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4547
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_f2
    :goto_f2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1db

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Phone;

    .line 4548
    .local v4, phone:Lcom/android/internal/telephony/Phone;
    if-eqz v4, :cond_f2

    .line 4549
    const-string v5, "PhoneUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Phone: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4551
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4552
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 4553
    const-string v5, " - FG call: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4554
    const-string v5, "  State: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4555
    const-string v5, "  Conn: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4556
    const-string v5, "PhoneUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4557
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4558
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 4559
    const-string v5, " - BG call: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4560
    const-string v5, "  State: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4561
    const-string v5, "  Conn: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4562
    const-string v5, "PhoneUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4563
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 4564
    const-string v5, " - RINGING call: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4565
    const-string v5, "  State: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4566
    const-string v5, "  Conn: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4567
    const-string v5, "PhoneUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f2

    .line 4526
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #phone:Lcom/android/internal/telephony/Phone;
    :cond_1cf
    const-string v5, "NO "

    goto/16 :goto_46

    .line 4533
    :cond_1d3
    const-string v5, "NO "

    goto/16 :goto_84

    .line 4540
    :cond_1d7
    const-string v5, "NO "

    goto/16 :goto_c6

    .line 4571
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_1db
    const-string v5, "PhoneUtils"

    const-string v6, "############## END dumpCallManager() ###############"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4572
    return-void
.end method

.method static dumpCallState(Lcom/android/internal/telephony/Phone;)V
    .registers 14
    .parameter "phone"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 4439
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 4440
    .local v1, app:Lcom/android/phone/PhoneApp;
    const-string v10, "PhoneUtils"

    const-string v11, "dumpCallState():"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4441
    const-string v10, "PhoneUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "- Phone: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", name = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", state = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4444
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v10, 0x80

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4446
    .local v2, b:Ljava/lang/StringBuilder;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 4447
    .local v3, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4448
    const-string v10, "  - FG call: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4449
    const-string v10, " isAlive "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4450
    const-string v10, " isRinging "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4451
    const-string v10, " isDialing "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4452
    const-string v10, " isIdle "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4453
    const-string v10, " hasConnections "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4454
    const-string v10, "PhoneUtils"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4456
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 4457
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4458
    const-string v10, "  - BG call: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4459
    const-string v10, " isAlive "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4460
    const-string v10, " isRinging "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4461
    const-string v10, " isDialing "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4462
    const-string v10, " isIdle "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4463
    const-string v10, " hasConnections "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4464
    const-string v10, "PhoneUtils"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4466
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 4467
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4468
    const-string v10, "  - RINGING call: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4469
    const-string v10, " isAlive "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4470
    const-string v10, " isRinging "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4471
    const-string v10, " isDialing "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4472
    const-string v10, " isIdle "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4473
    const-string v10, " hasConnections "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4474
    const-string v10, "PhoneUtils"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4477
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v10

    if-nez v10, :cond_226

    move v6, v8

    .line 4478
    .local v6, hasRingingCall:Z
    :goto_191
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v10

    if-nez v10, :cond_229

    move v4, v8

    .line 4479
    .local v4, hasActiveCall:Z
    :goto_19c
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v10

    if-nez v10, :cond_22c

    move v5, v8

    .line 4480
    .local v5, hasHoldingCall:Z
    :goto_1a7
    if-eqz v4, :cond_22f

    if-eqz v5, :cond_22f

    move v0, v8

    .line 4481
    .local v0, allLinesTaken:Z
    :goto_1ac
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4482
    const-string v8, "  - hasRingingCall "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4483
    const-string v8, " hasActiveCall "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4484
    const-string v8, " hasHoldingCall "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4485
    const-string v8, " allLinesTaken "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4486
    const-string v8, "PhoneUtils"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4489
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_205

    .line 4490
    iget-object v8, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v8, :cond_232

    .line 4491
    const-string v8, "PhoneUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  - CDMA call state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v10}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4501
    :cond_205
    :goto_205
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v7

    .line 4502
    .local v7, ringing:Z
    const-string v8, "PhoneUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  - Ringer state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4503
    return-void

    .end local v0           #allLinesTaken:Z
    .end local v4           #hasActiveCall:Z
    .end local v5           #hasHoldingCall:Z
    .end local v6           #hasRingingCall:Z
    .end local v7           #ringing:Z
    :cond_226
    move v6, v9

    .line 4477
    goto/16 :goto_191

    .restart local v6       #hasRingingCall:Z
    :cond_229
    move v4, v9

    .line 4478
    goto/16 :goto_19c

    .restart local v4       #hasActiveCall:Z
    :cond_22c
    move v5, v9

    .line 4479
    goto/16 :goto_1a7

    .restart local v5       #hasHoldingCall:Z
    :cond_22f
    move v0, v9

    .line 4480
    goto/16 :goto_1ac

    .line 4494
    .restart local v0       #allLinesTaken:Z
    :cond_232
    const-string v8, "PhoneUtils"

    const-string v9, "  - CDMA device, but null cdmaPhoneCallState!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_205
.end method

.method private static externalStoragePath(Landroid/content/Context;)Ljava/lang/String;
    .registers 16
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    .line 5054
    const-string v11, "external"

    invoke-static {v11, p0}, Lcom/android/phone/PhoneUtils;->checkWhichStorageVolume(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 5055
    .local v8, path:Ljava/lang/String;
    const/4 v5, 0x0

    .line 5056
    .local v5, f:Ljava/io/File;
    if-eqz v8, :cond_35

    .line 5058
    :try_start_a
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_3b

    .line 5059
    .end local v5           #f:Ljava/io/File;
    .local v6, f:Ljava/io/File;
    :try_start_f
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_34

    .line 5060
    new-instance v9, Landroid/os/StatFs;

    invoke-direct {v9, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 5061
    .local v9, stat:Landroid/os/StatFs;
    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v2, v11

    .line 5062
    .local v2, blockSize:J
    invoke-virtual {v9}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v11

    int-to-long v0, v11

    .line 5063
    .local v0, availableBlocks:J
    mul-long v11, v0, v2

    const-wide/32 v13, 0x200000

    cmp-long v11, v11, v13

    if-lez v11, :cond_37

    const/4 v7, 0x1

    .line 5064
    .local v7, isOk:Z
    :goto_2e
    if-eqz v7, :cond_39

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_33} :catch_47

    move-result-object v8

    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v7           #isOk:Z
    .end local v9           #stat:Landroid/os/StatFs;
    :cond_34
    :goto_34
    move-object v5, v6

    .end local v6           #f:Ljava/io/File;
    .restart local v5       #f:Ljava/io/File;
    :cond_35
    move-object v10, v8

    .line 5072
    :goto_36
    return-object v10

    .line 5063
    .end local v5           #f:Ljava/io/File;
    .restart local v0       #availableBlocks:J
    .restart local v2       #blockSize:J
    .restart local v6       #f:Ljava/io/File;
    .restart local v9       #stat:Landroid/os/StatFs;
    :cond_37
    const/4 v7, 0x0

    goto :goto_2e

    .restart local v7       #isOk:Z
    :cond_39
    move-object v8, v10

    .line 5064
    goto :goto_34

    .line 5066
    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v6           #f:Ljava/io/File;
    .end local v7           #isOk:Z
    .end local v9           #stat:Landroid/os/StatFs;
    .restart local v5       #f:Ljava/io/File;
    :catch_3b
    move-exception v4

    .line 5067
    .local v4, e:Ljava/lang/Exception;
    :goto_3c
    const-string v11, "PhoneUtils"

    const-string v12, "external storage path error"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5068
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_36

    .line 5066
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #f:Ljava/io/File;
    .restart local v6       #f:Ljava/io/File;
    :catch_47
    move-exception v4

    move-object v5, v6

    .end local v6           #f:Ljava/io/File;
    .restart local v5       #f:Ljava/io/File;
    goto :goto_3c
.end method

.method static formatProviderUri(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 4188
    if-eqz p0, :cond_1c

    .line 4189
    const-string v0, "tel"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4190
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4195
    :goto_16
    return-object v0

    .line 4192
    :cond_17
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 4195
    :cond_1c
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;
    .registers 6
    .parameter "cm"
    .parameter "sub"

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v1

    .line 470
    .local v1, calls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 471
    .local v2, iter:Ljava/util/Iterator;
    const/4 v0, 0x0

    .line 473
    .local v0, c:Lcom/android/internal/telephony/Call;
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 474
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #c:Lcom/android/internal/telephony/Call;
    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 475
    .restart local v0       #c:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v3

    if-ne v3, p1, :cond_9

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_9

    move-object v3, v0

    .line 480
    :goto_26
    return-object v3

    :cond_27
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    goto :goto_26
.end method

.method public static getAlternateSub(I)I
    .registers 2
    .parameter "subscription"

    .prologue
    .line 4793
    if-nez p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static getBackgroundCalls()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 599
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 601
    .local v0, calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v4

    .line 603
    .local v4, tempCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v2

    .line 605
    .local v2, sub:I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 606
    .local v1, iter:Ljava/util/Iterator;
    const/4 v3, 0x0

    .line 608
    .local v3, tempCall:Lcom/android/internal/telephony/Call;
    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 609
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #tempCall:Lcom/android/internal/telephony/Call;
    check-cast v3, Lcom/android/internal/telephony/Call;

    .line 610
    .restart local v3       #tempCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v5

    if-ne v5, v2, :cond_1c

    .line 611
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 616
    :cond_36
    return-object v0
.end method

.method static getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;
    .registers 6
    .parameter "context"
    .parameter "c"

    .prologue
    .line 2681
    const/4 v0, 0x0

    .line 2683
    .local v0, info:Lcom/android/internal/telephony/CallerInfo;
    if-eqz p1, :cond_16

    .line 2687
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v2

    .line 2688
    .local v2, userDataObject:Ljava/lang/Object;
    instance-of v3, v2, Landroid/net/Uri;

    if-eqz v3, :cond_17

    .line 2689
    check-cast v2, Landroid/net/Uri;

    .end local v2           #userDataObject:Ljava/lang/Object;
    invoke-static {p0, v2}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 2690
    if-eqz v0, :cond_16

    .line 2691
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 2717
    :cond_16
    :goto_16
    return-object v0

    .line 2694
    .restart local v2       #userDataObject:Ljava/lang/Object;
    :cond_17
    instance-of v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v3, :cond_35

    .line 2696
    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v2           #userDataObject:Ljava/lang/Object;
    iget-object v0, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2701
    :goto_1f
    if-nez v0, :cond_16

    .line 2704
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 2708
    .local v1, number:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 2709
    invoke-static {p0, v1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 2710
    if-eqz v0, :cond_16

    .line 2711
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    goto :goto_16

    .end local v1           #number:Ljava/lang/String;
    .restart local v2       #userDataObject:Ljava/lang/Object;
    :cond_35
    move-object v0, v2

    .line 2699
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    goto :goto_1f
.end method

.method static getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .parameter "ci"
    .parameter "context"

    .prologue
    .line 3041
    const/4 v0, 0x0

    .line 3042
    .local v0, compactName:Ljava/lang/String;
    if-eqz p0, :cond_13

    .line 3043
    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 3046
    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {p1, p0, v1, v2}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 3055
    :cond_13
    :goto_13
    if-eqz v0, :cond_23

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 3060
    :cond_23
    if-eqz p0, :cond_36

    iget v1, p0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v1, v2, :cond_36

    .line 3061
    const v1, 0x7f0c0005

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3069
    :cond_32
    :goto_32
    return-object v0

    .line 3050
    :cond_33
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto :goto_13

    .line 3062
    :cond_36
    if-eqz p0, :cond_46

    iget v1, p0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne v1, v2, :cond_46

    .line 3063
    const v1, 0x7f0c0006

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_32

    .line 3065
    :cond_46
    const v1, 0x7f0c0004

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_32
.end method

.method public static getFgCallConnections(Lcom/android/internal/telephony/CallManager;I)Ljava/util/List;
    .registers 6
    .parameter "cm"
    .parameter "sub"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/CallManager;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 441
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 442
    .local v2, p:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 444
    .local v0, c:Lcom/android/internal/telephony/Call;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v1, emptyConnections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v0, :cond_17

    .line 447
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 450
    .end local v1           #emptyConnections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    :cond_17
    return-object v1
.end method

.method public static getFgCallLatestConnection(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Connection;
    .registers 5
    .parameter "cm"
    .parameter "sub"

    .prologue
    .line 456
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 457
    .local v1, p:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 459
    .local v0, c:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_13

    .line 460
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 463
    :goto_12
    return-object v2

    :cond_13
    const/4 v2, 0x0

    goto :goto_12
.end method

.method public static getFirstActiveBgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;
    .registers 6
    .parameter "cm"
    .parameter "sub"

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v1

    .line 516
    .local v1, calls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 517
    .local v2, iter:Ljava/util/Iterator;
    const/4 v0, 0x0

    .line 519
    .local v0, c:Lcom/android/internal/telephony/Call;
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 520
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #c:Lcom/android/internal/telephony/Call;
    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 521
    .restart local v0       #c:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v3

    if-ne v3, p1, :cond_9

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_9

    move-object v3, v0

    .line 526
    :goto_26
    return-object v3

    :cond_27
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    goto :goto_26
.end method

.method public static getFirstRingingCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;
    .registers 6
    .parameter "cm"
    .parameter "sub"

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getRingingCalls()Ljava/util/List;

    move-result-object v1

    .line 499
    .local v1, calls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 500
    .local v2, iter:Ljava/util/Iterator;
    const/4 v0, 0x0

    .line 502
    .local v0, c:Lcom/android/internal/telephony/Call;
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 503
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #c:Lcom/android/internal/telephony/Call;
    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 504
    .restart local v0       #c:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v3

    if-ne v3, p1, :cond_9

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_9

    move-object v3, v0

    .line 509
    :goto_26
    return-object v3

    :cond_27
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    goto :goto_26
.end method

.method public static getForegroundCalls()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 578
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 580
    .local v0, calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v4

    .line 582
    .local v4, tempCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v2

    .line 584
    .local v2, sub:I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 585
    .local v1, iter:Ljava/util/Iterator;
    const/4 v3, 0x0

    .line 587
    .local v3, tempCall:Lcom/android/internal/telephony/Call;
    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 588
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #tempCall:Lcom/android/internal/telephony/Call;
    check-cast v3, Lcom/android/internal/telephony/Call;

    .line 589
    .restart local v3       #tempCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v5

    if-ne v5, v2, :cond_1c

    .line 590
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 595
    :cond_36
    return-object v0
.end method

.method public static getFormattedFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 11
    .parameter "path"
    .parameter "recoredFile"

    .prologue
    .line 5149
    const-string v3, "PhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupPathFileName()->recoredFile="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5151
    .local v2, rawFile:Ljava/lang/String;
    const-string v3, "PhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupPathFileName()->rawFile="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5154
    const/4 v0, 0x0

    .line 5155
    .local v0, f:Ljava/io/File;
    const/4 v1, 0x0

    .line 5159
    .local v1, i:I
    :cond_49
    new-instance v0, Ljava/io/File;

    .end local v0           #f:Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%s.amr"

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    if-nez v1, :cond_ac

    const-string v3, ""

    :goto_5e
    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5160
    .restart local v0       #f:Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    .line 5161
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_49

    .line 5162
    const-string v3, "PhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupPathFileName()->f="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5163
    const-string v3, "PhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupPathFileName()->f.absolutePath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5165
    return-object v0

    .line 5159
    .end local v0           #f:Ljava/io/File;
    :cond_ac
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5e
.end method

.method private static getIMSPhone(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Phone;
    .registers 5
    .parameter "cm"

    .prologue
    .line 4307
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 4308
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    .line 4317
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :goto_1b
    return-object v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public static getImageResourceForState(ILcom/android/phone/PhoneApp$CallState;)I
    .registers 3
    .parameter "subscription"
    .parameter "state"

    .prologue
    .line 4767
    sget-object v0, Lcom/android/phone/PhoneApp$CallState;->RINGING:Lcom/android/phone/PhoneApp$CallState;

    if-ne p1, v0, :cond_e

    .line 4768
    if-nez p0, :cond_a

    .line 4769
    const v0, 0x7f020072

    .line 4787
    :goto_9
    return v0

    .line 4771
    :cond_a
    const v0, 0x7f020075

    goto :goto_9

    .line 4773
    :cond_e
    sget-object v0, Lcom/android/phone/PhoneApp$CallState;->HOLD:Lcom/android/phone/PhoneApp$CallState;

    if-ne p1, v0, :cond_1c

    .line 4774
    if-nez p0, :cond_18

    .line 4775
    const v0, 0x7f020071

    goto :goto_9

    .line 4777
    :cond_18
    const v0, 0x7f020074

    goto :goto_9

    .line 4779
    :cond_1c
    sget-object v0, Lcom/android/phone/PhoneApp$CallState;->DIALING:Lcom/android/phone/PhoneApp$CallState;

    if-ne p1, v0, :cond_2a

    .line 4780
    if-nez p0, :cond_26

    .line 4781
    const v0, 0x7f020073

    goto :goto_9

    .line 4783
    :cond_26
    const v0, 0x7f020076

    goto :goto_9

    .line 4787
    :cond_2a
    const/4 v0, -0x1

    goto :goto_9
.end method

.method static getModemType(I)I
    .registers 2
    .parameter "phoneType"

    .prologue
    const/4 v0, 0x1

    .line 4813
    if-ne p0, v0, :cond_4

    .line 4814
    const/4 v0, 0x2

    .line 4816
    :cond_4
    return v0
.end method

.method static getMute()Z
    .registers 5

    .prologue
    .line 3410
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 3412
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 3414
    .local v2, routeToAudioManager:Z
    if-eqz v2, :cond_22

    .line 3415
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 3417
    .local v1, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v1}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v3

    .line 3419
    .end local v1           #audioManager:Landroid/media/AudioManager;
    :goto_21
    return v3

    :cond_22
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getMute()Z

    move-result v3

    goto :goto_21
.end method

.method static getMute(I)Z
    .registers 13
    .parameter "subscription"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3427
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 3428
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0, p0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    .line 3429
    .local v6, phone:Lcom/android/internal/telephony/Phone;
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 3431
    .local v3, cm:Lcom/android/internal/telephony/CallManager;
    iget-object v10, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f08000b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 3433
    .local v7, routeToAudioManager:Z
    if-eqz v7, :cond_36

    .line 3434
    iget-object v10, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v11, "audio"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 3438
    .local v1, audioManager:Landroid/media/AudioManager;
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->getModemType(I)I

    move-result v5

    .line 3440
    .local v5, modemType:I
    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->isMicrophoneMute(I)I

    move-result v10

    if-ne v8, v10, :cond_34

    .line 3450
    .end local v1           #audioManager:Landroid/media/AudioManager;
    .end local v5           #modemType:I
    :goto_33
    return v8

    .restart local v1       #audioManager:Landroid/media/AudioManager;
    .restart local v5       #modemType:I
    :cond_34
    move v8, v9

    .line 3440
    goto :goto_33

    .line 3443
    .end local v1           #audioManager:Landroid/media/AudioManager;
    .end local v5           #modemType:I
    :cond_36
    invoke-static {v3, p0}, Lcom/android/phone/PhoneUtils;->hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v8

    if-eqz v8, :cond_49

    .line 3444
    invoke-static {v3, p0}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 3445
    .local v4, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v8

    goto :goto_33

    .line 3446
    .end local v4           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_49
    invoke-static {v3, p0}, Lcom/android/phone/PhoneUtils;->hasHoldCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v8

    if-eqz v8, :cond_5c

    .line 3447
    invoke-static {v3, p0}, Lcom/android/phone/PhoneUtils;->getFirstActiveBgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 3448
    .local v2, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v8

    goto :goto_33

    .end local v2           #bgCall:Lcom/android/internal/telephony/Call;
    :cond_5c
    move v8, v9

    .line 3450
    goto :goto_33
.end method

.method static getNumberFromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .registers 6
    .parameter "context"
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
        }
    .end annotation

    .prologue
    .line 2641
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 2642
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 2646
    .local v1, scheme:Ljava/lang/String;
    const-string v3, "sip"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2647
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 2661
    :cond_14
    return-object v0

    .line 2653
    :cond_15
    invoke-static {p1, p0}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2657
    .local v0, number:Ljava/lang/String;
    const-string v3, "voicemail"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    if-eqz v0, :cond_29

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2659
    :cond_29
    new-instance v3, Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;

    invoke-direct {v3}, Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;-><init>()V

    throw v3
.end method

.method private static getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "phone"

    .prologue
    .line 5265
    instance-of v0, p0, Lcom/android/internal/telephony/PhoneProxy;

    if-eqz v0, :cond_c

    .line 5266
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    .line 5268
    .end local p0
    :cond_c
    return-object p0
.end method

.method public static getPhoneType(I)I
    .registers 2
    .parameter "subscription"

    .prologue
    .line 4797
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    return v0
.end method

.method static getProviderGatewayUri(Landroid/content/Intent;)Landroid/net/Uri;
    .registers 3
    .parameter "intent"

    .prologue
    .line 4176
    const-string v1, "com.android.phone.extra.GATEWAY_URI"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4177
    .local v0, uri:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    :goto_d
    return-object v1

    :cond_e
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_d
.end method

.method static getProviderIcon(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 4160
    const-string v3, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4161
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 4164
    .local v2, pm:Landroid/content/pm/PackageManager;
    :try_start_a
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_d} :catch_f

    move-result-object v3

    .line 4166
    :goto_e
    return-object v3

    .line 4165
    :catch_f
    move-exception v0

    .line 4166
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    goto :goto_e
.end method

.method static getProviderLabel(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 4141
    const-string v4, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4142
    .local v2, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 4145
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_b
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 4147
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_12} :catch_14

    move-result-object v4

    .line 4149
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    :goto_13
    return-object v4

    .line 4148
    :catch_14
    move-exception v0

    .line 4149
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v4, 0x0

    goto :goto_13
.end method

.method public static getRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .registers 5
    .parameter "context"
    .parameter "subscription"

    .prologue
    const/4 v0, 0x1

    .line 4803
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    if-ne p1, v0, :cond_f

    const/16 v0, 0x8

    .line 4805
    .local v0, ringtype:I
    :cond_f
    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 4807
    .local v1, settingUri:Landroid/net/Uri;
    return-object v1
.end method

.method public static getSimCardDisplayLabel(Landroid/content/Context;I)Ljava/lang/String;
    .registers 6
    .parameter "context"
    .parameter "aSubscription"

    .prologue
    const v3, 0x7f0c040c

    const v2, 0x7f0c040b

    .line 4605
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getSimCombination(Landroid/content/Context;)I

    move-result v0

    .line 4606
    .local v0, combination:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 4607
    .local v1, resources:Landroid/content/res/Resources;
    packed-switch v0, :pswitch_data_3e

    .line 4629
    const-string v2, ""

    :goto_13
    return-object v2

    .line 4610
    :pswitch_14
    if-nez p1, :cond_1e

    .line 4611
    const v2, 0x7f0c040d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_13

    .line 4613
    :cond_1e
    const v2, 0x7f0c040e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_13

    .line 4616
    :pswitch_26
    if-nez p1, :cond_2d

    .line 4617
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_13

    .line 4620
    :cond_2d
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_13

    .line 4623
    :pswitch_32
    if-nez p1, :cond_39

    .line 4624
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_13

    .line 4626
    :cond_39
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_13

    .line 4607
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_14
        :pswitch_26
        :pswitch_32
        :pswitch_14
    .end packed-switch
.end method

.method private static getSimCombination(Landroid/content/Context;)I
    .registers 9
    .parameter "context"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v5, 0x1

    .line 4635
    const-string v6, "ro.config.dsds_mode"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "cdma_gsm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 4660
    :cond_11
    :goto_11
    return v3

    .line 4638
    :cond_12
    const-string v6, "ro.config.dsds_mode"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "umts_gsm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    move v3, v4

    .line 4639
    goto :goto_11

    .line 4641
    :cond_22
    const-string v6, "phone_msim"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/MSimTelephonyManager;

    .line 4643
    .local v2, telephonyManager:Landroid/telephony/MSimTelephonyManager;
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/telephony/MSimTelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    .line 4644
    .local v0, lSIM1NetowrkType:I
    invoke-virtual {v2, v5}, Landroid/telephony/MSimTelephonyManager;->getCurrentPhoneType(I)I

    move-result v1

    .line 4645
    .local v1, lSIM2NetowrkType:I
    if-ne v0, v3, :cond_39

    if-ne v1, v3, :cond_39

    move v3, v5

    .line 4647
    goto :goto_11

    .line 4648
    :cond_39
    if-ne v0, v3, :cond_3d

    if-eq v1, v5, :cond_11

    .line 4652
    :cond_3d
    if-ne v0, v5, :cond_43

    if-ne v1, v3, :cond_43

    .line 4654
    const/4 v3, 0x3

    goto :goto_11

    .line 4656
    :cond_43
    if-ne v0, v5, :cond_49

    if-ne v1, v5, :cond_49

    move v3, v4

    .line 4658
    goto :goto_11

    .line 4660
    :cond_49
    const/4 v3, -0x1

    goto :goto_11
.end method

.method public static getSipPhoneFromUri(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;
    .registers 7
    .parameter "cm"
    .parameter "target"

    .prologue
    .line 4291
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 4292
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_8

    move-object v3, v1

    .line 4293
    check-cast v3, Lcom/android/internal/telephony/sip/SipPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/sip/SipPhone;->getSipUri()Ljava/lang/String;

    move-result-object v2

    .line 4294
    .local v2, sipUri:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 4302
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    .end local v2           #sipUri:Ljava/lang/String;
    :goto_28
    return-object v1

    :cond_29
    const/4 v1, 0x0

    goto :goto_28
.end method

.method public static getState(I)Lcom/android/internal/telephony/Phone$State;
    .registers 5
    .parameter "sub"

    .prologue
    .line 563
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    .line 564
    .local v1, state:Lcom/android/internal/telephony/Phone$State;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 566
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_15

    .line 567
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    .line 574
    :cond_14
    :goto_14
    return-object v1

    .line 568
    :cond_15
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_14

    .line 569
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_14

    .line 570
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    goto :goto_14
.end method

.method public static getStoragePath(Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 5000
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->storagePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 5001
    .local v2, storagePath:Ljava/lang/String;
    const-string v4, "PhoneUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setupPathFileName()->mStoragePath="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5002
    if-nez v2, :cond_21

    move-object v1, v3

    .line 5020
    :cond_20
    :goto_20
    return-object v1

    .line 5006
    :cond_21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/record"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5008
    .local v1, path:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5009
    .local v0, parent:Ljava/io/File;
    const-string v4, "PhoneUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setupPathFileName()->parent.exists="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5010
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_20

    .line 5012
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_20

    .line 5013
    const v4, 0x7f0c0302

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move-object v1, v3

    .line 5016
    goto :goto_20
.end method

.method static handleHeadsetHook(Lcom/android/internal/telephony/Phone;Landroid/view/KeyEvent;)Z
    .registers 14
    .parameter "phone"
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3563
    sget-boolean v9, Lcom/android/phone/PhoneUtils;->mIsHeadsetClicked:Z

    if-nez v9, :cond_80

    .line 3564
    sput-boolean v7, Lcom/android/phone/PhoneUtils;->mIsHeadsetClicked:Z

    .line 3565
    sget-object v9, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    const-wide/16 v10, 0x3e8

    invoke-virtual {v9, v7, v10, v11}, Lcom/android/phone/PhoneUtils$ConnectionHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3568
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 3572
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v9, v10, :cond_1c

    .line 3702
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :goto_1b
    return v8

    .line 3584
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    :cond_1c
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v9

    if-nez v9, :cond_82

    move v4, v7

    .line 3585
    .local v4, hasRingingCall:Z
    :goto_27
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v9

    if-nez v9, :cond_84

    move v2, v7

    .line 3586
    .local v2, hasActiveCall:Z
    :goto_32
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v9

    if-nez v9, :cond_86

    move v3, v7

    .line 3588
    .local v3, hasHoldingCall:Z
    :goto_3d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    if-nez v9, :cond_5c

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_5c

    .line 3589
    sput-boolean v8, Lcom/android/phone/PhoneUtils;->mIsLongPressKeyHandSet:Z

    .line 3591
    sget-object v9, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v9, v8, v10, v11}, Lcom/android/phone/PhoneUtils$ConnectionHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3593
    sput-boolean v8, Lcom/android/phone/PhoneUtils;->mIsHeadsetClicked:Z

    .line 3594
    sget-object v9, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    invoke-virtual {v9, v7}, Lcom/android/phone/PhoneUtils$ConnectionHandler;->removeMessages(I)V

    .line 3598
    :cond_5c
    if-eqz v4, :cond_bc

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    if-nez v9, :cond_bc

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    if-ne v9, v7, :cond_bc

    .line 3601
    sget-object v9, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    invoke-virtual {v9, v8}, Lcom/android/phone/PhoneUtils$ConnectionHandler;->removeMessages(I)V

    .line 3605
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 3606
    .local v6, phoneType:I
    const/4 v8, 0x2

    if-eq v6, v8, :cond_79

    const/4 v8, 0x4

    if-ne v6, v8, :cond_88

    .line 3608
    :cond_79
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v2           #hasActiveCall:Z
    .end local v3           #hasHoldingCall:Z
    .end local v4           #hasRingingCall:Z
    .end local v6           #phoneType:I
    :cond_80
    :goto_80
    move v8, v7

    .line 3702
    goto :goto_1b

    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    :cond_82
    move v4, v8

    .line 3584
    goto :goto_27

    .restart local v4       #hasRingingCall:Z
    :cond_84
    move v2, v8

    .line 3585
    goto :goto_32

    .restart local v2       #hasActiveCall:Z
    :cond_86
    move v3, v8

    .line 3586
    goto :goto_3d

    .line 3609
    .restart local v3       #hasHoldingCall:Z
    .restart local v6       #phoneType:I
    :cond_88
    if-eq v6, v7, :cond_8d

    const/4 v8, 0x3

    if-ne v6, v8, :cond_a3

    .line 3611
    :cond_8d
    if-eqz v2, :cond_9b

    if-eqz v3, :cond_9b

    .line 3613
    iget-object v8, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto :goto_80

    .line 3618
    :cond_9b
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_80

    .line 3621
    :cond_a3
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected phone type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 3626
    .end local v6           #phoneType:I
    :cond_bc
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v9

    if-eqz v9, :cond_c9

    .line 3627
    sget-object v9, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    invoke-virtual {v9, v8}, Lcom/android/phone/PhoneUtils$ConnectionHandler;->removeMessages(I)V

    .line 3628
    sput-boolean v8, Lcom/android/phone/PhoneUtils;->mIsLongPressKeyHandSet:Z

    .line 3631
    :cond_c9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v9

    if-eqz v9, :cond_d5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    if-eq v7, v9, :cond_d9

    :cond_d5
    sget-boolean v9, Lcom/android/phone/PhoneUtils;->mIsLongPressKeyHandSet:Z

    if-eqz v9, :cond_ed

    .line 3636
    :cond_d9
    sget-boolean v8, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v8, :cond_e7

    .line 3637
    iget-object v8, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;I)Z

    goto :goto_80

    .line 3639
    :cond_e7
    iget-object v8, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto :goto_80

    .line 3643
    :cond_ed
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    if-ne v9, v7, :cond_80

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    if-nez v9, :cond_80

    .line 3646
    sget-object v9, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    invoke-virtual {v9, v8}, Lcom/android/phone/PhoneUtils$ConnectionHandler;->removeMessages(I)V

    .line 3648
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 3650
    .local v1, c:Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_80

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v9, v10}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_80

    .line 3653
    sget-boolean v9, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v9, :cond_13a

    .line 3654
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v9

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->getMute(I)Z

    move-result v5

    .line 3659
    .local v5, mute:Z
    :goto_124
    if-eqz v5, :cond_143

    .line 3661
    sget-boolean v9, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v9, :cond_13f

    .line 3662
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/phone/PhoneUtils;->setMute(ZI)V

    .line 3668
    :goto_131
    sput-boolean v8, Lcom/android/phone/PhoneUtils;->mIsHeadsetClicked:Z

    .line 3669
    sget-object v8, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    invoke-virtual {v8, v7}, Lcom/android/phone/PhoneUtils$ConnectionHandler;->removeMessages(I)V

    goto/16 :goto_80

    .line 3656
    .end local v5           #mute:Z
    :cond_13a
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v5

    .restart local v5       #mute:Z
    goto :goto_124

    .line 3664
    :cond_13f
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    goto :goto_131

    .line 3674
    :cond_143
    sget-boolean v9, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v9, :cond_157

    .line 3675
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v9

    invoke-static {v7, v9}, Lcom/android/phone/PhoneUtils;->setMute(ZI)V

    .line 3681
    :goto_14e
    sput-boolean v8, Lcom/android/phone/PhoneUtils;->mIsHeadsetClicked:Z

    .line 3682
    sget-object v8, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    invoke-virtual {v8, v7}, Lcom/android/phone/PhoneUtils$ConnectionHandler;->removeMessages(I)V

    goto/16 :goto_80

    .line 3677
    :cond_157
    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    goto :goto_14e
.end method

.method static hangup(Lcom/android/internal/telephony/Connection;)V
    .registers 5
    .parameter "c"

    .prologue
    .line 1473
    if-eqz p0, :cond_5

    .line 1474
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_5
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_5} :catch_6

    .line 1479
    :cond_5
    :goto_5
    return-void

    .line 1476
    :catch_6
    move-exception v0

    .line 1477
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection hangup: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method static hangup(Lcom/android/internal/telephony/Call;)Z
    .registers 9
    .parameter "call"

    .prologue
    .line 1409
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v0, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 1413
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v5

    invoke-static {v0, v5}, Lcom/android/phone/PhoneUtils;->hasHoldCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v2

    .line 1417
    .local v2, hasHeldCallOnSameSub:Z
    :try_start_12
    sget-boolean v5, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v5, :cond_3e

    .line 1419
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 1427
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    const-string v5, "- hangup(Call): regular hangup()..."

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1428
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_97
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_12 .. :try_end_22} :catch_59

    .line 1441
    .end local v3           #phone:Lcom/android/internal/telephony/Phone;
    :goto_22
    const/4 v5, 0x1

    .line 1447
    sget-boolean v6, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v6, :cond_3d

    if-nez v2, :cond_3d

    .line 1449
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v4

    .line 1450
    .local v4, sub:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v6, v4}, Lcom/android/phone/PhoneUtils;->unHoldOrUnMuteCall(Lcom/android/internal/telephony/CallManager;I)V

    .line 1453
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->resetRingingSubscription(I)V

    .line 1459
    .end local v4           #sub:I
    :cond_3d
    :goto_3d
    return v5

    .line 1431
    :cond_3e
    :try_start_3e
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_8e

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v5

    if-eqz v5, :cond_8e

    .line 1433
    const-string v5, "- hangup(Call): hangupForegroundResumeBackground..."

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1434
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/CallManager;->hangupForegroundResumeBackground(Lcom/android/internal/telephony/Call;)V
    :try_end_58
    .catchall {:try_start_3e .. :try_end_58} :catchall_97
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_3e .. :try_end_58} :catch_59

    goto :goto_22

    .line 1442
    :catch_59
    move-exception v1

    .line 1443
    .local v1, ex:Lcom/android/internal/telephony/CallStateException;
    :try_start_5a
    const-string v5, "PhoneUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Call hangup: caught "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_72
    .catchall {:try_start_5a .. :try_end_72} :catchall_97

    .line 1447
    sget-boolean v5, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v5, :cond_8c

    if-nez v2, :cond_8c

    .line 1449
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v4

    .line 1450
    .restart local v4       #sub:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v5, v4}, Lcom/android/phone/PhoneUtils;->unHoldOrUnMuteCall(Lcom/android/internal/telephony/CallManager;I)V

    .line 1453
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->resetRingingSubscription(I)V

    .line 1459
    .end local v4           #sub:I
    :cond_8c
    const/4 v5, 0x0

    goto :goto_3d

    .line 1436
    .end local v1           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_8e
    :try_start_8e
    const-string v5, "- hangup(Call): regular hangup()..."

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1437
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_96
    .catchall {:try_start_8e .. :try_end_96} :catchall_97
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_8e .. :try_end_96} :catch_59

    goto :goto_22

    .line 1447
    :catchall_97
    move-exception v5

    sget-boolean v6, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v6, :cond_b2

    if-nez v2, :cond_b2

    .line 1449
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v4

    .line 1450
    .restart local v4       #sub:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v6, v4}, Lcom/android/phone/PhoneUtils;->unHoldOrUnMuteCall(Lcom/android/internal/telephony/CallManager;I)V

    .line 1453
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->resetRingingSubscription(I)V

    .line 1455
    .end local v4           #sub:I
    :cond_b2
    throw v5
.end method

.method static hangup(Lcom/android/internal/telephony/CallManager;)Z
    .registers 6
    .parameter "cm"

    .prologue
    .line 1231
    const/4 v2, 0x0

    .line 1232
    .local v2, hungup:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 1233
    .local v3, ringing:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1234
    .local v1, fg:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1236
    .local v0, bg:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 1237
    const-string v4, "hangup(): hanging up ringing call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1238
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    .line 1255
    :goto_1c
    return v2

    .line 1239
    :cond_1d
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_2d

    .line 1240
    const-string v4, "hangup(): hanging up foreground call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1241
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    goto :goto_1c

    .line 1242
    :cond_2d
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_3d

    .line 1243
    const-string v4, "hangup(): hanging up background call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1244
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    goto :goto_1c

    .line 1251
    :cond_3d
    const-string v4, "hangup(): no active call to hang up"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_1c
.end method

.method static hangup(Lcom/android/internal/telephony/CallManager;I)Z
    .registers 9
    .parameter "cm"
    .parameter "sub"

    .prologue
    .line 1261
    const/4 v4, 0x0

    .line 1262
    .local v4, hungup:Z
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getFirstRingingCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 1263
    .local v5, ringing:Lcom/android/internal/telephony/Call;
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 1264
    .local v2, fg:Lcom/android/internal/telephony/Call;
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getFirstActiveBgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1266
    .local v1, bg:Lcom/android/internal/telephony/Call;
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-nez v6, :cond_3a

    .line 1267
    const-string v6, "hangup(): hanging up ringing call"

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1268
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    .line 1285
    :goto_1c
    sget-boolean v6, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v6, :cond_39

    if-eqz v4, :cond_39

    .line 1287
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getAlternateSub(I)I

    move-result v0

    .line 1288
    .local v0, altSub:I
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->hasCallOnSubscription(I)Z

    move-result v3

    .line 1290
    .local v3, hasCalls:Z
    if-nez v3, :cond_39

    .line 1291
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasCallOnSubscription(I)Z

    move-result v3

    .line 1292
    if-eqz v3, :cond_60

    .line 1293
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/phone/PhoneApp;->setmActiveSubscription(I)V

    .line 1304
    .end local v0           #altSub:I
    .end local v3           #hasCalls:Z
    :cond_39
    :goto_39
    return v4

    .line 1269
    :cond_3a
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-nez v6, :cond_4a

    .line 1270
    const-string v6, "hangup(): hanging up foreground call"

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1271
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    goto :goto_1c

    .line 1272
    :cond_4a
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-nez v6, :cond_5a

    .line 1273
    const-string v6, "hangup(): hanging up background call"

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1274
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    goto :goto_1c

    .line 1281
    :cond_5a
    const-string v6, "hangup(): no active call to hang up"

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_1c

    .line 1295
    .restart local v0       #altSub:I
    .restart local v3       #hasCalls:Z
    :cond_60
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->resetmActiveSubscription()V

    goto :goto_39
.end method

.method static hangupActiveCall(Lcom/android/internal/telephony/Call;)Z
    .registers 2
    .parameter "foreground"

    .prologue
    .line 1352
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    return v0
.end method

.method static hangupAllCalls(Lcom/android/internal/telephony/Phone;)Z
    .registers 6
    .parameter "phone"

    .prologue
    .line 1388
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1390
    .local v0, call:Lcom/android/internal/telephony/Call;
    :try_start_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hangupAllCalls()V
    :try_end_7
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_4 .. :try_end_7} :catch_9

    .line 1391
    const/4 v2, 0x1

    .line 1395
    :goto_8
    return v2

    .line 1392
    :catch_9
    move-exception v1

    .line 1393
    .local v1, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hangup all calls: caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1395
    const/4 v2, 0x0

    goto :goto_8
.end method

.method private static hangupDialingCallOnAltSub(Lcom/android/internal/telephony/Call;)V
    .registers 7
    .parameter "ringing"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 5203
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v2

    .line 5204
    .local v2, currentSub:I
    if-nez v2, :cond_48

    const/4 v1, 0x1

    .line 5205
    .local v1, altSub:I
    :goto_b
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 5207
    .local v0, altPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hasDialingCallImpl(I)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 5208
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 5211
    :cond_20
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v3, v1}, Lcom/android/phone/PhoneUtils;->hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 5212
    const-string v3, "PhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Hangup the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5214
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    .line 5218
    :cond_47
    return-void

    .line 5204
    .end local v0           #altPhone:Lcom/android/internal/telephony/Phone;
    .end local v1           #altSub:I
    :cond_48
    const/4 v1, 0x0

    goto :goto_b
.end method

.method static hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z
    .registers 2
    .parameter "background"

    .prologue
    .line 1357
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    return v0
.end method

.method static hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z
    .registers 6
    .parameter "phone"

    .prologue
    .line 1366
    const/4 v2, 0x0

    .line 1367
    .local v2, hungUpRingingCall:Z
    const/4 v1, 0x0

    .line 1368
    .local v1, hungUpFgCall:Z
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 1369
    .local v3, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1372
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_19

    .line 1373
    const-string v4, "hangupRingingAndActive: Hang up Ringing Call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1374
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    .line 1378
    :cond_19
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_28

    .line 1379
    const-string v4, "hangupRingingAndActive: Hang up Foreground Call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1380
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    .line 1383
    :cond_28
    if-nez v2, :cond_2c

    if-eqz v1, :cond_2e

    :cond_2c
    const/4 v4, 0x1

    :goto_2d
    return v4

    :cond_2e
    const/4 v4, 0x0

    goto :goto_2d
.end method

.method static hangupRingingCall(Lcom/android/internal/telephony/Call;)Z
    .registers 6
    .parameter "ringing"

    .prologue
    .line 1311
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 1312
    .local v1, phoneType:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 1314
    .local v2, state:Lcom/android/internal/telephony/Call$State;
    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_1a

    .line 1316
    const-string v3, "hangupRingingCall(): regular incoming call: hangup()"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1317
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    .line 1346
    :goto_19
    return v3

    .line 1318
    :cond_1a
    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_3b

    .line 1325
    const/4 v3, 0x2

    if-ne v1, v3, :cond_31

    .line 1329
    const-string v3, "hangupRingingCall(): CDMA-specific call-waiting hangup"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1330
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 1331
    .local v0, notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->sendCdmaCallWaitingReject()V

    .line 1332
    const/4 v3, 0x1

    goto :goto_19

    .line 1336
    .end local v0           #notifier:Lcom/android/phone/CallNotifier;
    :cond_31
    const-string v3, "hangupRingingCall(): call-waiting call: hangup()"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1337
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    goto :goto_19

    .line 1345
    :cond_3b
    const-string v3, "PhoneUtils"

    const-string v4, "hangupRingingCall: no INCOMING or WAITING call"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    const/4 v3, 0x0

    goto :goto_19
.end method

.method public static hasActiveCDMACall(Lcom/android/internal/telephony/CallManager;I)Z
    .registers 5
    .parameter "cm"
    .parameter "sub"

    .prologue
    .line 4993
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4994
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_17

    const/4 v1, 0x1

    :goto_16
    return v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public static hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z
    .registers 6
    .parameter "cm"
    .parameter "sub"

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v1

    .line 391
    .local v1, calls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 392
    .local v2, iter:Ljava/util/Iterator;
    const/4 v0, 0x0

    .line 394
    .local v0, c:Lcom/android/internal/telephony/Call;
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 395
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #c:Lcom/android/internal/telephony/Call;
    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 396
    .restart local v0       #c:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v3

    if-ne v3, p1, :cond_9

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_9

    .line 397
    const/4 v3, 0x1

    .line 401
    :goto_26
    return v3

    :cond_27
    const/4 v3, 0x0

    goto :goto_26
.end method

.method public static hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z
    .registers 6
    .parameter "cm"
    .parameter "sub"

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getRingingCalls()Ljava/util/List;

    move-result-object v1

    .line 408
    .local v1, calls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 409
    .local v2, iter:Ljava/util/Iterator;
    const/4 v0, 0x0

    .line 411
    .local v0, c:Lcom/android/internal/telephony/Call;
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 412
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #c:Lcom/android/internal/telephony/Call;
    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 413
    .restart local v0       #c:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v3

    if-ne v3, p1, :cond_9

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 414
    const/4 v3, 0x1

    .line 418
    :goto_26
    return v3

    :cond_27
    const/4 v3, 0x0

    goto :goto_26
.end method

.method public static hasActiveSIPCall(Lcom/android/internal/telephony/CallManager;I)Z
    .registers 5
    .parameter "cm"
    .parameter "sub"

    .prologue
    .line 4977
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4978
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1c

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1e

    :cond_1c
    const/4 v1, 0x1

    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method static hasCallOnSubscription(I)Z
    .registers 5
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4584
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4586
    .local v0, altPhone:Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_d

    .line 4598
    :cond_c
    :goto_c
    return v1

    .line 4590
    :cond_d
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    if-eqz v3, :cond_1f

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_1f

    move v1, v2

    .line 4591
    goto :goto_c

    .line 4592
    :cond_1f
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    if-eqz v3, :cond_31

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_31

    move v1, v2

    .line 4593
    goto :goto_c

    .line 4594
    :cond_31
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_c

    move v1, v2

    .line 4595
    goto :goto_c
.end method

.method public static hasDialingCallImpl(I)Z
    .registers 11
    .parameter "subscription"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 4734
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    invoke-virtual {v8, p0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 4735
    .local v5, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    if-ne v8, v6, :cond_1b

    .line 4736
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v8

    if-eqz v8, :cond_52

    .line 4754
    :cond_1a
    :goto_1a
    return v6

    .line 4739
    :cond_1b
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_52

    .line 4740
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 4741
    .local v2, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 4742
    .local v1, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_52

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 4743
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 4744
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v8

    if-nez v8, :cond_2e

    .line 4748
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->isCDMACallReallyConnected()Z

    move-result v4

    .line 4749
    .local v4, isDialCallConnected:Z
    if-eqz v4, :cond_1a

    move v6, v7

    goto :goto_1a

    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v1           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v2           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #isDialCallConnected:Z
    :cond_52
    move v6, v7

    .line 4754
    goto :goto_1a
.end method

.method public static hasDisconnectedBgCall(Lcom/android/internal/telephony/CallManager;I)Z
    .registers 7
    .parameter "cm"
    .parameter "sub"

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v1

    .line 549
    .local v1, calls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 550
    .local v2, iter:Ljava/util/Iterator;
    const/4 v0, 0x0

    .line 552
    .local v0, c:Lcom/android/internal/telephony/Call;
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 553
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #c:Lcom/android/internal/telephony/Call;
    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 554
    .restart local v0       #c:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v3

    if-ne v3, p1, :cond_9

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_9

    .line 555
    const/4 v3, 0x1

    .line 558
    :goto_28
    return v3

    :cond_29
    const/4 v3, 0x0

    goto :goto_28
.end method

.method private static final hasDisconnectedConnections(Lcom/android/internal/telephony/Call;)Z
    .registers 4
    .parameter "call"

    .prologue
    .line 3728
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 3729
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v2

    if-nez v2, :cond_8

    .line 3730
    const/4 v2, 0x1

    .line 3733
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :goto_1b
    return v2

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method static hasDisconnectedConnections(Lcom/android/internal/telephony/Phone;)Z
    .registers 2
    .parameter "phone"

    .prologue
    .line 3713
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasDisconnectedConnections(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasDisconnectedConnections(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasDisconnectedConnections(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public static hasDisconnectedFgCall(Lcom/android/internal/telephony/CallManager;I)Z
    .registers 7
    .parameter "cm"
    .parameter "sub"

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v1

    .line 533
    .local v1, calls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 534
    .local v2, iter:Ljava/util/Iterator;
    const/4 v0, 0x0

    .line 536
    .local v0, c:Lcom/android/internal/telephony/Call;
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 537
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #c:Lcom/android/internal/telephony/Call;
    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 538
    .restart local v0       #c:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v3

    if-ne v3, p1, :cond_9

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_9

    .line 539
    const/4 v3, 0x1

    .line 542
    :goto_28
    return v3

    :cond_29
    const/4 v3, 0x0

    goto :goto_28
.end method

.method public static hasHoldCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z
    .registers 6
    .parameter "cm"
    .parameter "sub"

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v1

    .line 425
    .local v1, calls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 426
    .local v2, iter:Ljava/util/Iterator;
    const/4 v0, 0x0

    .line 428
    .local v0, c:Lcom/android/internal/telephony/Call;
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 429
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #c:Lcom/android/internal/telephony/Call;
    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 430
    .restart local v0       #c:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v3

    if-ne v3, p1, :cond_9

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_9

    .line 431
    const/4 v3, 0x1

    .line 435
    :goto_26
    return v3

    :cond_27
    const/4 v3, 0x0

    goto :goto_26
.end method

.method static hasPhoneProviderExtras(Landroid/content/Intent;)Z
    .registers 5
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 4087
    if-nez p0, :cond_4

    .line 4093
    :cond_3
    :goto_3
    return v2

    .line 4090
    :cond_4
    const-string v3, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4091
    .local v1, name:Ljava/lang/String;
    const-string v3, "com.android.phone.extra.GATEWAY_URI"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4093
    .local v0, gatewayUri:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v2, 0x1

    goto :goto_3
.end method

.method static holdOrMuteCall(Lcom/android/internal/telephony/CallManager;I)V
    .registers 9
    .parameter "cm"
    .parameter "sub"

    .prologue
    .line 1088
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getAlternateSub(I)I

    move-result v0

    .line 1090
    .local v0, altSub:I
    invoke-static {p0, v0}, Lcom/android/phone/PhoneUtils;->hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v3

    .line 1091
    .local v3, hasActiveCall:Z
    invoke-static {p0, v0}, Lcom/android/phone/PhoneUtils;->hasHoldCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v4

    .line 1093
    .local v4, hasHoldCall:Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Active call in alternation is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , Hold calls in Alternate subscription is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1096
    if-eqz v3, :cond_35

    if-eqz v4, :cond_35

    .line 1099
    const/4 v5, 0x1

    invoke-static {v5, v0}, Lcom/android/phone/PhoneUtils;->setMute(ZI)V

    .line 1120
    :cond_34
    :goto_34
    return-void

    .line 1102
    :cond_35
    if-eqz v3, :cond_34

    if-nez v4, :cond_34

    .line 1105
    invoke-static {p0, v0}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1106
    .local v1, call:Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_34

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_34

    .line 1108
    :try_start_45
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/CallManager;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_34

    .line 1109
    :catch_49
    move-exception v2

    .line 1110
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34
.end method

.method public static initializeConnectionHandler(Lcom/android/internal/telephony/CallManager;)V
    .registers 5
    .parameter "cm"

    .prologue
    .line 365
    sget-object v1, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    if-nez v1, :cond_c

    .line 366
    new-instance v1, Lcom/android/phone/PhoneUtils$ConnectionHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/phone/PhoneUtils$ConnectionHandler;-><init>(Lcom/android/phone/PhoneUtils$1;)V

    sput-object v1, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    .line 370
    :cond_c
    sget-object v1, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2, p0}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 372
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.ussd.IExtendedNetworkService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhoneUtils;->ExtendedNetworkServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 377
    return-void
.end method

.method private static internalStoragePath(Landroid/content/Context;)Ljava/lang/String;
    .registers 16
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    .line 5080
    const-string v11, "internal"

    invoke-static {v11, p0}, Lcom/android/phone/PhoneUtils;->checkWhichStorageVolume(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 5081
    .local v9, path:Ljava/lang/String;
    const/4 v1, 0x0

    .line 5082
    .local v1, f:Ljava/io/File;
    if-eqz v9, :cond_51

    .line 5084
    :try_start_a
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_57

    .line 5085
    .end local v1           #f:Ljava/io/File;
    .local v2, f:Ljava/io/File;
    :try_start_f
    const-string v11, "PhoneUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[internalStoragePath()]internal storage path :: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5087
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_50

    .line 5088
    new-instance v7, Landroid/os/StatFs;

    invoke-direct {v7, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 5089
    .local v7, interSdStat:Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v5, v11

    .line 5090
    .local v5, interBlockSize:J
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v11

    int-to-long v3, v11

    .line 5091
    .local v3, interAvailableBlocks:J
    mul-long v11, v3, v5

    const-wide/32 v13, 0x200000

    cmp-long v11, v11, v13

    if-lez v11, :cond_53

    const/4 v8, 0x1

    .line 5092
    .local v8, isOk:Z
    :goto_4a
    if-eqz v8, :cond_55

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_4f} :catch_63

    move-result-object v9

    .end local v3           #interAvailableBlocks:J
    .end local v5           #interBlockSize:J
    .end local v7           #interSdStat:Landroid/os/StatFs;
    .end local v8           #isOk:Z
    :cond_50
    :goto_50
    move-object v1, v2

    .end local v2           #f:Ljava/io/File;
    .restart local v1       #f:Ljava/io/File;
    :cond_51
    move-object v10, v9

    .line 5100
    :goto_52
    return-object v10

    .line 5091
    .end local v1           #f:Ljava/io/File;
    .restart local v2       #f:Ljava/io/File;
    .restart local v3       #interAvailableBlocks:J
    .restart local v5       #interBlockSize:J
    .restart local v7       #interSdStat:Landroid/os/StatFs;
    :cond_53
    const/4 v8, 0x0

    goto :goto_4a

    .restart local v8       #isOk:Z
    :cond_55
    move-object v9, v10

    .line 5092
    goto :goto_50

    .line 5094
    .end local v2           #f:Ljava/io/File;
    .end local v3           #interAvailableBlocks:J
    .end local v5           #interBlockSize:J
    .end local v7           #interSdStat:Landroid/os/StatFs;
    .end local v8           #isOk:Z
    .restart local v1       #f:Ljava/io/File;
    :catch_57
    move-exception v0

    .line 5095
    .local v0, e:Ljava/lang/Exception;
    :goto_58
    const-string v11, "PhoneUtils"

    const-string v12, "internal sdcard error"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5096
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_52

    .line 5094
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #f:Ljava/io/File;
    .restart local v2       #f:Ljava/io/File;
    :catch_63
    move-exception v0

    move-object v1, v2

    .end local v2           #f:Ljava/io/File;
    .restart local v1       #f:Ljava/io/File;
    goto :goto_58
.end method

.method private static invokeReflectedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;)V
    .registers 12
    .parameter "className"
    .parameter "methodName"
    .parameter "receiver"
    .parameter "args"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1919
    .local p4, ctypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 1937
    :cond_4
    :goto_4
    return-void

    .line 1924
    :cond_5
    :try_start_5
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1925
    .local v3, targetClass:Ljava/lang/Class;
    invoke-virtual {v3, p1, p4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1927
    .local v1, nMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_4

    .line 1928
    invoke-virtual {v1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1929
    .local v2, o:Ljava/lang/Object;
    const-string v4, "PhoneUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invoke method::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2b} :catch_2c

    goto :goto_4

    .line 1932
    .end local v1           #nMethod:Ljava/lang/reflect/Method;
    .end local v2           #o:Ljava/lang/Object;
    .end local v3           #targetClass:Ljava/lang/Class;
    :catch_2c
    move-exception v0

    .line 1933
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "PhoneUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Occur an exception when call "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method static isConferenceCall(Lcom/android/internal/telephony/Call;)Z
    .registers 7
    .parameter "call"

    .prologue
    const/4 v4, 0x1

    .line 3094
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 3095
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 3096
    .local v2, phoneType:I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_27

    .line 3097
    iget-object v5, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v5}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v3

    .line 3098
    .local v3, state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-eq v3, v5, :cond_26

    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v3, v5, :cond_33

    iget-object v5, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v5}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v5

    if-nez v5, :cond_33

    .line 3109
    .end local v3           #state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_26
    :goto_26
    return v4

    .line 3104
    :cond_27
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 3105
    .local v1, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v1, :cond_33

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v4, :cond_26

    .line 3109
    .end local v1           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :cond_33
    const/4 v4, 0x0

    goto :goto_26
.end method

.method public static isIMSCallIntent(Ljava/lang/String;Landroid/content/Intent;)Z
    .registers 6
    .parameter "scheme"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4362
    const-string v3, "sip"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 4374
    :cond_a
    :goto_a
    return v1

    .line 4368
    :cond_b
    const-string v3, "android.phone.extra.CALL_DOMAIN"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 4371
    .local v0, callDomain:I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_a

    move v1, v2

    .line 4372
    goto :goto_a
.end method

.method public static isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z
    .registers 7
    .parameter "call"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4386
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 4390
    .local v1, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v1, :cond_e

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v4, :cond_10

    :cond_e
    move v2, v3

    .line 4414
    :goto_f
    return v2

    .line 4397
    :cond_10
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_18

    move v2, v3

    .line 4398
    goto :goto_f

    .line 4402
    :cond_18
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v0

    .line 4403
    .local v0, callDetails:Lcom/android/internal/telephony/CallDetails;
    if-nez v0, :cond_26

    move v2, v3

    .line 4405
    goto :goto_f

    .line 4410
    :cond_26
    if-eqz v0, :cond_34

    iget v2, v0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_34

    iget v2, v0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_34

    move v2, v4

    .line 4412
    goto :goto_f

    :cond_34
    move v2, v3

    .line 4414
    goto :goto_f
.end method

.method public static isIMSVideoCallActive(Lcom/android/internal/telephony/Call;)Z
    .registers 3
    .parameter "call"

    .prologue
    .line 4425
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_a

    .line 4427
    const/4 v0, 0x0

    .line 4431
    :goto_9
    return v0

    :cond_a
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    goto :goto_9
.end method

.method static isNoiseSuppressionOn(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 3287
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_f

    .line 3297
    :cond_e
    :goto_e
    return v2

    .line 3291
    :cond_f
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3292
    .local v0, audioManager:Landroid/media/AudioManager;
    const-string v3, "noise_suppression"

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3294
    .local v1, noiseSuppression:Ljava/lang/String;
    const-string v3, "off"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 3297
    const/4 v2, 0x1

    goto :goto_e
.end method

.method static isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z
    .registers 3
    .parameter "phone"

    .prologue
    .line 4246
    if-eqz p0, :cond_17

    invoke-static {p0}, Lcom/android/phone/TelephonyCapabilities;->supportsEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 4252
    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4254
    .local v0, ecmMode:Ljava/lang/String;
    if-eqz v0, :cond_17

    .line 4255
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4258
    .end local v0           #ecmMode:Ljava/lang/String;
    :goto_16
    return v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public static isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z
    .registers 2
    .parameter "state"

    .prologue
    .line 4321
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_12

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static isRealIncomingCall(Lcom/android/internal/telephony/Call$State;I)Z
    .registers 3
    .parameter "state"
    .parameter "sub"

    .prologue
    .line 4329
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_12

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0, p1}, Lcom/android/phone/PhoneUtils;->hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method static isRoutableViaGateway(Ljava/lang/String;)Z
    .registers 3
    .parameter "number"

    .prologue
    const/4 v0, 0x0

    .line 4210
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4218
    :cond_7
    :goto_7
    return v0

    .line 4213
    :cond_8
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4214
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4217
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4218
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    goto :goto_7
.end method

.method static isSpeakerOn(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 3244
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3245
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    return v1
.end method

.method static isTablet(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 4669
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method static isVoipSupported()Z
    .registers 1

    .prologue
    .line 4350
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->sVoipSupported:Z

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 4506
    const-string v0, "PhoneUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4507
    return-void
.end method

.method static mergeCalls()V
    .registers 1

    .prologue
    .line 2096
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    .line 2097
    return-void
.end method

.method static mergeCalls(I)V
    .registers 2
    .parameter "subscription"

    .prologue
    .line 2108
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0, p0}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;I)V

    .line 2109
    return-void
.end method

.method static mergeCalls(Lcom/android/internal/telephony/CallManager;)V
    .registers 7
    .parameter "cm"

    .prologue
    .line 2113
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 2114
    .local v2, phoneType:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_32

    .line 2115
    const-string v3, "mergeCalls(): CDMA..."

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2116
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2117
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v3

    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v3, v4, :cond_31

    .line 2120
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v3, v4}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 2127
    const-string v3, "- sending flash..."

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2128
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 2138
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_31
    :goto_31
    return-void

    .line 2132
    :cond_32
    :try_start_32
    const-string v3, "mergeCalls(): calling cm.conference()..."

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2133
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/CallManager;->conference(Lcom/android/internal/telephony/Call;)V
    :try_end_3e
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_32 .. :try_end_3e} :catch_3f

    goto :goto_31

    .line 2134
    :catch_3f
    move-exception v1

    .line 2135
    .local v1, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v3, "PhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mergeCalls: caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31
.end method

.method static mergeCalls(Lcom/android/internal/telephony/CallManager;I)V
    .registers 9
    .parameter "cm"
    .parameter "sub"

    .prologue
    .line 2147
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 2148
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 2150
    .local v3, phoneType:I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_36

    .line 2151
    const-string v4, "mergeCalls(): CDMA..."

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2152
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2153
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v4, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v4

    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v4, v5, :cond_35

    .line 2156
    iget-object v4, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v4, v5}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 2163
    const-string v4, "- sending flash..."

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2167
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 2183
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_35
    :goto_35
    return-void

    .line 2172
    :cond_36
    :try_start_36
    const-string v4, "mergeCalls(): calling cm.conference()..."

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2176
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {p0, v4, p1}, Lcom/android/phone/PhoneUtils;->conference(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;I)V
    :try_end_42
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_36 .. :try_end_42} :catch_43

    goto :goto_35

    .line 2179
    :catch_43
    move-exception v1

    .line 2180
    .local v1, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v4, "PhoneUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mergeCalls: caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35
.end method

.method static modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"

    .prologue
    const v4, 0x7f0c0004

    .line 4037
    if-eqz p1, :cond_7

    if-nez p2, :cond_9

    :cond_7
    move-object v1, p2

    .line 4073
    .end local p2
    .local v1, number:Ljava/lang/String;
    :goto_8
    return-object v1

    .line 4045
    .end local v1           #number:Ljava/lang/String;
    .restart local p2
    :cond_9
    const v2, 0x7f0c0225

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne p3, v2, :cond_22

    .line 4047
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 4048
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    iput v2, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 4056
    :cond_22
    iget v2, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v2, v3, :cond_30

    iget v2, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    if-eq v2, p3, :cond_44

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne p3, v2, :cond_44

    .line 4059
    :cond_30
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->checkCnapSpecialCases(Ljava/lang/String;)I

    move-result v0

    .line 4060
    .local v0, cnapSpecialCase:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_44

    .line 4062
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v0, v2, :cond_46

    .line 4063
    const v2, 0x7f0c0005

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 4069
    :cond_42
    :goto_42
    iput v0, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .end local v0           #cnapSpecialCase:I
    :cond_44
    move-object v1, p2

    .line 4073
    .end local p2
    .restart local v1       #number:Ljava/lang/String;
    goto :goto_8

    .line 4064
    .end local v1           #number:Ljava/lang/String;
    .restart local v0       #cnapSpecialCase:I
    .restart local p2
    :cond_46
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-ne v0, v2, :cond_42

    .line 4065
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_42
.end method

.method public static needShowDialog(I)Z
    .registers 16
    .parameter "Subscription"

    .prologue
    .line 636
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v12

    iget-object v12, v12, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v0

    .line 637
    .local v0, allPhone:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Phone;>;"
    const/4 v5, 0x0

    .line 638
    .local v5, conCDMASize:I
    const/4 v6, 0x0

    .line 639
    .local v6, conGSMSize:I
    const/4 v3, 0x0

    .line 640
    .local v3, cdmaCall:Lcom/android/internal/telephony/Call;
    const/4 v7, 0x0

    .line 641
    .local v7, fgCall:Lcom/android/internal/telephony/Call;
    const/4 v1, 0x0

    .line 643
    .local v1, bgCall:Lcom/android/internal/telephony/Call;
    const/4 v4, 0x0

    .line 644
    .local v4, cdmasub:I
    const/4 v9, 0x0

    .line 647
    .local v9, gsmsub:I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/Phone;

    .line 648
    .local v11, ph:Lcom/android/internal/telephony/Phone;
    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_39

    .line 649
    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 650
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    .line 652
    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v4

    goto :goto_15

    .line 654
    :cond_39
    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_15

    .line 655
    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    .line 656
    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 657
    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v8

    .line 658
    .local v8, fgCallSize:I
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    .line 659
    .local v2, bgCallSize:I
    add-int v6, v8, v2

    .line 661
    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v9

    goto :goto_15

    .line 665
    .end local v2           #bgCallSize:I
    .end local v8           #fgCallSize:I
    .end local v11           #ph:Lcom/android/internal/telephony/Phone;
    :cond_5f
    const-string v12, "PhoneUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "conCDMASize:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".conGSMSize:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    add-int v12, v5, v6

    const/4 v13, 0x2

    if-lt v12, v13, :cond_d0

    .line 675
    if-nez v5, :cond_aa

    if-ne p0, v9, :cond_aa

    .line 676
    const-string v12, "PhoneUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "conGSMSize:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".Dial GSM,don\'t show dialog "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    const/4 v12, 0x0

    .line 687
    :goto_a9
    return v12

    .line 679
    :cond_aa
    if-nez v6, :cond_ce

    if-ne p0, v4, :cond_ce

    .line 680
    const-string v12, "PhoneUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "conCDMASize:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".Dial CDMA,don\'t show dialog "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const/4 v12, 0x0

    goto :goto_a9

    .line 683
    :cond_ce
    const/4 v12, 0x1

    goto :goto_a9

    .line 687
    :cond_d0
    const/4 v12, 0x0

    goto :goto_a9
.end method

.method public static needShowTipAndShowWhich(Lcom/android/internal/telephony/Phone;)Lcom/android/phone/PhoneUtils$ShowTip;
    .registers 14
    .parameter "currentPhone"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 757
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v5

    .line 758
    .local v5, currentsub:I
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->getAlternateSub(I)I

    move-result v0

    .line 759
    .local v0, altSub:I
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    if-ne v10, v12, :cond_59

    .line 760
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v9

    .line 761
    .local v9, gsmtmpPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 762
    .local v6, fgCall:Lcom/android/internal/telephony/Call;
    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 763
    .local v1, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    .line 764
    .local v8, gsmFgConSize:I
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    .line 765
    .local v7, gsmBgConSize:I
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 766
    .local v3, cdmaCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    .line 768
    .local v2, cdmaAllConSize:I
    add-int v10, v8, v7

    if-ge v10, v12, :cond_4c

    if-lt v7, v11, :cond_46

    if-lt v2, v11, :cond_46

    if-eqz v8, :cond_4c

    :cond_46
    if-lt v8, v11, :cond_56

    if-lt v2, v11, :cond_56

    if-nez v7, :cond_56

    .line 770
    :cond_4c
    const-string v10, "PhoneUtils"

    const-string v11, " 2 GSM call ,return fg gsm call."

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    sget-object v10, Lcom/android/phone/PhoneUtils$ShowTip;->GSM_TIP:Lcom/android/phone/PhoneUtils$ShowTip;

    .line 797
    .end local v1           #bgCall:Lcom/android/internal/telephony/Call;
    .end local v2           #cdmaAllConSize:I
    .end local v3           #cdmaCall:Lcom/android/internal/telephony/Call;
    .end local v6           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v7           #gsmBgConSize:I
    .end local v8           #gsmFgConSize:I
    .end local v9           #gsmtmpPhone:Lcom/android/internal/telephony/Phone;
    :goto_55
    return-object v10

    .line 773
    .restart local v1       #bgCall:Lcom/android/internal/telephony/Call;
    .restart local v2       #cdmaAllConSize:I
    .restart local v3       #cdmaCall:Lcom/android/internal/telephony/Call;
    .restart local v6       #fgCall:Lcom/android/internal/telephony/Call;
    .restart local v7       #gsmBgConSize:I
    .restart local v8       #gsmFgConSize:I
    .restart local v9       #gsmtmpPhone:Lcom/android/internal/telephony/Phone;
    :cond_56
    sget-object v10, Lcom/android/phone/PhoneUtils$ShowTip;->NO_TIP:Lcom/android/phone/PhoneUtils$ShowTip;

    goto :goto_55

    .line 776
    .end local v1           #bgCall:Lcom/android/internal/telephony/Call;
    .end local v2           #cdmaAllConSize:I
    .end local v3           #cdmaCall:Lcom/android/internal/telephony/Call;
    .end local v6           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v7           #gsmBgConSize:I
    .end local v8           #gsmFgConSize:I
    .end local v9           #gsmtmpPhone:Lcom/android/internal/telephony/Phone;
    :cond_59
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    if-ne v10, v11, :cond_b7

    .line 777
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 778
    .local v4, cdmatmpPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 779
    .restart local v6       #fgCall:Lcom/android/internal/telephony/Call;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 780
    .restart local v1       #bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    .line 781
    .restart local v8       #gsmFgConSize:I
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    .line 782
    .restart local v7       #gsmBgConSize:I
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 783
    .restart local v3       #cdmaCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    .line 785
    .restart local v2       #cdmaAllConSize:I
    if-ge v2, v12, :cond_93

    if-nez v8, :cond_9d

    if-lt v7, v11, :cond_9d

    if-ne v2, v11, :cond_9d

    .line 786
    :cond_93
    const-string v10, "PhoneUtils"

    const-string v11, "CDMA HOLD, GSM active ,return cdma call."

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    sget-object v10, Lcom/android/phone/PhoneUtils$ShowTip;->CDMA_TIP:Lcom/android/phone/PhoneUtils$ShowTip;

    goto :goto_55

    .line 788
    :cond_9d
    if-ne v2, v11, :cond_ad

    if-lt v8, v11, :cond_ad

    if-nez v7, :cond_ad

    .line 789
    const-string v10, "PhoneUtils"

    const-string v11, "CDMA HOLD, GSM active ,return cdma call."

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    sget-object v10, Lcom/android/phone/PhoneUtils$ShowTip;->GSM_TIP:Lcom/android/phone/PhoneUtils$ShowTip;

    goto :goto_55

    .line 792
    :cond_ad
    const-string v10, "PhoneUtils"

    const-string v11, "call less than 2, normal."

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    sget-object v10, Lcom/android/phone/PhoneUtils$ShowTip;->NO_TIP:Lcom/android/phone/PhoneUtils$ShowTip;

    goto :goto_55

    .line 796
    .end local v1           #bgCall:Lcom/android/internal/telephony/Call;
    .end local v2           #cdmaAllConSize:I
    .end local v3           #cdmaCall:Lcom/android/internal/telephony/Call;
    .end local v4           #cdmatmpPhone:Lcom/android/internal/telephony/Phone;
    .end local v6           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v7           #gsmBgConSize:I
    .end local v8           #gsmFgConSize:I
    :cond_b7
    const-string v10, "PhoneUtils"

    const-string v11, "no GSM call or NO cdma call."

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    sget-object v10, Lcom/android/phone/PhoneUtils$ShowTip;->NO_TIP:Lcom/android/phone/PhoneUtils$ShowTip;

    goto :goto_55
.end method

.method static okToAddCall(Lcom/android/internal/telephony/CallManager;)Z
    .registers 12
    .parameter "cm"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3905
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    .line 3908
    .local v6, phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v10

    if-eqz v10, :cond_12

    move v8, v9

    .line 3934
    :cond_11
    :goto_11
    return v8

    .line 3912
    :cond_12
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    .line 3913
    .local v7, phoneType:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 3914
    .local v2, fgCallState:Lcom/android/internal/telephony/Call$State;
    const/4 v10, 0x2

    if-ne v7, v10, :cond_33

    .line 3918
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 3919
    .local v1, app:Lcom/android/phone/PhoneApp;
    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v10, :cond_31

    iget-object v10, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v10}, Lcom/android/phone/CdmaPhoneCallState;->getAddCallMenuStateAfterCallWaiting()Z

    move-result v10

    if-nez v10, :cond_11

    :cond_31
    move v8, v9

    goto :goto_11

    .line 3921
    .end local v1           #app:Lcom/android/phone/PhoneApp;
    :cond_33
    if-eq v7, v8, :cond_3b

    const/4 v10, 0x3

    if-eq v7, v10, :cond_3b

    const/4 v10, 0x4

    if-ne v7, v10, :cond_60

    .line 3929
    :cond_3b
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v5

    .line 3930
    .local v5, hasRingingCall:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v3

    .line 3931
    .local v3, hasActiveCall:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v4

    .line 3932
    .local v4, hasHoldingCall:Z
    if-eqz v3, :cond_5e

    if-eqz v4, :cond_5e

    move v0, v8

    .line 3934
    .local v0, allLinesTaken:Z
    :goto_4c
    if-nez v5, :cond_5c

    if-nez v0, :cond_5c

    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v10, :cond_11

    sget-object v10, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v10, :cond_11

    sget-object v10, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v10, :cond_11

    :cond_5c
    move v8, v9

    goto :goto_11

    .end local v0           #allLinesTaken:Z
    :cond_5e
    move v0, v9

    .line 3932
    goto :goto_4c

    .line 3940
    .end local v3           #hasActiveCall:Z
    .end local v4           #hasHoldingCall:Z
    .end local v5           #hasRingingCall:Z
    :cond_60
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected phone type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method static okToAddCall(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Phone;)Z
    .registers 15
    .parameter "cm"
    .parameter "reqPhone"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 3949
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v11

    invoke-static {p0, v11}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3950
    .local v0, activeFgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    .line 3952
    .local v7, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v11

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v12

    if-eq v11, v12, :cond_19

    .line 3992
    :cond_18
    :goto_18
    return v10

    .line 3958
    :cond_19
    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v11

    if-nez v11, :cond_18

    .line 3962
    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    .line 3964
    .local v8, phoneType:I
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 3966
    .local v3, fgCallState:Lcom/android/internal/telephony/Call$State;
    const/4 v11, 0x2

    if-ne v8, v11, :cond_3e

    .line 3970
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    .line 3971
    .local v2, app:Lcom/android/phone/PhoneApp;
    sget-object v11, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v11, :cond_3c

    iget-object v11, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v11}, Lcom/android/phone/CdmaPhoneCallState;->getAddCallMenuStateAfterCallWaiting()Z

    move-result v11

    if-eqz v11, :cond_3c

    :goto_3a
    move v10, v9

    goto :goto_18

    :cond_3c
    move v9, v10

    goto :goto_3a

    .line 3973
    .end local v2           #app:Lcom/android/phone/PhoneApp;
    :cond_3e
    if-eq v8, v9, :cond_43

    const/4 v11, 0x3

    if-ne v8, v11, :cond_76

    .line 3980
    :cond_43
    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v11

    invoke-static {p0, v11}, Lcom/android/phone/PhoneUtils;->hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v6

    .line 3981
    .local v6, hasRingingCall:Z
    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v11

    invoke-static {p0, v11}, Lcom/android/phone/PhoneUtils;->hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v4

    .line 3982
    .local v4, hasActiveCall:Z
    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v11

    invoke-static {p0, v11}, Lcom/android/phone/PhoneUtils;->hasHoldCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v5

    .line 3983
    .local v5, hasHoldingCall:Z
    if-eqz v4, :cond_72

    if-eqz v5, :cond_72

    move v1, v9

    .line 3985
    .local v1, allLinesTaken:Z
    :goto_60
    if-nez v6, :cond_74

    if-nez v1, :cond_74

    sget-object v11, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v11, :cond_70

    sget-object v11, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v11, :cond_70

    sget-object v11, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v11, :cond_74

    :cond_70
    :goto_70
    move v10, v9

    goto :goto_18

    .end local v1           #allLinesTaken:Z
    :cond_72
    move v1, v10

    .line 3983
    goto :goto_60

    .restart local v1       #allLinesTaken:Z
    :cond_74
    move v9, v10

    .line 3985
    goto :goto_70

    .line 3990
    .end local v1           #allLinesTaken:Z
    .end local v4           #hasActiveCall:Z
    .end local v5           #hasHoldingCall:Z
    .end local v6           #hasRingingCall:Z
    :cond_76
    const/4 v9, 0x4

    if-eq v8, v9, :cond_18

    .line 3995
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected phone type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method static okToMergeCalls(Lcom/android/internal/telephony/CallManager;)Z
    .registers 8
    .parameter "cm"

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3819
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 3820
    .local v2, phoneType:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 3822
    .local v1, bgPhoneType:I
    if-ne v2, v6, :cond_38

    .line 3823
    if-ne v1, v6, :cond_36

    .line 3828
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v5

    if-nez v5, :cond_34

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/CallManager;->canConference(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 3846
    :cond_33
    :goto_33
    return v3

    :cond_34
    move v3, v4

    .line 3828
    goto :goto_33

    :cond_36
    move v3, v4

    .line 3833
    goto :goto_33

    .line 3835
    :cond_38
    const/4 v5, 0x2

    if-ne v2, v5, :cond_53

    .line 3837
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 3838
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v5, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v5}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v5

    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v5, v6, :cond_51

    iget-object v5, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v5}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v5

    if-eqz v5, :cond_33

    :cond_51
    move v3, v4

    goto :goto_33

    .line 3846
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_53
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v5

    if-nez v5, :cond_6f

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v5

    if-eqz v5, :cond_6f

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v5

    if-eqz v5, :cond_6f

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/CallManager;->canConference(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-nez v5, :cond_33

    :cond_6f
    move v3, v4

    goto :goto_33
.end method

.method static okToMergeCalls(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Phone;)Z
    .registers 12
    .parameter "cm"
    .parameter "reqPhone"

    .prologue
    const/4 v9, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3858
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v5

    .line 3859
    .local v5, sub:I
    invoke-static {p0, v5}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 3860
    .local v3, fgPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 3861
    .local v4, phoneType:I
    invoke-static {p0, v5}, Lcom/android/phone/PhoneUtils;->getFirstActiveBgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 3869
    .local v2, bgPhoneType:I
    if-eq v4, v9, :cond_23

    if-ne v2, v9, :cond_25

    :cond_23
    move v6, v7

    .line 3889
    :cond_24
    :goto_24
    return v6

    .line 3876
    :cond_25
    const/4 v8, 0x2

    if-ne v4, v8, :cond_40

    .line 3878
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 3879
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v8, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v8}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v8

    sget-object v9, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v8, v9, :cond_3e

    iget-object v8, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v8}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v8

    if-eqz v8, :cond_24

    :cond_3e
    move v6, v7

    goto :goto_24

    .line 3887
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_40
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3889
    .local v1, bgCall:Lcom/android/internal/telephony/Call;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v8

    invoke-static {p0, v8}, Lcom/android/phone/PhoneUtils;->hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v8

    if-nez v8, :cond_68

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v8

    invoke-static {p0, v8}, Lcom/android/phone/PhoneUtils;->hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v8

    if-eqz v8, :cond_68

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v8

    invoke-static {p0, v8}, Lcom/android/phone/PhoneUtils;->hasHoldCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v8

    if-eqz v8, :cond_68

    invoke-static {p0, v1, v5}, Lcom/android/phone/PhoneUtils;->canConference(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;I)Z

    move-result v8

    if-nez v8, :cond_24

    :cond_68
    move v6, v7

    goto :goto_24
.end method

.method static okToSwapCalls(Lcom/android/internal/telephony/CallManager;)Z
    .registers 7
    .parameter "cm"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3745
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 3746
    .local v1, phoneType:I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1e

    .line 3749
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 3750
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v4, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v4

    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v4, v5, :cond_1c

    .line 3760
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_1b
    :goto_1b
    return v2

    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    :cond_1c
    move v2, v3

    .line 3750
    goto :goto_1b

    .line 3752
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_1e
    if-eq v1, v2, :cond_26

    const/4 v4, 0x3

    if-eq v1, v4, :cond_26

    const/4 v4, 0x4

    if-ne v1, v4, :cond_46

    .line 3760
    :cond_26
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v4

    if-nez v4, :cond_44

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_44

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_1b

    :cond_44
    move v2, v3

    goto :goto_1b

    .line 3764
    :cond_46
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static okToSwapCalls(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Phone;)Z
    .registers 12
    .parameter "cm"
    .parameter "reqPhone"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3773
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v5

    .line 3774
    .local v5, sub:I
    invoke-static {p0, v5}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 3775
    .local v2, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 3776
    .local v3, fgPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 3784
    .local v4, phoneType:I
    const/4 v8, 0x2

    if-ne v4, v8, :cond_26

    .line 3787
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 3788
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v8, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v8}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v8

    sget-object v9, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v8, v9, :cond_24

    .line 3804
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_23
    :goto_23
    return v6

    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    :cond_24
    move v6, v7

    .line 3788
    goto :goto_23

    .line 3790
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_26
    if-eq v4, v6, :cond_2e

    const/4 v8, 0x3

    if-eq v4, v8, :cond_2e

    const/4 v8, 0x4

    if-ne v4, v8, :cond_5a

    .line 3798
    :cond_2e
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3800
    .local v1, bgCall:Lcom/android/internal/telephony/Call;
    if-nez v1, :cond_36

    move v6, v7

    .line 3801
    goto :goto_23

    .line 3804
    :cond_36
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v8

    invoke-static {p0, v8}, Lcom/android/phone/PhoneUtils;->hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v8

    if-nez v8, :cond_58

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v8

    invoke-static {p0, v8}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_58

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_23

    :cond_58
    move v6, v7

    goto :goto_23

    .line 3808
    .end local v1           #bgCall:Lcom/android/internal/telephony/Call;
    :cond_5a
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static pickPhoneBasedOnNumber(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/internal/telephony/Phone;
    .registers 7
    .parameter "cm"
    .parameter "scheme"
    .parameter "number"
    .parameter "primarySipUri"
    .parameter "subscription"

    .prologue
    .line 4275
    if-eqz p3, :cond_9

    .line 4276
    invoke-static {p0, p3}, Lcom/android/phone/PhoneUtils;->getSipPhoneFromUri(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4277
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_9

    .line 4287
    .end local v0           #phone:Lcom/android/internal/telephony/Phone;
    :cond_8
    :goto_8
    return-object v0

    .line 4282
    :cond_9
    const-string v1, "sip"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 4283
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getIMSPhone(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4284
    .restart local v0       #phone:Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_8

    .line 4287
    .end local v0           #phone:Lcom/android/internal/telephony/Phone;
    :cond_17
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_8
.end method

.method public static placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;)I
    .registers 13
    .parameter "context"
    .parameter "phone"
    .parameter "number"
    .parameter "contactRef"
    .parameter "isEmergencyCall"
    .parameter "gatewayUri"

    .prologue
    .line 1632
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;I)I

    move-result v0

    return v0
.end method

.method public static placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;I)I
    .registers 29
    .parameter "context"
    .parameter "phone"
    .parameter "number"
    .parameter "contactRef"
    .parameter "isEmergencyCall"
    .parameter "gatewayUri"
    .parameter "callType"

    .prologue
    .line 1664
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    .line 1666
    .local v2, app:Lcom/android/phone/PhoneApp;
    const/16 v17, 0x0

    .line 1667
    .local v17, useGateway:Z
    if-eqz p5, :cond_12

    if-nez p4, :cond_12

    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtils;->isRoutableViaGateway(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 1670
    const/16 v17, 0x1

    .line 1673
    :cond_12
    const/4 v15, 0x0

    .line 1676
    .local v15, status:I
    if-eqz v17, :cond_77

    .line 1679
    if-eqz p5, :cond_23

    const-string v19, "tel"

    invoke-virtual/range {p5 .. p5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_42

    .line 1680
    :cond_23
    const-string v19, "PhoneUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unsupported URL:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    const/16 v19, 0x2

    .line 1860
    :goto_41
    return v19

    .line 1689
    :cond_42
    invoke-virtual/range {p5 .. p5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v12

    .line 1695
    .local v12, numberToDial:Ljava/lang/String;
    :goto_46
    sget-boolean v19, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v19, :cond_aa

    .line 1696
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e5

    .line 1698
    const-string v19, "PhoneUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "place CDMA call,mGSMisAcitve"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-boolean v21, Lcom/android/phone/PhoneUtils;->mGSMisAcitve:Z

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    sget-boolean v19, Lcom/android/phone/PhoneUtils;->mGSMisAcitve:Z

    if-nez v19, :cond_7a

    .line 1701
    const/16 v19, 0x2

    goto :goto_41

    .line 1691
    .end local v12           #numberToDial:Ljava/lang/String;
    :cond_77
    move-object/from16 v12, p2

    .restart local v12       #numberToDial:Ljava/lang/String;
    goto :goto_46

    .line 1704
    :cond_7a
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    .line 1705
    .local v6, cdmaPhone:Lcom/android/internal/telephony/Phone;
    if-eqz v6, :cond_aa

    .line 1706
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 1707
    .local v5, cdmaCall:Lcom/android/internal/telephony/Call;
    const/4 v4, 0x0

    .line 1708
    .local v4, cdmaAllConSize:I
    sget-object v14, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 1709
    .local v14, state:Lcom/android/internal/telephony/Call$State;
    if-eqz v5, :cond_9b

    .line 1710
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v4

    .line 1711
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v14

    .line 1713
    :cond_9b
    sget-object v19, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v19

    if-ne v0, v14, :cond_dd

    if-lez v4, :cond_dd

    .line 1714
    const-string v19, "PhoneUtils"

    const-string v20, "There is one CDMA call(acitive)exist,nothing do it "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    .end local v4           #cdmaAllConSize:I
    .end local v5           #cdmaCall:Lcom/android/internal/telephony/Call;
    .end local v6           #cdmaPhone:Lcom/android/internal/telephony/Phone;
    .end local v14           #state:Lcom/android/internal/telephony/Call$State;
    :cond_aa
    :goto_aa
    :try_start_aa
    new-instance v3, Lcom/android/internal/telephony/CallDetails;

    invoke-direct {v3}, Lcom/android/internal/telephony/CallDetails;-><init>()V

    .line 1736
    .local v3, callDetails:Lcom/android/internal/telephony/CallDetails;
    move/from16 v0, p6

    iput v0, v3, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 1739
    sget-boolean v19, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v19, :cond_120

    .line 1740
    move-object/from16 v0, p1

    invoke-static {v0, v12, v3}, Lcom/android/phone/PhoneUtils;->dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/CallDetails;)Lcom/android/internal/telephony/Connection;
    :try_end_bc
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_aa .. :try_end_bc} :catch_12d

    move-result-object v7

    .line 1758
    .local v7, connection:Lcom/android/internal/telephony/Connection;
    :goto_bd
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v13

    .line 1761
    .local v13, phoneType:I
    if-nez v7, :cond_145

    .line 1762
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_143

    if-nez p5, :cond_143

    .line 1764
    const/4 v15, 0x1

    .line 1766
    sget-object v19, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    if-eqz v19, :cond_d9

    .line 1768
    :try_start_d0
    sget-object v19, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IExtendedNetworkService;->setMmiString(Ljava/lang/String;)V
    :try_end_d9
    .catch Landroid/os/RemoteException; {:try_start_d0 .. :try_end_d9} :catch_13d

    :cond_d9
    :goto_d9
    move/from16 v19, v15

    .line 1860
    goto/16 :goto_41

    .line 1716
    .end local v3           #callDetails:Lcom/android/internal/telephony/CallDetails;
    .end local v7           #connection:Lcom/android/internal/telephony/Connection;
    .end local v13           #phoneType:I
    .restart local v4       #cdmaAllConSize:I
    .restart local v5       #cdmaCall:Lcom/android/internal/telephony/Call;
    .restart local v6       #cdmaPhone:Lcom/android/internal/telephony/Phone;
    .restart local v14       #state:Lcom/android/internal/telephony/Call$State;
    :cond_dd
    const/16 v19, 0x0

    sput-boolean v19, Lcom/android/phone/PhoneUtils;->mCDMAisAcitve:Z

    .line 1717
    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtils;->registerForLineControlInfo(Lcom/android/internal/telephony/Phone;)V

    goto :goto_aa

    .line 1721
    .end local v4           #cdmaAllConSize:I
    .end local v5           #cdmaCall:Lcom/android/internal/telephony/Call;
    .end local v6           #cdmaPhone:Lcom/android/internal/telephony/Phone;
    .end local v14           #state:Lcom/android/internal/telephony/Call$State;
    :cond_e5
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_118

    .line 1723
    const-string v19, "PhoneUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "place GSM call,mCDMAisAcitve"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-boolean v21, Lcom/android/phone/PhoneUtils;->mCDMAisAcitve:Z

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    sget-boolean v19, Lcom/android/phone/PhoneUtils;->mCDMAisAcitve:Z

    if-nez v19, :cond_113

    .line 1726
    const/16 v19, 0x2

    goto/16 :goto_41

    .line 1728
    :cond_113
    const/16 v19, 0x0

    sput-boolean v19, Lcom/android/phone/PhoneUtils;->mGSMisAcitve:Z

    goto :goto_aa

    .line 1730
    :cond_118
    const-string v19, "PhoneUtils"

    const-string v20, "Third type call mode ,except GSM and  CDMA!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_aa

    .line 1742
    .restart local v3       #callDetails:Lcom/android/internal/telephony/CallDetails;
    :cond_120
    :try_start_120
    iget-object v0, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12, v3}, Lcom/android/internal/telephony/CallManager;->dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/CallDetails;)Lcom/android/internal/telephony/Connection;
    :try_end_12b
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_120 .. :try_end_12b} :catch_12d

    move-result-object v7

    .restart local v7       #connection:Lcom/android/internal/telephony/Connection;
    goto :goto_bd

    .line 1746
    .end local v3           #callDetails:Lcom/android/internal/telephony/CallDetails;
    .end local v7           #connection:Lcom/android/internal/telephony/Connection;
    :catch_12d
    move-exception v10

    .line 1750
    .local v10, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v19, "PhoneUtils"

    const-string v20, "Exception from app.mCM.dial()"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1751
    const/16 v19, 0x2

    goto/16 :goto_41

    .line 1770
    .end local v10           #ex:Lcom/android/internal/telephony/CallStateException;
    .restart local v3       #callDetails:Lcom/android/internal/telephony/CallDetails;
    .restart local v7       #connection:Lcom/android/internal/telephony/Connection;
    .restart local v13       #phoneType:I
    :catch_13d
    move-exception v9

    .line 1771
    .local v9, e:Landroid/os/RemoteException;
    const/16 v19, 0x0

    sput-object v19, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    goto :goto_d9

    .line 1775
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_143
    const/4 v15, 0x2

    goto :goto_d9

    .line 1778
    :cond_145
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v13, v0, :cond_14e

    .line 1779
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->updateCdmaCallStateOnNewOutgoingCall(Lcom/android/phone/PhoneApp;)V

    .line 1783
    :cond_14e
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v13, v0, :cond_158

    .line 1784
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->formatDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1786
    :cond_158
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1787
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1788
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1790
    if-nez p5, :cond_1d1

    .line 1796
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    const-string v8, "content"

    .line 1797
    .local v8, content:Ljava/lang/String;
    if-eqz p3, :cond_184

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_184

    .line 1798
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v18

    .line 1799
    .local v18, userDataObject:Ljava/lang/Object;
    if-nez v18, :cond_1b1

    .line 1800
    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 1835
    .end local v18           #userDataObject:Ljava/lang/Object;
    :cond_184
    :goto_184
    sget-boolean v19, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v19, :cond_203

    .line 1837
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v16

    .line 1839
    .local v16, sub:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->setmActiveSubscription(I)V

    .line 1840
    invoke-static/range {v16 .. v16}, Lcom/android/phone/PhoneUtils;->setAudioMode(I)V

    .line 1841
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->switchCallModes(Lcom/android/internal/telephony/Phone;Z)V

    .line 1851
    .end local v16           #sub:I
    :goto_1a3
    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtils;->activateSpeakerIfDocked(Lcom/android/internal/telephony/Phone;)V

    .line 1853
    sget-boolean v19, Lcom/android/phone/ipcallsetting/IPCallUtils;->IS_SUPPORT_IPCALL:Z

    if-eqz v19, :cond_d9

    .line 1855
    move-object/from16 v0, p2

    invoke-static {v7, v0}, Lcom/android/phone/ipcallsetting/IPCallUtils;->setConnectionAndPhoneNumber(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto/16 :goto_d9

    .line 1805
    .restart local v18       #userDataObject:Ljava/lang/Object;
    :cond_1b1
    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/internal/telephony/CallerInfo;

    move/from16 v19, v0

    if-eqz v19, :cond_1c2

    .line 1806
    check-cast v18, Lcom/android/internal/telephony/CallerInfo;

    .end local v18           #userDataObject:Ljava/lang/Object;
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    goto :goto_184

    .line 1808
    .restart local v18       #userDataObject:Ljava/lang/Object;
    :cond_1c2
    check-cast v18, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v18           #userDataObject:Ljava/lang/Object;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    goto :goto_184

    .line 1817
    .end local v8           #content:Ljava/lang/String;
    :cond_1d1
    const/4 v11, 0x0

    .line 1818
    .local v11, info:Lcom/android/internal/telephony/CallerInfo;
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    const-string v8, "content"

    .line 1819
    .restart local v8       #content:Ljava/lang/String;
    if-eqz p3, :cond_1f1

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1f1

    .line 1820
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v11

    .line 1826
    :cond_1f1
    if-nez v11, :cond_1fb

    .line 1827
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v11

    .line 1829
    :cond_1fb
    move-object/from16 v0, p2

    iput-object v0, v11, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1830
    invoke-virtual {v7, v11}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    goto :goto_184

    .line 1844
    .end local v11           #info:Lcom/android/internal/telephony/CallerInfo;
    :cond_203
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    goto :goto_1a3
.end method

.method private static registerForLineControlInfo(Lcom/android/internal/telephony/Phone;)V
    .registers 7
    .parameter "phone"

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1882
    sget-boolean v2, Lcom/android/phone/PhoneUtils;->mRegisteredForLineControlInfo:Z

    if-nez v2, :cond_3c

    .line 1883
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/Object;

    .line 1884
    .local v1, objs:[Ljava/lang/Object;
    sget-object v2, Lcom/android/phone/PhoneUtils;->mHandler:Landroid/os/Handler;

    aput-object v2, v1, v3

    .line 1885
    const/16 v2, 0x7d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 1886
    const/4 v2, 0x0

    aput-object v2, v1, v5

    .line 1888
    array-length v2, v1

    new-array v0, v2, [Ljava/lang/Class;

    .line 1889
    .local v0, clazzs:[Ljava/lang/Class;
    const-class v2, Landroid/os/Handler;

    aput-object v2, v0, v3

    .line 1890
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v4

    .line 1891
    const-class v2, Ljava/lang/Object;

    aput-object v2, v0, v5

    .line 1893
    const-class v2, Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "registerForLineControlInfo"

    invoke-static {v2, v3, p0, v1, v0}, Lcom/android/phone/PhoneUtils;->invokeReflectedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 1895
    const-string v2, "PhoneUtils"

    const-string v3, "Registering for Line Control Info."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    sput-boolean v4, Lcom/android/phone/PhoneUtils;->mRegisteredForLineControlInfo:Z

    .line 1899
    .end local v0           #clazzs:[Ljava/lang/Class;
    .end local v1           #objs:[Ljava/lang/Object;
    :cond_3c
    return-void
.end method

.method private static resetAndSetRingingSubscription(Lcom/android/internal/telephony/Call;)V
    .registers 6
    .parameter "ringing"

    .prologue
    .line 5170
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 5173
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->resetmRingingSubscription()V

    .line 5176
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v2

    .line 5177
    .local v2, sub:I
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->getAlternateSub(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtils;->hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v1

    .line 5178
    .local v1, hasAltRingingCall:Z
    if-eqz v1, :cond_27

    .line 5179
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier;->startIncallTone()V

    .line 5181
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->getAlternateSub(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneApp;->setmRingingSubscription(I)V

    .line 5184
    :cond_27
    return-void
.end method

.method private static resetRingingSubscription(I)V
    .registers 5
    .parameter "subscription"

    .prologue
    .line 5188
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 5189
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getAlternateSub(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v1

    .line 5190
    .local v1, hasAltRingingCall:Z
    if-eqz v1, :cond_18

    .line 5191
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getAlternateSub(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->setmRingingSubscription(I)V

    .line 5195
    :goto_17
    return-void

    .line 5193
    :cond_18
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->resetmRingingSubscription()V

    goto :goto_17
.end method

.method static restoreMuteState()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 2030
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2031
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->restoreMuteStateInternal(Lcom/android/internal/telephony/Phone;I)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method static restoreMuteState(I)Ljava/lang/Boolean;
    .registers 3
    .parameter "sub"

    .prologue
    .line 2025
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2026
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0, p0}, Lcom/android/phone/PhoneUtils;->restoreMuteStateInternal(Lcom/android/internal/telephony/Phone;I)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method private static restoreMuteStateInternal(Lcom/android/internal/telephony/Phone;I)Ljava/lang/Boolean;
    .registers 7
    .parameter "phone"
    .parameter "sub"

    .prologue
    .line 2044
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 2047
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_57

    .line 2049
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 2052
    .local v1, phoneType:I
    const/4 v2, 0x0

    .line 2058
    .local v2, shouldMute:Ljava/lang/Boolean;
    const/4 v3, 0x2

    if-eq v1, v3, :cond_15

    const/4 v3, 0x4

    if-ne v1, v3, :cond_38

    .line 2060
    :cond_15
    sget-object v3, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #shouldMute:Ljava/lang/Boolean;
    check-cast v2, Ljava/lang/Boolean;

    .line 2066
    .restart local v2       #shouldMute:Ljava/lang/Boolean;
    :cond_25
    :goto_25
    if-nez v2, :cond_29

    .line 2068
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2072
    :cond_29
    sget-boolean v3, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v3, :cond_4f

    .line 2074
    const/4 v3, -0x1

    if-ne v3, p1, :cond_47

    .line 2075
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 2090
    .end local v1           #phoneType:I
    .end local v2           #shouldMute:Ljava/lang/Boolean;
    :goto_37
    return-object v2

    .line 2062
    .restart local v1       #phoneType:I
    .restart local v2       #shouldMute:Ljava/lang/Boolean;
    :cond_38
    const/4 v3, 0x1

    if-eq v1, v3, :cond_3e

    const/4 v3, 0x3

    if-ne v1, v3, :cond_25

    .line 2064
    :cond_3e
    sget-object v3, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #shouldMute:Ljava/lang/Boolean;
    check-cast v2, Ljava/lang/Boolean;

    .restart local v2       #shouldMute:Ljava/lang/Boolean;
    goto :goto_25

    .line 2077
    :cond_47
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3, p1}, Lcom/android/phone/PhoneUtils;->setMute(ZI)V

    goto :goto_37

    .line 2081
    :cond_4f
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    goto :goto_37

    .line 2087
    .end local v1           #phoneType:I
    .end local v2           #shouldMute:Ljava/lang/Boolean;
    :cond_57
    sget-boolean v3, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v3, :cond_64

    .line 2088
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getMute(I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_37

    .line 2090
    :cond_64
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_37
.end method

.method static restoreNoiseSuppression(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 3275
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 3283
    :cond_d
    :goto_d
    return-void

    .line 3280
    :cond_e
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v0

    sget-boolean v1, Lcom/android/phone/PhoneUtils;->sIsNoiseSuppressionEnabled:Z

    if-eq v0, v1, :cond_d

    .line 3281
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->sIsNoiseSuppressionEnabled:Z

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/phone/PhoneUtils;->turnOnNoiseSuppression(Landroid/content/Context;ZZ)V

    goto :goto_d
.end method

.method static restoreSpeakerMode(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 3238
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    sget-boolean v1, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    if-eq v0, v1, :cond_e

    .line 3239
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 3241
    :cond_e
    return-void
.end method

.method static sendEmptyFlash(Lcom/android/internal/telephony/Phone;)V
    .registers 4
    .parameter "phone"

    .prologue
    .line 1946
    sget-boolean v1, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v1, :cond_8

    .line 1947
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->sendEmptyFlash_DSDA(Lcom/android/internal/telephony/Phone;)V

    .line 1959
    :cond_7
    :goto_7
    return-void

    .line 1951
    :cond_8
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 1952
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1953
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_7

    .line 1956
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_7
.end method

.method static sendEmptyFlash_DSDA(Lcom/android/internal/telephony/Phone;)V
    .registers 7
    .parameter "phone"

    .prologue
    const/4 v3, 0x1

    .line 1969
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v4

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v5

    if-ne v4, v5, :cond_48

    .line 1970
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_48

    .line 1971
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 1972
    .local v2, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_48

    .line 1975
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 1982
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v3, :cond_48

    .line 1983
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1984
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v4, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v4, :cond_48

    .line 1985
    iget-object v4, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->getCdmaFlashHold()Z

    move-result v1

    .line 1986
    .local v1, cdmaHoldState:Z
    iget-object v4, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-nez v1, :cond_49

    :goto_45
    invoke-virtual {v4, v3}, Lcom/android/phone/CdmaPhoneCallState;->setCdmaFlashHold(Z)V

    .line 1992
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #cdmaHoldState:Z
    .end local v2           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_48
    return-void

    .line 1986
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    .restart local v1       #cdmaHoldState:Z
    .restart local v2       #fgCall:Lcom/android/internal/telephony/Call;
    :cond_49
    const/4 v3, 0x0

    goto :goto_45
.end method

.method static separateCall(Lcom/android/internal/telephony/Connection;)V
    .registers 5
    .parameter "c"

    .prologue
    .line 2190
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->separate()V
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_3} :catch_4

    .line 2194
    :goto_3
    return-void

    .line 2191
    :catch_4
    move-exception v0

    .line 2192
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "separateCall: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method static setAudioMode()V
    .registers 1

    .prologue
    .line 3456
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 3457
    return-void
.end method

.method static setAudioMode(I)V
    .registers 2
    .parameter "sub"

    .prologue
    .line 3490
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0, p0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;I)V

    .line 3491
    return-void
.end method

.method static setAudioMode(Lcom/android/internal/telephony/CallManager;)V
    .registers 7
    .parameter "cm"

    .prologue
    .line 3465
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v1, v5, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    .line 3466
    .local v1, context:Landroid/content/Context;
    const-string v5, "audio"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3468
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    .local v3, modeBefore:I
    move-object v5, v1

    .line 3470
    check-cast v5, Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mSetAudioHandler:Lcom/android/phone/PhoneApp$SetAudioHandler;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp$SetAudioHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .local v4, msg:Landroid/os/Message;
    move-object v5, v1

    .line 3471
    check-cast v5, Lcom/android/phone/PhoneApp;

    const/4 v5, 0x1

    iput v5, v4, Landroid/os/Message;->what:I

    move-object v5, v1

    .line 3472
    check-cast v5, Lcom/android/phone/PhoneApp;

    iput-object p0, v5, Lcom/android/phone/PhoneApp;->mSavedCallManager:Lcom/android/internal/telephony/CallManager;

    .line 3473
    check-cast v1, Lcom/android/phone/PhoneApp;

    .end local v1           #context:Landroid/content/Context;
    iget-object v5, v1, Lcom/android/phone/PhoneApp;->mSetAudioHandler:Lcom/android/phone/PhoneApp$SetAudioHandler;

    invoke-virtual {v5, v4}, Lcom/android/phone/PhoneApp$SetAudioHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3475
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    .line 3477
    .local v2, modeAfter:I
    if-eq v3, v2, :cond_33

    .line 3484
    :cond_33
    return-void
.end method

.method static setAudioMode(Lcom/android/internal/telephony/CallManager;I)V
    .registers 12
    .parameter "cm"
    .parameter "sub"

    .prologue
    .line 3499
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v3, v8, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    .line 3500
    .local v3, context:Landroid/content/Context;
    const-string v8, "audio"

    invoke-virtual {v3, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 3502
    .local v2, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v5

    .line 3503
    .local v5, modeBefore:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    .line 3505
    .local v6, p:Lcom/android/internal/telephony/Phone;
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getAlternateSub(I)I

    move-result v1

    .line 3506
    .local v1, altSub:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 3511
    .local v0, altPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    .line 3512
    .local v7, phoneType:I
    const/4 v8, 0x1

    if-ne v7, v8, :cond_45

    .line 3513
    const-string v8, "USEDMODEM"

    const-string v9, "secondmodem"

    invoke-virtual {v2, v8, v9}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3520
    :goto_34
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/CallManager;->setAudioMode(Lcom/android/internal/telephony/Phone;)V

    .line 3522
    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v4

    .line 3526
    .local v4, modeAfter:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/android/phone/PhoneApp;->setmActiveSubscription(I)V

    .line 3528
    if-eq v5, v4, :cond_44

    .line 3535
    :cond_44
    return-void

    .line 3515
    .end local v4           #modeAfter:I
    :cond_45
    const-string v8, "USEDMODEM"

    const-string v9, "firstmodem"

    invoke-virtual {v2, v8, v9}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34
.end method

.method static setBgMute(ZI)V
    .registers 7
    .parameter "muted"
    .parameter "sub"

    .prologue
    .line 3352
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 3355
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0, p1}, Lcom/android/phone/PhoneUtils;->getFirstActiveBgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 3356
    .local v1, cn:Lcom/android/internal/telephony/Connection;
    sget-object v3, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_26

    .line 3359
    :cond_26
    sget-object v3, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 3361
    .end local v1           #cn:Lcom/android/internal/telephony/Connection;
    :cond_30
    return-void
.end method

.method static setMute(Z)V
    .registers 6
    .parameter "muted"

    .prologue
    .line 3313
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 3316
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/android/phone/PhoneUtils;->setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V

    .line 3320
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 3321
    .local v1, cn:Lcom/android/internal/telephony/Connection;
    sget-object v3, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2d

    .line 3324
    :cond_2d
    sget-object v3, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 3326
    .end local v1           #cn:Lcom/android/internal/telephony/Connection;
    :cond_37
    return-void
.end method

.method static setMute(ZI)V
    .registers 8
    .parameter "muted"
    .parameter "sub"

    .prologue
    .line 3332
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v0, v4, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 3333
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 3336
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3, p0}, Lcom/android/phone/PhoneUtils;->setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V

    .line 3340
    invoke-static {v0, p1}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 3341
    .local v1, cn:Lcom/android/internal/telephony/Connection;
    sget-object v4, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_31

    .line 3344
    :cond_31
    sget-object v4, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 3346
    .end local v1           #cn:Lcom/android/internal/telephony/Connection;
    :cond_3b
    return-void
.end method

.method private static setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V
    .registers 10
    .parameter "phone"
    .parameter "muted"

    .prologue
    const/4 v7, 0x1

    .line 3367
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 3368
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 3369
    .local v2, context:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 3371
    .local v4, routeToAudioManager:Z
    if-eqz v4, :cond_3e

    .line 3372
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 3378
    .local v1, audioManager:Landroid/media/AudioManager;
    sget-boolean v5, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v5, :cond_3a

    .line 3384
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 3385
    .local v3, phoneType:I
    if-ne v3, v7, :cond_36

    .line 3386
    const/4 v5, 0x2

    invoke-virtual {v1, v5, p1}, Landroid/media/AudioManager;->setMicrophoneMute(IZ)V

    .line 3402
    .end local v1           #audioManager:Landroid/media/AudioManager;
    .end local v3           #phoneType:I
    :goto_30
    iget-object v5, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v5}, Lcom/android/phone/NotificationMgr;->updateMuteNotification()V

    .line 3403
    return-void

    .line 3388
    .restart local v1       #audioManager:Landroid/media/AudioManager;
    .restart local v3       #phoneType:I
    :cond_36
    invoke-virtual {v1, v7, p1}, Landroid/media/AudioManager;->setMicrophoneMute(IZ)V

    goto :goto_30

    .line 3393
    .end local v3           #phoneType:I
    :cond_3a
    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    goto :goto_30

    .line 3399
    .end local v1           #audioManager:Landroid/media/AudioManager;
    :cond_3e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMuteInternal: using phone.setMute("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3400
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/Phone;->setMute(Z)V

    goto :goto_30
.end method

.method public static smartHangup()V
    .registers 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    .line 697
    const/4 v4, 0x1

    .line 698
    .local v4, curSub:I
    const/4 v0, 0x0

    .line 699
    .local v0, altSub:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v9

    .line 700
    .local v9, gsmPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 701
    .local v6, fgCall:Lcom/android/internal/telephony/Call;
    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 702
    .local v1, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    .line 703
    .local v8, gsmFgConSize:I
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    .line 704
    .local v7, gsmBgConSize:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 705
    .local v3, cdmaCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    .line 706
    .local v2, cdmaAllConSize:I
    const-string v10, "PhoneUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fggsm:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".bggsm:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".cdma:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    add-int v10, v8, v7

    if-lt v10, v14, :cond_7f

    .line 710
    const-string v10, "PhoneUtils"

    const-string v11, "2 GSM call ,hangup fg gsm."

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    .line 714
    :try_start_72
    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V
    :try_end_75
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_72 .. :try_end_75} :catch_76

    .line 739
    :cond_75
    :goto_75
    return-void

    .line 715
    :catch_76
    move-exception v5

    .line 716
    .local v5, e:Lcom/android/internal/telephony/CallStateException;
    const-string v10, "PhoneUtils"

    const-string v11, "gsmPhone.switchHoldingAndActive() failed!!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    .line 722
    .end local v5           #e:Lcom/android/internal/telephony/CallStateException;
    :cond_7f
    if-lt v2, v13, :cond_90

    if-ne v8, v13, :cond_90

    if-nez v7, :cond_90

    .line 723
    const-string v10, "PhoneUtils"

    const-string v11, "1 cdma hold, 1 gsm active,hangup gsm fg call"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    goto :goto_75

    .line 728
    :cond_90
    if-lt v2, v13, :cond_a1

    if-nez v8, :cond_a1

    if-ne v7, v13, :cond_a1

    .line 729
    const-string v10, "PhoneUtils"

    const-string v11, "1 cdma active, 1 gsm hold,hangup cdma call"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    goto :goto_75

    .line 734
    :cond_a1
    if-lt v2, v14, :cond_75

    .line 735
    const-string v10, "PhoneUtils"

    const-string v11, "2 cdma , hangup 2 cdma calls"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    goto :goto_75
.end method

.method public static smartHangupAndAnswer(Lcom/android/internal/telephony/Call;)Z
    .registers 16
    .parameter "currentPhoneCall"

    .prologue
    .line 808
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 809
    .local v5, currentPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v6

    .line 810
    .local v6, currentsub:I
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->getAlternateSub(I)I

    move-result v0

    .line 811
    .local v0, altSub:I
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_f0

    .line 812
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v12

    invoke-virtual {v12, v0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v11

    .line 813
    .local v11, gsmtmpPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    .line 814
    .local v8, fgCall:Lcom/android/internal/telephony/Call;
    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 815
    .local v1, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v10

    .line 816
    .local v10, gsmFgConSize:I
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    .line 817
    .local v9, gsmBgConSize:I
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 818
    .local v3, cdmaCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    .line 819
    .local v2, cdmaAllConSize:I
    const-string v12, "PhoneUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "smartHangupAndAnswer cdmaAllConSize:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".gsmFgConSize:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".gsmBgConSize"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    add-int v12, v10, v9

    const/4 v13, 0x2

    if-lt v12, v13, :cond_b8

    .line 823
    const-string v12, "PhoneUtils"

    const-string v13, "2 GSM call ,return fg gsm call."

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v12

    if-eqz v12, :cond_8d

    if-lez v10, :cond_8d

    .line 827
    const-string v12, "PhoneUtils"

    const-string v13, "1 GSM conference call on background and 1 active GSM call, hungup conference call"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    .line 829
    sput-object v1, Lcom/android/phone/PhoneUtils;->hangupCall:Lcom/android/internal/telephony/Call;

    .line 830
    const/4 v12, 0x0

    .line 903
    .end local v1           #bgCall:Lcom/android/internal/telephony/Call;
    .end local v2           #cdmaAllConSize:I
    .end local v3           #cdmaCall:Lcom/android/internal/telephony/Call;
    .end local v8           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v9           #gsmBgConSize:I
    .end local v10           #gsmFgConSize:I
    .end local v11           #gsmtmpPhone:Lcom/android/internal/telephony/Phone;
    :goto_8c
    return v12

    .line 835
    .restart local v1       #bgCall:Lcom/android/internal/telephony/Call;
    .restart local v2       #cdmaAllConSize:I
    .restart local v3       #cdmaCall:Lcom/android/internal/telephony/Call;
    .restart local v8       #fgCall:Lcom/android/internal/telephony/Call;
    .restart local v9       #gsmBgConSize:I
    .restart local v10       #gsmFgConSize:I
    .restart local v11       #gsmtmpPhone:Lcom/android/internal/telephony/Phone;
    :cond_8d
    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v12

    if-nez v12, :cond_ad

    .line 836
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    .line 837
    const-string v12, "PhoneUtils"

    const-string v13, "there is no dialing and alerting need to switch or hold."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :try_start_9d
    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V
    :try_end_a0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_9d .. :try_end_a0} :catch_a4

    .line 848
    :goto_a0
    sput-object v8, Lcom/android/phone/PhoneUtils;->hangupCall:Lcom/android/internal/telephony/Call;

    .line 849
    const/4 v12, 0x0

    goto :goto_8c

    .line 840
    :catch_a4
    move-exception v7

    .line 841
    .local v7, e:Lcom/android/internal/telephony/CallStateException;
    const-string v12, "PhoneUtils"

    const-string v13, "gsmtmpPhone.switchHoldingAndActive() failed!!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a0

    .line 844
    .end local v7           #e:Lcom/android/internal/telephony/CallStateException;
    :cond_ad
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    .line 845
    const-string v12, "PhoneUtils"

    const-string v13, "there is dialing and alerting not need to switch or hold."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a0

    .line 852
    :cond_b8
    const/4 v12, 0x1

    if-lt v9, v12, :cond_ce

    const/4 v12, 0x1

    if-lt v2, v12, :cond_ce

    if-nez v10, :cond_ce

    .line 853
    const-string v12, "PhoneUtils"

    const-string v13, "GSM HOLD, CDMA active ,return bg gsm call."

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    .line 855
    sput-object v1, Lcom/android/phone/PhoneUtils;->hangupCall:Lcom/android/internal/telephony/Call;

    .line 856
    const/4 v12, 0x0

    goto :goto_8c

    .line 859
    :cond_ce
    const/4 v12, 0x1

    if-lt v10, v12, :cond_e4

    const/4 v12, 0x1

    if-lt v2, v12, :cond_e4

    if-nez v9, :cond_e4

    .line 860
    const-string v12, "PhoneUtils"

    const-string v13, "CDMA HOLD, GSM active ,return cdma call."

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    .line 862
    sput-object v8, Lcom/android/phone/PhoneUtils;->hangupCall:Lcom/android/internal/telephony/Call;

    .line 863
    const/4 v12, 0x0

    goto :goto_8c

    .line 865
    :cond_e4
    const-string v12, "PhoneUtils"

    const-string v13, "call number less than 2, normal."

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const/4 v12, 0x0

    sput-object v12, Lcom/android/phone/PhoneUtils;->hangupCall:Lcom/android/internal/telephony/Call;

    .line 867
    const/4 v12, 0x0

    goto :goto_8c

    .line 868
    .end local v1           #bgCall:Lcom/android/internal/telephony/Call;
    .end local v2           #cdmaAllConSize:I
    .end local v3           #cdmaCall:Lcom/android/internal/telephony/Call;
    .end local v8           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v9           #gsmBgConSize:I
    .end local v10           #gsmFgConSize:I
    .end local v11           #gsmtmpPhone:Lcom/android/internal/telephony/Phone;
    :cond_f0
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_176

    .line 869
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v12

    invoke-virtual {v12, v0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 870
    .local v4, cdmatmpPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    .line 871
    .restart local v8       #fgCall:Lcom/android/internal/telephony/Call;
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 872
    .restart local v1       #bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v10

    .line 873
    .restart local v10       #gsmFgConSize:I
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    .line 874
    .restart local v9       #gsmBgConSize:I
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 875
    .restart local v3       #cdmaCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    .line 877
    .restart local v2       #cdmaAllConSize:I
    const/4 v12, 0x2

    if-lt v2, v12, :cond_135

    .line 878
    const-string v12, "PhoneUtils"

    const-string v13, "CDMA HOLD, GSM active ,return cdma call."

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    .line 880
    sput-object v3, Lcom/android/phone/PhoneUtils;->hangupCall:Lcom/android/internal/telephony/Call;

    .line 881
    const/4 v12, 0x0

    goto/16 :goto_8c

    .line 884
    :cond_135
    const/4 v12, 0x1

    if-ne v2, v12, :cond_152

    const/4 v12, 0x1

    if-lt v10, v12, :cond_152

    if-nez v9, :cond_152

    .line 885
    const-string v12, "PhoneUtils"

    const-string v13, "CDMA HOLD, GSM active ,return cdma call."

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    sput-object v8, Lcom/android/phone/PhoneUtils;->hangupCall:Lcom/android/internal/telephony/Call;

    .line 887
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v12

    iget-object v12, v12, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v12, p0}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    .line 888
    const/4 v12, 0x1

    goto/16 :goto_8c

    .line 891
    :cond_152
    if-nez v10, :cond_169

    const/4 v12, 0x1

    if-lt v9, v12, :cond_169

    const/4 v12, 0x1

    if-ne v2, v12, :cond_169

    .line 892
    const-string v12, "PhoneUtils"

    const-string v13, "CDMA HOLD, GSM active ,return cdma call."

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    .line 894
    sput-object v3, Lcom/android/phone/PhoneUtils;->hangupCall:Lcom/android/internal/telephony/Call;

    .line 895
    const/4 v12, 0x0

    goto/16 :goto_8c

    .line 897
    :cond_169
    const-string v12, "PhoneUtils"

    const-string v13, "call less than 2, normal."

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const/4 v12, 0x0

    sput-object v12, Lcom/android/phone/PhoneUtils;->hangupCall:Lcom/android/internal/telephony/Call;

    .line 899
    const/4 v12, 0x0

    goto/16 :goto_8c

    .line 901
    .end local v1           #bgCall:Lcom/android/internal/telephony/Call;
    .end local v2           #cdmaAllConSize:I
    .end local v3           #cdmaCall:Lcom/android/internal/telephony/Call;
    .end local v4           #cdmatmpPhone:Lcom/android/internal/telephony/Phone;
    .end local v8           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v9           #gsmBgConSize:I
    .end local v10           #gsmFgConSize:I
    :cond_176
    const-string v12, "PhoneUtils"

    const-string v13, "no GSM call or NO cdma call."

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const/4 v12, 0x0

    sput-object v12, Lcom/android/phone/PhoneUtils;->hangupCall:Lcom/android/internal/telephony/Call;

    .line 903
    const/4 v12, 0x0

    goto/16 :goto_8c
.end method

.method static startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .registers 9
    .parameter "context"
    .parameter "call"
    .parameter "listener"
    .parameter "cookie"

    .prologue
    .line 2738
    const/4 v0, 0x0

    .line 2739
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 2740
    .local v1, phoneType:I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_f

    const/4 v2, 0x4

    if-ne v1, v2, :cond_18

    .line 2742
    :cond_f
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 2750
    :goto_13
    invoke-static {p0, v0, p2, p3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v2

    return-object v2

    .line 2743
    :cond_18
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1e

    const/4 v2, 0x3

    if-ne v1, v2, :cond_23

    .line 2745
    :cond_1e
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_13

    .line 2747
    :cond_23
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .registers 14
    .parameter "context"
    .parameter "c"
    .parameter "listener"
    .parameter "cookie"

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 2761
    if-nez p1, :cond_f

    .line 2763
    new-instance v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 2764
    .local v0, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iput-object v6, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-object v1, v0

    .line 2969
    .end local v0           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .local v1, cit:Ljava/lang/Object;
    :goto_e
    return-object v1

    .line 2768
    .end local v1           #cit:Ljava/lang/Object;
    :cond_f
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v4

    .line 2804
    .local v4, userDataObject:Ljava/lang/Object;
    instance-of v5, v4, Landroid/net/Uri;

    if-eqz v5, :cond_39

    .line 2808
    new-instance v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 2809
    .restart local v0       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    new-instance v5, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v5}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    iput-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2810
    check-cast v4, Landroid/net/Uri;

    .end local v4           #userDataObject:Ljava/lang/Object;
    sget-object v5, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-static {v7, p0, v4, v5, p1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-result-object v5

    iput-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 2812
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-virtual {v5, v7, p2, p3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 2813
    iput-boolean v9, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    .line 2815
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    :goto_37
    move-object v1, v0

    .line 2969
    .restart local v1       #cit:Ljava/lang/Object;
    goto :goto_e

    .line 2819
    .end local v0           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v1           #cit:Ljava/lang/Object;
    .restart local v4       #userDataObject:Ljava/lang/Object;
    :cond_39
    if-nez v4, :cond_a0

    .line 2822
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 2841
    .local v2, number:Ljava/lang/String;
    new-instance v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 2842
    .restart local v0       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    new-instance v5, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v5}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    iput-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2846
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 2847
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v6, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v6, v6, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2849
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2850
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 2860
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9d

    .line 2863
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v6, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v6, v6, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {p0, v5, v2, v6}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 2866
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object v2, v5, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2870
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v5, v5, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v6, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v5, v6, :cond_8d

    .line 2871
    iput-boolean v8, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    .line 2889
    :goto_89
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    goto :goto_37

    .line 2874
    :cond_8d
    sget-object v5, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-static {v7, p0, v2, v5, p1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-result-object v5

    iput-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 2876
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-virtual {v5, v7, p2, p3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 2877
    iput-boolean v9, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto :goto_89

    .line 2886
    :cond_9d
    iput-boolean v8, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto :goto_89

    .line 2893
    .end local v0           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v2           #number:Ljava/lang/String;
    :cond_a0
    instance-of v5, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v5, :cond_135

    move-object v0, v4

    .line 2897
    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .line 2900
    .restart local v0       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    if-eqz v5, :cond_b1

    .line 2901
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-virtual {v5, v7, p2, p3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    goto :goto_37

    .line 2907
    :cond_b1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 2909
    .local v3, updatedNumber:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_106

    .line 2911
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 2913
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v6, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v6, v6, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2914
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2915
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 2917
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v6, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v6, v6, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {p0, v5, v3, v6}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 2920
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object v3, v5, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2928
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v5, v5, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v6, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v5, v6, :cond_f5

    .line 2929
    iput-boolean v8, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto/16 :goto_37

    .line 2931
    :cond_f5
    sget-object v5, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-static {v7, p0, v3, v5, p1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-result-object v5

    iput-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 2933
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-virtual {v5, v7, p2, p3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 2934
    iput-boolean v9, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto/16 :goto_37

    .line 2938
    :cond_106
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    if-nez v5, :cond_111

    .line 2939
    new-instance v5, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v5}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    iput-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2942
    :cond_111
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 2944
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v6, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v6, v6, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2945
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2946
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 2951
    iput-boolean v8, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto/16 :goto_37

    .line 2961
    .end local v0           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v3           #updatedNumber:Ljava/lang/String;
    :cond_135
    new-instance v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 2962
    .restart local v0       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    check-cast v4, Lcom/android/internal/telephony/CallerInfo;

    .end local v4           #userDataObject:Ljava/lang/Object;
    iput-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2963
    iput-object v6, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 2964
    iput-boolean v8, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto/16 :goto_37
.end method

.method static startNewCall(Lcom/android/internal/telephony/CallManager;)V
    .registers 5
    .parameter "cm"

    .prologue
    const/4 v3, 0x1

    .line 3136
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 3139
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->okToAddCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 3140
    const-string v2, "PhoneUtils"

    const-string v3, "startNewCall: can\'t add a new call in the current state"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3141
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    .line 3162
    :goto_15
    return-void

    .line 3146
    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 3147
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V

    .line 3150
    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 3153
    :cond_2a
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3154
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3159
    const-string v2, "add_call_mode"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3161
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_15
.end method

.method static startNewCall(Lcom/android/internal/telephony/CallManager;I)V
    .registers 7
    .parameter "cm"
    .parameter "sub"

    .prologue
    const/4 v4, 0x1

    .line 3172
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 3173
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 3176
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-static {p0, v2}, Lcom/android/phone/PhoneUtils;->okToAddCall(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 3177
    const-string v3, "PhoneUtils"

    const-string v4, "startNewCall: can\'t add a new call in the current state"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3178
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    .line 3199
    :goto_19
    return-void

    .line 3183
    :cond_1a
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 3184
    invoke-static {v2, v4}, Lcom/android/phone/PhoneUtils;->setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V

    .line 3187
    invoke-virtual {v0, v4}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 3190
    :cond_26
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3191
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3196
    const-string v3, "add_call_mode"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3198
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_19
.end method

.method private static storagePath(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .parameter "context"

    .prologue
    .line 5029
    const/4 v0, 0x0

    .line 5031
    .local v0, path:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->externalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 5033
    const-string v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storagePath()->path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5035
    if-nez v0, :cond_23

    .line 5036
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->internalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 5039
    :cond_23
    if-nez v0, :cond_34

    .line 5040
    const v1, 0x7f0c02fd

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 5045
    :cond_34
    return-object v0
.end method

.method public static switchCallModes(Lcom/android/internal/telephony/Phone;Z)V
    .registers 16
    .parameter "phone"
    .parameter "shouldChangeActivePhone"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 4825
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v5

    .line 4827
    .local v5, currentSub:I
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->getAlternateSub(I)I

    move-result v1

    .line 4829
    .local v1, altSub:I
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_86

    .line 4831
    if-eqz p1, :cond_3e

    .line 4833
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    .line 4834
    .local v7, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v12

    if-nez v12, :cond_3e

    .line 4835
    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v4

    .line 4836
    .local v4, connList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    if-ne v12, v10, :cond_6b

    .line 4838
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    .line 4839
    .local v2, app:Lcom/android/phone/PhoneApp;
    iget-object v12, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v12}, Lcom/android/phone/CdmaPhoneCallState;->getCdmaFlashHold()Z

    move-result v3

    .line 4841
    .local v3, cdmaHoldState:Z
    if-ne v10, v3, :cond_3e

    .line 4845
    :try_start_33
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 4851
    iget-object v13, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-nez v3, :cond_64

    move v12, v10

    :goto_3b
    invoke-virtual {v13, v12}, Lcom/android/phone/CdmaPhoneCallState;->setCdmaFlashHold(Z)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3e} :catch_66

    .line 4865
    .end local v2           #app:Lcom/android/phone/PhoneApp;
    .end local v3           #cdmaHoldState:Z
    .end local v4           #connList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v7           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_3e
    :goto_3e
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4866
    .local v0, altPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v12

    if-nez v12, :cond_75

    move v9, v10

    .line 4867
    .local v9, hasActiveFgCall:Z
    :goto_51
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v12

    if-nez v12, :cond_77

    move v8, v10

    .line 4869
    .local v8, hasActiveBgCall:Z
    :goto_5c
    if-eqz v9, :cond_7e

    if-nez v8, :cond_7e

    .line 4872
    :try_start_60
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_79

    .line 4929
    .end local v0           #altPhone:Lcom/android/internal/telephony/Phone;
    .end local v8           #hasActiveBgCall:Z
    .end local v9           #hasActiveFgCall:Z
    :cond_63
    :goto_63
    return-void

    .restart local v2       #app:Lcom/android/phone/PhoneApp;
    .restart local v3       #cdmaHoldState:Z
    .restart local v4       #connList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .restart local v7       #fgCall:Lcom/android/internal/telephony/Call;
    :cond_64
    move v12, v11

    .line 4851
    goto :goto_3b

    .line 4853
    :catch_66
    move-exception v6

    .line 4854
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3e

    .line 4857
    .end local v2           #app:Lcom/android/phone/PhoneApp;
    .end local v3           #cdmaHoldState:Z
    .end local v6           #e:Ljava/lang/Exception;
    :cond_6b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    if-le v12, v10, :cond_3e

    .line 4858
    invoke-static {v11, v5}, Lcom/android/phone/PhoneUtils;->setMute(ZI)V

    goto :goto_3e

    .end local v4           #connList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v7           #fgCall:Lcom/android/internal/telephony/Call;
    .restart local v0       #altPhone:Lcom/android/internal/telephony/Phone;
    :cond_75
    move v9, v11

    .line 4866
    goto :goto_51

    .restart local v9       #hasActiveFgCall:Z
    :cond_77
    move v8, v11

    .line 4867
    goto :goto_5c

    .line 4873
    .restart local v8       #hasActiveBgCall:Z
    :catch_79
    move-exception v6

    .line 4874
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_63

    .line 4876
    .end local v6           #e:Ljava/lang/Exception;
    :cond_7e
    if-eqz v9, :cond_63

    if-eqz v8, :cond_63

    .line 4877
    invoke-static {v10, v1}, Lcom/android/phone/PhoneUtils;->setMute(ZI)V

    goto :goto_63

    .line 4879
    .end local v0           #altPhone:Lcom/android/internal/telephony/Phone;
    .end local v8           #hasActiveBgCall:Z
    .end local v9           #hasActiveFgCall:Z
    :cond_86
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v12

    if-ne v12, v10, :cond_63

    .line 4880
    if-eqz p1, :cond_ab

    .line 4881
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v12

    if-nez v12, :cond_e3

    move v9, v10

    .line 4882
    .restart local v9       #hasActiveFgCall:Z
    :goto_99
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v12

    if-nez v12, :cond_e5

    move v8, v10

    .line 4884
    .restart local v8       #hasActiveBgCall:Z
    :goto_a4
    if-nez v9, :cond_ec

    if-eqz v8, :cond_ec

    .line 4887
    :try_start_a8
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_ab} :catch_e7

    .line 4897
    .end local v8           #hasActiveBgCall:Z
    .end local v9           #hasActiveFgCall:Z
    :cond_ab
    :goto_ab
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4898
    .restart local v0       #altPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    .line 4899
    .restart local v7       #fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v12

    if-nez v12, :cond_63

    .line 4900
    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v4

    .line 4901
    .restart local v4       #connList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    if-ne v12, v10, :cond_f6

    .line 4903
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    .line 4904
    .restart local v2       #app:Lcom/android/phone/PhoneApp;
    iget-object v12, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v12}, Lcom/android/phone/CdmaPhoneCallState;->getCdmaFlashHold()Z

    move-result v3

    .line 4907
    .restart local v3       #cdmaHoldState:Z
    if-nez v3, :cond_63

    .line 4911
    :try_start_d3
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 4917
    iget-object v12, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-nez v3, :cond_f4

    :goto_da
    invoke-virtual {v12, v10}, Lcom/android/phone/CdmaPhoneCallState;->setCdmaFlashHold(Z)V
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_dd} :catch_de

    goto :goto_63

    .line 4919
    :catch_de
    move-exception v6

    .line 4920
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_63

    .end local v0           #altPhone:Lcom/android/internal/telephony/Phone;
    .end local v2           #app:Lcom/android/phone/PhoneApp;
    .end local v3           #cdmaHoldState:Z
    .end local v4           #connList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_e3
    move v9, v11

    .line 4881
    goto :goto_99

    .restart local v9       #hasActiveFgCall:Z
    :cond_e5
    move v8, v11

    .line 4882
    goto :goto_a4

    .line 4888
    .restart local v8       #hasActiveBgCall:Z
    :catch_e7
    move-exception v6

    .line 4889
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_ab

    .line 4891
    .end local v6           #e:Ljava/lang/Exception;
    :cond_ec
    if-eqz v9, :cond_ab

    if-eqz v8, :cond_ab

    .line 4892
    invoke-static {v11, v5}, Lcom/android/phone/PhoneUtils;->setMute(ZI)V

    goto :goto_ab

    .end local v8           #hasActiveBgCall:Z
    .end local v9           #hasActiveFgCall:Z
    .restart local v0       #altPhone:Lcom/android/internal/telephony/Phone;
    .restart local v2       #app:Lcom/android/phone/PhoneApp;
    .restart local v3       #cdmaHoldState:Z
    .restart local v4       #connList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .restart local v7       #fgCall:Lcom/android/internal/telephony/Call;
    :cond_f4
    move v10, v11

    .line 4917
    goto :goto_da

    .line 4923
    .end local v2           #app:Lcom/android/phone/PhoneApp;
    .end local v3           #cdmaHoldState:Z
    :cond_f6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v10, :cond_63

    .line 4924
    invoke-static {v10, v1}, Lcom/android/phone/PhoneUtils;->setMute(ZI)V

    goto/16 :goto_63
.end method

.method static switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V
    .registers 6
    .parameter "heldCall"

    .prologue
    .line 1999
    const-string v2, "switchHoldingAndActive()..."

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2001
    :try_start_5
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 2004
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    sget-boolean v2, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v2, :cond_17

    .line 2007
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 2022
    .end local v0           #cm:Lcom/android/internal/telephony/CallManager;
    :goto_16
    return-void

    .line 2009
    .restart local v0       #cm:Lcom/android/internal/telephony/CallManager;
    :cond_17
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 2011
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CallManager;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 2016
    :goto_28
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V
    :try_end_2b
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_5 .. :try_end_2b} :catch_2c

    goto :goto_16

    .line 2019
    .end local v0           #cm:Lcom/android/internal/telephony/CallManager;
    :catch_2c
    move-exception v1

    .line 2020
    .local v1, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchHoldingAndActive: caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 2014
    .end local v1           #ex:Lcom/android/internal/telephony/CallStateException;
    .restart local v0       #cm:Lcom/android/internal/telephony/CallManager;
    :cond_46
    :try_start_46
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V
    :try_end_49
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_46 .. :try_end_49} :catch_2c

    goto :goto_28
.end method

.method static turnOnNoiseSuppression(Landroid/content/Context;ZZ)V
    .registers 6
    .parameter "context"
    .parameter "flag"
    .parameter "store"

    .prologue
    .line 3251
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3253
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_16

    .line 3270
    :cond_15
    :goto_15
    return-void

    .line 3257
    :cond_16
    if-eqz p1, :cond_22

    .line 3258
    const-string v1, "noise_suppression=auto"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 3264
    :goto_1d
    if-eqz p2, :cond_15

    .line 3265
    sput-boolean p1, Lcom/android/phone/PhoneUtils;->sIsNoiseSuppressionEnabled:Z

    goto :goto_15

    .line 3260
    :cond_22
    const-string v1, "noise_suppression=off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_1d
.end method

.method static turnOnSpeaker(Landroid/content/Context;ZZ)V
    .registers 7
    .parameter "context"
    .parameter "flag"
    .parameter "store"

    .prologue
    .line 3204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "turnOnSpeaker(flag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", store="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3205
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 3207
    .local v0, app:Lcom/android/phone/PhoneApp;
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 3208
    .local v1, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 3211
    if-eqz p2, :cond_39

    .line 3212
    sput-boolean p1, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    .line 3216
    :cond_39
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2, p1}, Lcom/android/phone/NotificationMgr;->updateSpeakerNotification(Z)V

    .line 3222
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 3225
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 3227
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/CallManager;->setEchoSuppressionEnabled(Z)V

    .line 3228
    return-void
.end method

.method static unHoldOrUnMuteCall(Lcom/android/internal/telephony/CallManager;I)V
    .registers 15
    .parameter "cm"
    .parameter "sub"

    .prologue
    .line 1131
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    .line 1132
    .local v7, phone:Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    .line 1134
    .local v2, app:Lcom/android/phone/PhoneApp;
    if-nez v7, :cond_17

    .line 1135
    const/4 v5, 0x0

    .line 1142
    .local v5, hasCall:Z
    :goto_f
    if-eqz v5, :cond_39

    .line 1143
    const-string v11, "There is a call in the current subscription hence not doing anything"

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1215
    :cond_16
    :goto_16
    return-void

    .line 1137
    .end local v5           #hasCall:Z
    :cond_17
    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v11

    if-eqz v11, :cond_35

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v11

    if-eqz v11, :cond_35

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v11

    if-nez v11, :cond_37

    :cond_35
    const/4 v5, 0x1

    .restart local v5       #hasCall:Z
    :goto_36
    goto :goto_f

    .end local v5           #hasCall:Z
    :cond_37
    const/4 v5, 0x0

    goto :goto_36

    .line 1149
    .restart local v5       #hasCall:Z
    :cond_39
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getAlternateSub(I)I

    move-result v1

    .line 1150
    .local v1, altSub:I
    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v11

    if-eq v11, v1, :cond_16

    .line 1156
    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getInCallScreen_DSDA()Lcom/android/phone/InCallScreen_DSDA;

    move-result-object v6

    .line 1157
    .local v6, inCallScreenDSDA:Lcom/android/phone/InCallScreen_DSDA;
    if-nez v6, :cond_4f

    .line 1158
    const-string v11, "inCallScreenDSDA is null; not yet created, just bail out"

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_16

    .line 1161
    :cond_4f
    invoke-virtual {v6, v1}, Lcom/android/phone/InCallScreen_DSDA;->getFragmentForSubscription(I)Lcom/android/phone/InCallFragment;

    move-result-object v4

    .line 1163
    .local v4, fragment:Lcom/android/phone/InCallFragment;
    if-eqz v4, :cond_16

    .line 1167
    invoke-virtual {v4}, Lcom/android/phone/InCallFragment;->getmInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/InCallControlState;->getUserHold()Z

    move-result v9

    .line 1168
    .local v9, userHold:Z
    invoke-virtual {v4}, Lcom/android/phone/InCallFragment;->getmInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/InCallControlState;->getUserMute()Z

    move-result v10

    .line 1171
    .local v10, userMute:Z
    invoke-static {p0, v1}, Lcom/android/phone/PhoneUtils;->hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v11

    if-eqz v11, :cond_ad

    invoke-static {p0, v1}, Lcom/android/phone/PhoneUtils;->hasHoldCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v11

    if-eqz v11, :cond_ad

    const/4 v8, 0x1

    .line 1174
    .local v8, toCheckMute:Z
    :goto_72
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->getPhoneType(I)I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_85

    .line 1175
    invoke-static {p0, v1}, Lcom/android/phone/PhoneUtils;->getFgCallConnections(Lcom/android/internal/telephony/CallManager;I)Ljava/util/List;

    move-result-object v3

    .line 1176
    .local v3, connList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_af

    .line 1177
    const/4 v8, 0x1

    .line 1183
    .end local v3           #connList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :cond_85
    :goto_85
    if-eqz v8, :cond_b1

    .line 1184
    if-nez v10, :cond_16

    .line 1185
    const-string v11, "There is a call which is forced muted, unmuting it now"

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1188
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unmuting the active call.. on sub "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1190
    const/4 v11, 0x0

    invoke-static {v11, v1}, Lcom/android/phone/PhoneUtils;->setMute(ZI)V

    .line 1191
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setAudioMode(I)V

    goto/16 :goto_16

    .line 1171
    .end local v8           #toCheckMute:Z
    :cond_ad
    const/4 v8, 0x0

    goto :goto_72

    .line 1179
    .restart local v3       #connList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .restart local v8       #toCheckMute:Z
    :cond_af
    const/4 v8, 0x0

    goto :goto_85

    .line 1193
    .end local v3           #connList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :cond_b1
    if-nez v9, :cond_16

    .line 1196
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->getPhoneType(I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_d5

    .line 1197
    invoke-static {p0, v1}, Lcom/android/phone/PhoneUtils;->hasHoldCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 1199
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1200
    .local v0, altPhone:Lcom/android/internal/telephony/Phone;
    const/4 v11, 0x0

    invoke-static {v11, v1}, Lcom/android/phone/PhoneUtils;->setMute(ZI)V

    .line 1201
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setAudioMode(I)V

    .line 1202
    const/4 v11, 0x1

    invoke-static {v0, v11}, Lcom/android/phone/PhoneUtils;->switchCallModes(Lcom/android/internal/telephony/Phone;Z)V

    goto/16 :goto_16

    .line 1204
    .end local v0           #altPhone:Lcom/android/internal/telephony/Phone;
    :cond_d5
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->getPhoneType(I)I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_16

    .line 1205
    invoke-static {p0, v1}, Lcom/android/phone/PhoneUtils;->hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 1206
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1207
    .restart local v0       #altPhone:Lcom/android/internal/telephony/Phone;
    const/4 v11, 0x0

    invoke-static {v11, v1}, Lcom/android/phone/PhoneUtils;->setMute(ZI)V

    .line 1208
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setAudioMode(I)V

    .line 1209
    const/4 v11, 0x1

    invoke-static {v0, v11}, Lcom/android/phone/PhoneUtils;->switchCallModes(Lcom/android/internal/telephony/Phone;Z)V

    goto/16 :goto_16
.end method

.method private static unregisterForLineControllInfo(Lcom/android/internal/telephony/Phone;)V
    .registers 6
    .parameter "phone"

    .prologue
    const/4 v4, 0x0

    .line 1902
    sget-boolean v2, Lcom/android/phone/PhoneUtils;->mRegisteredForLineControlInfo:Z

    if-eqz v2, :cond_27

    .line 1903
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/Object;

    .line 1904
    .local v1, objs:[Ljava/lang/Object;
    sget-object v2, Lcom/android/phone/PhoneUtils;->mHandler:Landroid/os/Handler;

    aput-object v2, v1, v4

    .line 1906
    array-length v2, v1

    new-array v0, v2, [Ljava/lang/Class;

    .line 1907
    .local v0, clazzs:[Ljava/lang/Class;
    const-class v2, Landroid/os/Handler;

    aput-object v2, v0, v4

    .line 1909
    const-class v2, Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unregisterForLineControlInfo"

    invoke-static {v2, v3, p0, v1, v0}, Lcom/android/phone/PhoneUtils;->invokeReflectedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 1911
    const-string v2, "PhoneUtils"

    const-string v3, "unRegistering for Line Control Info."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    sput-boolean v4, Lcom/android/phone/PhoneUtils;->mRegisteredForLineControlInfo:Z

    .line 1915
    .end local v0           #clazzs:[Ljava/lang/Class;
    .end local v1           #objs:[Ljava/lang/Object;
    :cond_27
    return-void
.end method

.method private static updateCdmaCallStateOnNewOutgoingCall(Lcom/android/phone/PhoneApp;)V
    .registers 3
    .parameter "app"

    .prologue
    .line 1596
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_12

    .line 1599
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 1606
    :goto_11
    return-void

    .line 1603
    :cond_12
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    goto :goto_11
.end method


# virtual methods
.method public getActiveFgCallState(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call$State;
    .registers 5
    .parameter "cm"
    .parameter "sub"

    .prologue
    .line 486
    invoke-static {p1, p2}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 488
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_b

    .line 489
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 492
    :goto_a
    return-object v1

    :cond_b
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    goto :goto_a
.end method
