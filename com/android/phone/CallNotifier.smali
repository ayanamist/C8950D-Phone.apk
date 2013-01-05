.class public Lcom/android/phone/CallNotifier;
.super Landroid/os/Handler;
.source "CallNotifier.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;,
        Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;,
        Lcom/android/phone/CallNotifier$InCallTonePlayer;
    }
.end annotation


# static fields
.field private static final CALLERINFO_QUERYING:I = -0x1

.field private static final CALLERINFO_QUERY_READY:I = 0x0

.field private static final CALLWAITING_ADDCALL_DISABLE_TIME:I = 0x7530

.field private static final CALLWAITING_ADDCALL_DISABLE_TIMEOUT:I = 0x18

.field private static final CALLWAITING_CALLERINFO_DISPLAY_DONE:I = 0x17

.field private static final CALLWAITING_CALLERINFO_DISPLAY_TIME:I = 0x4e20

.field private static final CDMA_CALL_WAITING_REJECT:I = 0x1b

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final DISPLAYINFO_NOTIFICATION_DONE:I = 0x19

.field private static final DISPLAYINFO_NOTIFICATION_TIME:I = 0x7d0

.field private static final EMERGENCY_TONE_ALERT:I = 0x1

.field private static final EMERGENCY_TONE_OFF:I = 0x0

.field private static final EMERGENCY_TONE_VIBRATE:I = 0x2

.field private static final EVENT_OTA_PROVISION_CHANGE:I = 0x1a

.field private static final LOG_TAG:Ljava/lang/String; = "CallNotifier"

.field private static final PHONE_AUTO_ANSWER:I = 0xd

.field private static final PHONE_BATTERY_LOW:I = 0x16

.field private static final PHONE_CDMA_CALL_WAITING:I = 0x8

.field private static final PHONE_DISCONNECT:I = 0x3

.field private static final PHONE_ENHANCED_VP_OFF:I = 0xa

.field private static final PHONE_ENHANCED_VP_ON:I = 0x9

.field private static final PHONE_INCOMING_RING:I = 0x5

.field protected static final PHONE_MWI_CHANGED:I = 0x15

.field private static final PHONE_NEW_RINGING_CONNECTION:I = 0x2

.field private static final PHONE_RESEND_MUTE:I = 0xc

.field private static final PHONE_RINGBACK_TONE:I = 0xb

.field private static final PHONE_STATE_CHANGED:I = 0x1

.field private static final PHONE_STATE_DISPLAYINFO:I = 0x6

.field private static final PHONE_STATE_SIGNALINFO:I = 0x7

.field private static final PHONE_UNKNOWN_CONNECTION_APPEARED:I = 0x4

.field private static final RINGER_CUSTOM_RINGTONE_QUERY_TIMEOUT:I = 0x64

.field private static final RINGTONE_QUERY_WAIT_TIME:I = 0x1f4

.field private static final SUB1:I = 0x0

.field private static final SUB2:I = 0x1

.field private static final SUPP_SERVICE_NOTIFY:I = 0x22

.field private static final TONE_RELATIVE_VOLUME_SIGNALINFO:I = 0x50

.field private static final UPDATE_IN_CALL_NOTIFICATION:I = 0x1c

.field private static final VDBG:Z

.field public static final isHideCallForward:Z

.field public static mSettingUri:Landroid/net/Uri;

.field protected static sInstance:Lcom/android/phone/CallNotifier;

.field private static suppSvcNotification:Lcom/android/internal/telephony/gsm/SuppServiceNotification;


# instance fields
.field protected mApplication:Lcom/android/phone/PhoneApp;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallLog:Lcom/android/phone/CallLogAsync;

.field private mCallWaitingTimeOut:Z

.field private mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

.field private mCallerInfoQueryState:I

.field private mCallerInfoQueryStateGuard:Ljava/lang/Object;

.field private mCurrentEmergencyToneState:I

.field private mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

.field private mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

.field private mIsCdmaRedialCall:Z

.field private mIsEmergencyToneOn:I

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

.field private mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

.field private mRinger:Lcom/android/phone/Ringer;

.field private mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

.field private mSilentRingerRequested:Z

.field private mVoicePrivacyState:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 77
    sput-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    .line 81
    const-string v0, "ro.config.hw_hidecallforward"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/CallNotifier;->isHideCallForward:Z

    .line 220
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CallNotifier;->mSettingUri:Landroid/net/Uri;

    return-void
.end method

.method protected constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)V
    .registers 8
    .parameter "app"
    .parameter "phone"
    .parameter "ringer"
    .parameter "btMgr"
    .parameter "callLog"

    .prologue
    const/4 v1, 0x0

    .line 240
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 124
    iput-boolean v1, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    .line 195
    iput-boolean v1, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 196
    iput-boolean v1, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 207
    iput v1, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    .line 606
    new-instance v0, Lcom/android/phone/CallNotifier$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CallNotifier$1;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 241
    iput-object p1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    .line 242
    iget-object v0, p1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 243
    iput-object p5, p0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    .line 245
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    .line 247
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->registerForNotifications()V

    .line 253
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->createSignalInfoToneGenerator()V

    .line 256
    iput-object p3, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    .line 257
    iput-object p4, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 258
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->listen()V

    .line 259
    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/CallNotifier;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/phone/CallNotifier;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$600()Z
    .registers 1

    .prologue
    .line 74
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/CallNotifier;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/CallNotifier;)Landroid/media/ToneGenerator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/CallNotifier;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    return v0
.end method

.method public static clearSuppSvcNotification()V
    .registers 1

    .prologue
    .line 603
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CallNotifier;->suppSvcNotification:Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 604
    return-void
.end method

.method private getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;
    .registers 5
    .parameter "conn"

    .prologue
    .line 2734
    const/4 v0, 0x0

    .line 2735
    .local v0, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    .line 2737
    .local v1, o:Ljava/lang/Object;
    if-eqz v1, :cond_b

    instance-of v2, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_f

    :cond_b
    move-object v0, v1

    .line 2738
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 2742
    .end local v1           #o:Ljava/lang/Object;
    :goto_e
    return-object v0

    .line 2740
    .restart local v1       #o:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v1           #o:Ljava/lang/Object;
    iget-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_e
.end method

.method private getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;
    .registers 7
    .parameter "conn"
    .parameter "callerInfo"

    .prologue
    .line 2688
    const/4 v0, 0x0

    .line 2690
    .local v0, number:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2691
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 2711
    :goto_b
    if-nez v0, :cond_41

    .line 2712
    const/4 v2, 0x0

    .line 2723
    :goto_e
    return-object v2

    .line 2698
    :cond_f
    if-eqz p2, :cond_25

    iget-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 2700
    :cond_25
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_39

    .line 2702
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 2704
    :cond_39
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 2707
    :cond_3e
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_b

    .line 2714
    :cond_41
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    .line 2717
    .local v1, presentation:I
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v2, p2, v0, v1}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2719
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 2720
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_57
    move-object v2, v0

    .line 2723
    goto :goto_e
.end method

.method private getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I
    .registers 6
    .parameter "conn"
    .parameter "callerInfo"

    .prologue
    .line 2756
    if-nez p2, :cond_21

    .line 2757
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    .line 2763
    .local v0, presentation:I
    :cond_6
    :goto_6
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- getPresentation: presentation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2764
    :cond_20
    return v0

    .line 2759
    .end local v0           #presentation:I
    :cond_21
    iget v0, p2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2760
    .restart local v0       #presentation:I
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- getPresentation(): ignoring connection\'s presentation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public static getSuppSvcNotification()Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    .registers 1

    .prologue
    .line 599
    sget-object v0, Lcom/android/phone/CallNotifier;->suppSvcNotification:Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    return-object v0
.end method

.method private getSuppSvcNotificationText(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)Ljava/lang/String;
    .registers 6
    .parameter "suppSvcNotification"

    .prologue
    const v2, 0x7f0c01a1

    .line 445
    const-string v0, ""

    .line 447
    .local v0, callForwardTxt:Ljava/lang/String;
    if-eqz p1, :cond_2a

    sget-boolean v1, Lcom/android/phone/CallNotifier;->isHideCallForward:Z

    if-nez v1, :cond_2a

    .line 449
    iget v1, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    packed-switch v1, :pswitch_data_15e

    .line 591
    const-string v1, "CallNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received invalid Notification Type :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_2a
    :goto_2a
    return-object v0

    .line 452
    :pswitch_2b
    iget v1, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    packed-switch v1, :pswitch_data_166

    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received unsupported MO SS Notification :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_2a

    .line 456
    :pswitch_49
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v2, 0x7f0c019d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 458
    goto :goto_2a

    .line 463
    :pswitch_55
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v2, 0x7f0c019e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 465
    goto :goto_2a

    .line 469
    :pswitch_61
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v2, 0x7f0c019f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 471
    goto :goto_2a

    .line 476
    :pswitch_6d
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v2, 0x7f0c01a0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 478
    goto :goto_2a

    .line 483
    :pswitch_79
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 485
    goto :goto_2a

    .line 488
    :pswitch_82
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v2, 0x7f0c01a2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 490
    goto :goto_2a

    .line 494
    :pswitch_8e
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v2, 0x7f0c01a3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 496
    goto :goto_2a

    .line 500
    :pswitch_9a
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v2, 0x7f0c01a4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 502
    goto :goto_2a

    .line 506
    :pswitch_a6
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v2, 0x7f0c01a5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 508
    goto/16 :goto_2a

    .line 517
    :pswitch_b3
    iget v1, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    packed-switch v1, :pswitch_data_17c

    .line 585
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received unsupported MT SS Notification :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_2a

    .line 520
    :pswitch_d2
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v2, 0x7f0c01a7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 522
    goto/16 :goto_2a

    .line 527
    :pswitch_df
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 529
    goto/16 :goto_2a

    .line 533
    :pswitch_e9
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v2, 0x7f0c01a8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 535
    goto/16 :goto_2a

    .line 539
    :pswitch_f6
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v2, 0x7f0c01a9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 541
    goto/16 :goto_2a

    .line 545
    :pswitch_103
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v2, 0x7f0c01aa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 547
    goto/16 :goto_2a

    .line 551
    :pswitch_110
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v2, 0x7f0c01ab

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 553
    goto/16 :goto_2a

    .line 556
    :pswitch_11d
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v2, 0x7f0c01ac

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 558
    goto/16 :goto_2a

    .line 562
    :pswitch_12a
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v2, 0x7f0c01ad

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 564
    goto/16 :goto_2a

    .line 568
    :pswitch_137
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v2, 0x7f0c01ae

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 570
    goto/16 :goto_2a

    .line 574
    :pswitch_144
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v2, 0x7f0c01af

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 576
    goto/16 :goto_2a

    .line 580
    :pswitch_151
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v2, 0x7f0c01a6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 582
    goto/16 :goto_2a

    .line 449
    :pswitch_data_15e
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_b3
    .end packed-switch

    .line 452
    :pswitch_data_166
    .packed-switch 0x0
        :pswitch_49
        :pswitch_55
        :pswitch_61
        :pswitch_6d
        :pswitch_79
        :pswitch_82
        :pswitch_8e
        :pswitch_9a
        :pswitch_a6
    .end packed-switch

    .line 517
    :pswitch_data_17c
    .packed-switch 0x0
        :pswitch_d2
        :pswitch_df
        :pswitch_e9
        :pswitch_f6
        :pswitch_103
        :pswitch_110
        :pswitch_11d
        :pswitch_12a
        :pswitch_137
        :pswitch_144
        :pswitch_151
    .end packed-switch
.end method

.method private ignoreAllIncomingCalls(Lcom/android/internal/telephony/Phone;)Z
    .registers 10
    .parameter "phone"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 808
    sget-boolean v6, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v6, :cond_e

    .line 812
    const-string v5, "CallNotifier"

    const-string v6, "Got onNewRingingConnection() on non-voice-capable device! Ignoring..."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :goto_d
    return v4

    .line 819
    :cond_e
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 820
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_1d

    const-string v4, "Incoming call while in ECM: always allow..."

    invoke-direct {p0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    :cond_1d
    move v4, v5

    .line 821
    goto :goto_d

    .line 825
    :cond_1f
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "device_provisioned"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_3a

    move v2, v4

    .line 827
    .local v2, provisioned:Z
    :goto_30
    if-nez v2, :cond_3c

    .line 828
    const-string v5, "CallNotifier"

    const-string v6, "Ignoring incoming call: not provisioned"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .end local v2           #provisioned:Z
    :cond_3a
    move v2, v5

    .line 825
    goto :goto_30

    .line 833
    .restart local v2       #provisioned:Z
    :cond_3c
    invoke-static {p1}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-eqz v6, :cond_83

    .line 834
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v6, v6, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v7, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v6, v7, :cond_68

    move v0, v4

    .line 836
    .local v0, activateState:Z
    :goto_4d
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v6, v6, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v7, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v6, v7, :cond_6a

    move v1, v4

    .line 838
    .local v1, dialogState:Z
    :goto_58
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v3, v6, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    .line 840
    .local v3, spcState:Z
    if-eqz v3, :cond_6c

    .line 841
    const-string v5, "CallNotifier"

    const-string v6, "Ignoring incoming call: OTA call is active"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .end local v0           #activateState:Z
    .end local v1           #dialogState:Z
    .end local v3           #spcState:Z
    :cond_68
    move v0, v5

    .line 834
    goto :goto_4d

    .restart local v0       #activateState:Z
    :cond_6a
    move v1, v5

    .line 836
    goto :goto_58

    .line 843
    .restart local v1       #dialogState:Z
    .restart local v3       #spcState:Z
    :cond_6c
    if-nez v0, :cond_70

    if-eqz v1, :cond_83

    .line 848
    :cond_70
    if-eqz v1, :cond_77

    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->dismissOtaDialogs()V

    .line 849
    :cond_77
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->clearOtaState()V

    .line 850
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->clearInCallScreenMode()V

    move v4, v5

    .line 851
    goto :goto_d

    .end local v0           #activateState:Z
    .end local v1           #dialogState:Z
    .end local v3           #spcState:Z
    :cond_83
    move v4, v5

    .line 856
    goto :goto_d
.end method

.method static init(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)Lcom/android/phone/CallNotifier;
    .registers 12
    .parameter "app"
    .parameter "phone"
    .parameter "ringer"
    .parameter "btMgr"
    .parameter "callLog"

    .prologue
    .line 228
    const-class v6, Lcom/android/phone/CallNotifier;

    monitor-enter v6

    .line 229
    :try_start_3
    sget-object v0, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    if-nez v0, :cond_17

    .line 230
    new-instance v0, Lcom/android/phone/CallNotifier;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallNotifier;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)V

    sput-object v0, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    .line 234
    :goto_13
    sget-object v0, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    monitor-exit v6

    return-object v0

    .line 232
    :cond_17
    const-string v0, "CallNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() called multiple times!  sInstance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 235
    :catchall_32
    move-exception v0

    monitor-exit v6
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 2792
    const-string v0, "CallNotifier"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2793
    return-void
.end method

.method private onBatteryLow()V
    .registers 2

    .prologue
    .line 1930
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "onBatteryLow()..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1934
    :cond_9
    return-void
.end method

.method private onCdmaCallWaiting(Landroid/os/AsyncResult;)V
    .registers 13
    .parameter "r"

    .prologue
    const/16 v10, 0x18

    const/16 v9, 0x17

    const/4 v8, 0x0

    .line 2346
    invoke-virtual {p0, v9}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 2347
    invoke-virtual {p0, v10}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 2351
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v7, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v6, v7}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 2356
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v6

    if-nez v6, :cond_28

    .line 2357
    sget-boolean v6, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v6, :cond_25

    const-string v6, "- showing incoming call (CDMA call waiting)..."

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2358
    :cond_25
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    .line 2362
    :cond_28
    iput-boolean v8, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 2363
    const-wide/16 v6, 0x4e20

    invoke-virtual {p0, v9, v6, v7}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 2367
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v6, v8}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V

    .line 2370
    const-wide/16 v6, 0x7530

    invoke-virtual {p0, v10, v6, v7}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 2374
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    .line 2375
    .local v0, infoCW:Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;
    iget v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->isPresent:I

    .line 2376
    .local v1, isPresent:I
    sget-boolean v6, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v6, :cond_5b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCdmaCallWaiting: isPresent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2377
    :cond_5b
    const/4 v6, 0x1

    if-ne v1, v6, :cond_9e

    .line 2378
    iget v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signalType:I

    .line 2379
    .local v5, uSignalType:I
    iget v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->alertPitch:I

    .line 2380
    .local v3, uAlertPitch:I
    iget v4, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signal:I

    .line 2381
    .local v4, uSignal:I
    sget-boolean v6, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v6, :cond_92

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCdmaCallWaiting: uSignalType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uAlertPitch="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uSignal="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2384
    :cond_92
    invoke-static {v5, v3, v4}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->getAudioToneFromSignalInfo(III)I

    move-result v2

    .line 2388
    .local v2, toneID:I
    new-instance v6, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    invoke-direct {v6, p0, v2}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v6}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    .line 2390
    .end local v2           #toneID:I
    .end local v3           #uAlertPitch:I
    .end local v4           #uSignal:I
    .end local v5           #uSignalType:I
    :cond_9e
    return-void
.end method

.method private onCdmaCallWaitingReject()V
    .registers 20

    .prologue
    .line 2414
    const/16 v16, 0x0

    .line 2416
    .local v16, ringingCall:Lcom/android/internal/telephony/Call;
    sget-boolean v2, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v2, :cond_b6

    .line 2418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v2, v0}, Lcom/android/phone/PhoneUtils;->getFirstRingingCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v16

    .line 2425
    :goto_12
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v18, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v18

    if-ne v2, v0, :cond_b5

    .line 2427
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v12

    .line 2429
    .local v12, c:Lcom/android/internal/telephony/Connection;
    if-eqz v12, :cond_b0

    .line 2430
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v14

    .line 2431
    .local v14, number:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v5

    .line 2432
    .local v5, presentation:I
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v7

    .line 2433
    .local v7, date:J
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v9

    .line 2434
    .local v9, duration:J
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    if-eqz v2, :cond_c0

    const/4 v6, 0x3

    .line 2438
    .local v6, callLogType:I
    :goto_39
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v15

    .line 2440
    .local v15, o:Ljava/lang/Object;
    if-eqz v15, :cond_43

    instance-of v2, v15, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_c3

    :cond_43
    move-object v3, v15

    .line 2441
    check-cast v3, Lcom/android/internal/telephony/CallerInfo;

    .line 2448
    .end local v15           #o:Ljava/lang/Object;
    .local v3, ci:Lcom/android/internal/telephony/CallerInfo;
    :goto_46
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v14, v5}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 2450
    .local v4, logNumber:Ljava/lang/String;
    if-eqz v3, :cond_c9

    iget v13, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2451
    .local v13, newPresentation:I
    :goto_54
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_7e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "- onCdmaCallWaitingReject(): logNumber set to: "

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v18, ", newPresentation value is: "

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2456
    :cond_7e
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_cb

    .line 2457
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v17

    .line 2458
    .local v17, sub_id:I
    const/4 v11, 0x0

    .line 2468
    .local v11, subFlag:I
    move/from16 v11, v17

    .line 2474
    new-instance v1, Lcom/android/phone/CallLogAsync$AddCallArgs;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-direct/range {v1 .. v11}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJI)V

    .line 2483
    .end local v11           #subFlag:I
    .end local v17           #sub_id:I
    .local v1, args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    :goto_9e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    invoke-virtual {v2, v1}, Lcom/android/phone/CallLogAsync;->addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;

    .line 2485
    const/4 v2, 0x3

    if-ne v6, v2, :cond_d7

    .line 2487
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v7, v8}, Lcom/android/phone/CallNotifier;->showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V

    .line 2494
    :goto_ad
    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    .line 2498
    .end local v1           #args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    .end local v3           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v4           #logNumber:Ljava/lang/String;
    .end local v5           #presentation:I
    .end local v6           #callLogType:I
    .end local v7           #date:J
    .end local v9           #duration:J
    .end local v13           #newPresentation:I
    .end local v14           #number:Ljava/lang/String;
    :cond_b0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 2500
    .end local v12           #c:Lcom/android/internal/telephony/Connection;
    :cond_b5
    return-void

    .line 2420
    :cond_b6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v16

    goto/16 :goto_12

    .line 2434
    .restart local v5       #presentation:I
    .restart local v7       #date:J
    .restart local v9       #duration:J
    .restart local v12       #c:Lcom/android/internal/telephony/Connection;
    .restart local v14       #number:Ljava/lang/String;
    :cond_c0
    const/4 v6, 0x1

    goto/16 :goto_39

    .line 2443
    .restart local v6       #callLogType:I
    .restart local v15       #o:Ljava/lang/Object;
    :cond_c3
    check-cast v15, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v15           #o:Ljava/lang/Object;
    iget-object v3, v15, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .restart local v3       #ci:Lcom/android/internal/telephony/CallerInfo;
    goto/16 :goto_46

    .restart local v4       #logNumber:Ljava/lang/String;
    :cond_c9
    move v13, v5

    .line 2450
    goto :goto_54

    .line 2478
    .restart local v13       #newPresentation:I
    :cond_cb
    new-instance v1, Lcom/android/phone/CallLogAsync$AddCallArgs;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-direct/range {v1 .. v10}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJ)V

    .restart local v1       #args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    goto :goto_9e

    .line 2490
    :cond_d7
    const/16 v2, 0x17

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    goto :goto_ad
.end method

.method private onCustomRingQueryComplete()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 971
    const/4 v0, 0x0

    .line 972
    .local v0, isQueryExecutionTimeExpired:Z
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 973
    :try_start_5
    iget v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_e

    .line 974
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 975
    const/4 v0, 0x1

    .line 977
    :cond_e
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_32

    .line 978
    if-eqz v0, :cond_20

    .line 981
    const-string v1, "CallNotifier"

    const-string v2, "CallerInfo query took too long; falling back to default ringtone"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    const v1, 0x112a0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 997
    :cond_20
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_35

    .line 998
    const-string v1, "CallNotifier"

    const-string v2, "onCustomRingQueryComplete: No incoming call! Bailing out..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :goto_31
    return-void

    .line 977
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1

    .line 1009
    :cond_35
    sget-boolean v1, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v1}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1010
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v1}, Lcom/android/phone/Ringer;->stopRing()V

    .line 1015
    :cond_46
    sget-boolean v1, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v1, :cond_66

    .line 1016
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getmRingingSubscription()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/phone/Ringer;->ring(I)V

    .line 1022
    :goto_57
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    .line 1026
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_62

    const-string v1, "- showing incoming call (custom ring query complete)..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1027
    :cond_62
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    goto :goto_31

    .line 1018
    :cond_66
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v1}, Lcom/android/phone/Ringer;->ring()V

    goto :goto_57
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .registers 33
    .parameter "r"

    .prologue
    .line 1440
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 1441
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/internal/telephony/Connection;

    .line 1442
    .local v20, c:Lcom/android/internal/telephony/Connection;
    if-eqz v20, :cond_33e

    .line 1443
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onDisconnect: cause = "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ", incoming = "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ", date = "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1451
    :goto_49
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    .line 1453
    const/16 v19, 0x0

    .line 1454
    .local v19, autoretrySetting:I
    if-eqz v20, :cond_75

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v13, 0x2

    if-ne v3, v13, :cond_75

    .line 1455
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v13, "call_auto_retry"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v3, v13, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .line 1460
    :cond_75
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 1462
    if-eqz v20, :cond_ba

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v13, 0x2

    if-ne v3, v13, :cond_ba

    .line 1464
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->resetCdmaPhoneCallState()V

    .line 1466
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v13, v3, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v16, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v16

    if-ne v3, v0, :cond_347

    const/4 v3, 0x1

    :goto_a9
    invoke-virtual {v13, v3}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableNotificationAlerts(Z)V

    .line 1470
    const/16 v3, 0x17

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1471
    const/16 v3, 0x18

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1489
    :cond_ba
    const/16 v27, 0x0

    .line 1491
    .local v27, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v29

    .line 1492
    .local v29, subscription:I
    sget-boolean v3, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v3, :cond_34a

    const/4 v3, -0x1

    move/from16 v0, v29

    if-eq v3, v0, :cond_34a

    .line 1493
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move/from16 v0, v29

    invoke-static {v3, v0}, Lcom/android/phone/PhoneUtils;->getFirstRingingCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v27

    .line 1498
    :goto_db
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v13, 0x2

    if-ne v3, v13, :cond_387

    .line 1499
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v3

    if-eqz v3, :cond_354

    .line 1502
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_fb

    const-string v3, "cancelCallInProgressNotifications()... (onDisconnect)"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1503
    :cond_fb
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v3}, Lcom/android/phone/NotificationMgr;->cancelCallInProgressNotifications()V

    .line 1525
    :goto_104
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v3, :cond_116

    .line 1526
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 1527
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1531
    :cond_116
    if-eqz v20, :cond_14a

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-eqz v3, :cond_14a

    .line 1532
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v15

    .line 1533
    .local v15, number:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3, v15}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14a

    .line 1534
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_143

    const-string v3, "onDisconnect: this was an OTASP call!"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1535
    :cond_143
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->handleOtaspDisconnect()V

    .line 1541
    .end local v15           #number:Ljava/lang/String;
    :cond_14a
    const/16 v30, 0x0

    .line 1544
    .local v30, toneToPlay:I
    if-eqz v20, :cond_165

    .line 1545
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v21

    .line 1546
    .local v21, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v21

    if-ne v0, v3, :cond_3ba

    .line 1547
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_163

    const-string v3, "- need to play BUSY tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1548
    :cond_163
    const/16 v30, 0x2

    .line 1585
    .end local v21           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_165
    :goto_165
    if-nez v30, :cond_18c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v13, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v13, :cond_18c

    if-eqz v20, :cond_18c

    .line 1588
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v21

    .line 1589
    .restart local v21       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v21

    if-eq v0, v3, :cond_185

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v21

    if-ne v0, v3, :cond_18c

    .line 1592
    :cond_185
    const/16 v30, 0x5

    .line 1593
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 1597
    .end local v21           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_18c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v13, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v13, :cond_1c3

    .line 1600
    if-nez v30, :cond_19d

    .line 1601
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    .line 1604
    :cond_19d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v3}, Lcom/android/phone/NotificationMgr;->cancelCallInProgressNotifications()V

    .line 1611
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v3

    if-nez v3, :cond_483

    .line 1615
    sget-boolean v3, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v3, :cond_472

    .line 1616
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/android/phone/PhoneApp;->dismissCallScreen_DSDA(Lcom/android/internal/telephony/Phone;)V

    .line 1628
    :cond_1c3
    :goto_1c3
    if-eqz v20, :cond_33d

    .line 1629
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v15

    .line 1630
    .restart local v15       #number:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v8

    .line 1631
    .local v8, date:J
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v10

    .line 1632
    .local v10, duration:J
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v21

    .line 1633
    .restart local v21       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    .line 1634
    .local v14, phone:Lcom/android/internal/telephony/Phone;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v15, v3}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v23

    .line 1638
    .local v23, isEmergencyNumber:Z
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_49a

    .line 1642
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v13, v13, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v16, "hw_calllog_type"

    const/16 v17, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-ne v3, v13, :cond_48f

    .line 1645
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v21

    if-eq v0, v3, :cond_212

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v21

    if-ne v0, v3, :cond_48c

    :cond_212
    const/4 v7, 0x3

    .line 1658
    .local v7, callLogType:I
    :goto_213
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v4

    .line 1661
    .local v4, ci:Lcom/android/internal/telephony/CallerInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Lcom/android/phone/CallNotifier;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v5

    .line 1664
    .local v5, logNumber:Ljava/lang/String;
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_22e

    const-string v3, "- onDisconnect(): logNumber set to: xxxxxxx"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1667
    :cond_22e
    const/4 v3, 0x2

    if-ne v3, v7, :cond_244

    sget-boolean v3, Lcom/android/phone/ipcallsetting/IPCallUtils;->IS_SUPPORT_IPCALL:Z

    if-eqz v3, :cond_244

    .line 1669
    invoke-static/range {v20 .. v20}, Lcom/android/phone/ipcallsetting/IPCallUtils;->getLogNumber(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v22

    .line 1670
    .local v22, ipCallLogNumber:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_244

    .line 1672
    move-object/from16 v5, v22

    .line 1674
    invoke-static/range {v20 .. v20}, Lcom/android/phone/ipcallsetting/IPCallUtils;->removeConnection(Lcom/android/internal/telephony/Connection;)V

    .line 1683
    .end local v22           #ipCallLogNumber:Ljava/lang/String;
    :cond_244
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Lcom/android/phone/CallNotifier;->getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I

    move-result v6

    .line 1685
    .local v6, presentation:I
    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v13, 0x2

    if-ne v3, v13, :cond_268

    .line 1686
    if-eqz v23, :cond_268

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-eqz v3, :cond_268

    .line 1688
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v3, :cond_268

    .line 1689
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    invoke-static {v3}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$100(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    .line 1698
    :cond_268
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v13, 0x7f08000d

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v25

    .line 1703
    .local v25, okToLogEmergencyNumber:Z
    invoke-static {v14}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-eqz v3, :cond_49d

    invoke-interface {v14, v15}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_49d

    const/16 v24, 0x1

    .line 1708
    .local v24, isOtaspNumber:Z
    :goto_287
    if-eqz v23, :cond_28b

    if-eqz v25, :cond_4a1

    :cond_28b
    if-nez v24, :cond_4a1

    const/16 v26, 0x1

    .line 1712
    .local v26, okToLogThisCall:Z
    :goto_28f
    if-eqz v26, :cond_2b4

    .line 1715
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_4a5

    .line 1716
    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v28

    .line 1717
    .local v28, sub_id:I
    const/4 v12, 0x0

    .line 1726
    .local v12, subFlag:I
    move/from16 v12, v28

    .line 1732
    new-instance v2, Lcom/android/phone/CallLogAsync$AddCallArgs;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-direct/range {v2 .. v12}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJI)V

    .line 1741
    .end local v12           #subFlag:I
    .end local v28           #sub_id:I
    .local v2, args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    :goto_2ad
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    invoke-virtual {v3, v2}, Lcom/android/phone/CallLogAsync;->addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;

    .line 1745
    .end local v2           #args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    :cond_2b4
    const/4 v3, 0x3

    if-ne v7, v3, :cond_2be

    .line 1749
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v8, v9}, Lcom/android/phone/CallNotifier;->showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V

    .line 1756
    :cond_2be
    if-eqz v30, :cond_2cc

    .line 1758
    new-instance v3, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v3, v0, v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 1770
    :cond_2cc
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v13, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v13, :cond_4b2

    .line 1775
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v3

    if-nez v3, :cond_2f4

    .line 1777
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v13, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v3, v13}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 1778
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v13, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v3, v13}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 1793
    :cond_2f4
    :goto_2f4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v13, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v13, :cond_304

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v13, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v13, :cond_33d

    :cond_304
    if-nez v23, :cond_33d

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v21

    if-eq v0, v3, :cond_33d

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v21

    if-eq v0, v3, :cond_33d

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v21

    if-eq v0, v3, :cond_33d

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v21

    if-eq v0, v3, :cond_33d

    .line 1800
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    if-nez v3, :cond_4d4

    .line 1801
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_4cd

    .line 1804
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v13, v3, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v13 .. v18}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;)I

    .line 1806
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 1815
    .end local v4           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v5           #logNumber:Ljava/lang/String;
    .end local v6           #presentation:I
    .end local v7           #callLogType:I
    .end local v8           #date:J
    .end local v10           #duration:J
    .end local v14           #phone:Lcom/android/internal/telephony/Phone;
    .end local v15           #number:Ljava/lang/String;
    .end local v21           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    .end local v23           #isEmergencyNumber:Z
    .end local v24           #isOtaspNumber:Z
    .end local v25           #okToLogEmergencyNumber:Z
    .end local v26           #okToLogThisCall:Z
    :cond_33d
    :goto_33d
    return-void

    .line 1447
    .end local v19           #autoretrySetting:I
    .end local v27           #ringingCall:Lcom/android/internal/telephony/Call;
    .end local v29           #subscription:I
    .end local v30           #toneToPlay:I
    :cond_33e
    const-string v3, "CallNotifier"

    const-string v13, "onDisconnect: null connection"

    invoke-static {v3, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_49

    .line 1466
    .restart local v19       #autoretrySetting:I
    :cond_347
    const/4 v3, 0x0

    goto/16 :goto_a9

    .line 1495
    .restart local v27       #ringingCall:Lcom/android/internal/telephony/Call;
    .restart local v29       #subscription:I
    :cond_34a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v27

    goto/16 :goto_db

    .line 1505
    :cond_354
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_35f

    const-string v3, "stopRing()... (onDisconnect)"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1506
    :cond_35f
    sget-boolean v3, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v3, :cond_37e

    .line 1507
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13}, Lcom/android/phone/CallNotifier;->stopAndStartRing(Landroid/content/Context;I)V

    goto/16 :goto_104

    .line 1510
    :cond_37e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v3}, Lcom/android/phone/Ringer;->stopRing()V

    goto/16 :goto_104

    .line 1514
    :cond_387
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_392

    const-string v3, "stopRing()... (onDisconnect)"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1515
    :cond_392
    sget-boolean v3, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v3, :cond_3b1

    .line 1516
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13}, Lcom/android/phone/CallNotifier;->stopAndStartRing(Landroid/content/Context;I)V

    goto/16 :goto_104

    .line 1519
    :cond_3b1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v3}, Lcom/android/phone/Ringer;->stopRing()V

    goto/16 :goto_104

    .line 1549
    .restart local v21       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    .restart local v30       #toneToPlay:I
    :cond_3ba
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v21

    if-ne v0, v3, :cond_3cf

    .line 1550
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_3cb

    const-string v3, "- need to play CONGESTION tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1551
    :cond_3cb
    const/16 v30, 0x3

    goto/16 :goto_165

    .line 1552
    :cond_3cf
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v21

    if-eq v0, v3, :cond_3db

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v21

    if-ne v0, v3, :cond_3f4

    :cond_3db
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->isOtaCallInActiveState()Z

    move-result v3

    if-eqz v3, :cond_3f4

    .line 1555
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_3f0

    const-string v3, "- need to play OTA_CALL_END tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1556
    :cond_3f0
    const/16 v30, 0xc

    goto/16 :goto_165

    .line 1557
    :cond_3f4
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_REORDER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v21

    if-ne v0, v3, :cond_409

    .line 1558
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_405

    const-string v3, "- need to play CDMA_REORDER tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1559
    :cond_405
    const/16 v30, 0x7

    goto/16 :goto_165

    .line 1560
    :cond_409
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_INTERCEPT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v21

    if-ne v0, v3, :cond_41e

    .line 1561
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_41a

    const-string v3, "- need to play CDMA_INTERCEPT tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1562
    :cond_41a
    const/16 v30, 0x8

    goto/16 :goto_165

    .line 1563
    :cond_41e
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_DROP:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v21

    if-ne v0, v3, :cond_433

    .line 1564
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_42f

    const-string v3, "- need to play CDMA_DROP tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1565
    :cond_42f
    const/16 v30, 0x9

    goto/16 :goto_165

    .line 1566
    :cond_433
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v21

    if-ne v0, v3, :cond_448

    .line 1567
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_444

    const-string v3, "- need to play OUT OF SERVICE tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1568
    :cond_444
    const/16 v30, 0xa

    goto/16 :goto_165

    .line 1569
    :cond_448
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v21

    if-ne v0, v3, :cond_45d

    .line 1570
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_459

    const-string v3, "- need to play TONE_UNOBTAINABLE_NUMBER tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1571
    :cond_459
    const/16 v30, 0xe

    goto/16 :goto_165

    .line 1572
    :cond_45d
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v21

    if-ne v0, v3, :cond_165

    .line 1573
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_46e

    const-string v3, "- DisconnectCause is ERROR_UNSPECIFIED: play TONE_CALL_ENDED!"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1574
    :cond_46e
    const/16 v30, 0x5

    goto/16 :goto_165

    .line 1618
    .end local v21           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_472
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/android/phone/PhoneApp;->dismissCallScreen(Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_1c3

    .line 1624
    :cond_483
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->clearUserActivityTimeout()V

    goto/16 :goto_1c3

    .line 1645
    .restart local v8       #date:J
    .restart local v10       #duration:J
    .restart local v14       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v15       #number:Ljava/lang/String;
    .restart local v21       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    .restart local v23       #isEmergencyNumber:Z
    :cond_48c
    const/4 v7, 0x1

    goto/16 :goto_213

    .line 1649
    :cond_48f
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v21

    if-ne v0, v3, :cond_498

    const/4 v7, 0x3

    .restart local v7       #callLogType:I
    :goto_496
    goto/16 :goto_213

    .end local v7           #callLogType:I
    :cond_498
    const/4 v7, 0x1

    goto :goto_496

    .line 1654
    :cond_49a
    const/4 v7, 0x2

    .restart local v7       #callLogType:I
    goto/16 :goto_213

    .line 1703
    .restart local v4       #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v5       #logNumber:Ljava/lang/String;
    .restart local v6       #presentation:I
    .restart local v25       #okToLogEmergencyNumber:Z
    :cond_49d
    const/16 v24, 0x0

    goto/16 :goto_287

    .line 1708
    .restart local v24       #isOtaspNumber:Z
    :cond_4a1
    const/16 v26, 0x0

    goto/16 :goto_28f

    .line 1736
    .restart local v26       #okToLogThisCall:Z
    :cond_4a5
    new-instance v2, Lcom/android/phone/CallLogAsync$AddCallArgs;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-direct/range {v2 .. v11}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJ)V

    .restart local v2       #args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    goto/16 :goto_2ad

    .line 1787
    .end local v2           #args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    :cond_4b2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-boolean v3, v3, Lcom/android/phone/PhoneApp;->mWakeUpScreen:Z

    if-eqz v3, :cond_2f4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v3

    if-nez v3, :cond_2f4

    .line 1788
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    goto/16 :goto_2f4

    .line 1808
    :cond_4cd
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    goto/16 :goto_33d

    .line 1811
    :cond_4d4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    goto/16 :goto_33d
.end method

.method private onDisplayInfo(Landroid/os/AsyncResult;)V
    .registers 7
    .parameter "r"

    .prologue
    .line 2231
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    move-object v1, v2

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    .line 2233
    .local v1, displayInfoRec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;
    if-eqz v1, :cond_33

    .line 2234
    iget-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;->alpha:Ljava/lang/String;

    .line 2235
    .local v0, displayInfo:Ljava/lang/String;
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisplayInfo: displayInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2236
    :cond_25
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/phone/CdmaDisplayInfo;->displayInfoRecord(Landroid/content/Context;Ljava/lang/String;)V

    .line 2239
    const/16 v2, 0x19

    const-wide/16 v3, 0x7d0

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 2242
    .end local v0           #displayInfo:Ljava/lang/String;
    :cond_33
    return-void
.end method

.method private onNewRingingConnection(Landroid/os/AsyncResult;)V
    .registers 16
    .parameter "r"

    .prologue
    const/16 v13, 0xd

    const/4 v9, 0x1

    const/4 v12, -0x1

    .line 632
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 633
    .local v0, c:Lcom/android/internal/telephony/Connection;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onNewRingingConnection(): state = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", conn = { "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " }"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 634
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 635
    .local v6, ringing:Lcom/android/internal/telephony/Call;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 638
    .local v5, phone:Lcom/android/internal/telephony/Phone;
    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->ignoreAllIncomingCalls(Lcom/android/internal/telephony/Phone;)Z

    move-result v10

    if-eqz v10, :cond_46

    .line 643
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 788
    :cond_45
    :goto_45
    return-void

    .line 647
    :cond_46
    if-nez v0, :cond_50

    .line 648
    const-string v9, "CallNotifier"

    const-string v10, "CallNotifier.onNewRingingConnection(): null connection!"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 653
    :cond_50
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isRinging()Z

    move-result v10

    if-nez v10, :cond_5e

    .line 654
    const-string v9, "CallNotifier"

    const-string v10, "CallNotifier.onNewRingingConnection(): connection not ringing!"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 668
    :cond_5e
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v7

    .line 671
    .local v7, ringingSubscription:I
    sget-boolean v10, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v10, :cond_6d

    .line 672
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/android/phone/PhoneApp;->setmRingingSubscription(I)V

    .line 678
    :cond_6d
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v10

    if-nez v10, :cond_86

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v10

    if-nez v10, :cond_86

    .line 685
    sget-boolean v10, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v10, :cond_ed

    .line 686
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v10, v7}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;I)V

    .line 696
    :cond_86
    :goto_86
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 698
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    .line 730
    .local v8, state:Lcom/android/internal/telephony/Call$State;
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v11, Lcom/android/phone/PhoneApp$WakeState;->PARTIAL:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v10, v11}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 734
    sget-boolean v10, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v10, :cond_f5

    .line 736
    invoke-static {v8, v7}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;I)Z

    move-result v2

    .line 737
    .local v2, isRealIncomingCall:Z
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->getAlternateSub(I)I

    move-result v11

    invoke-static {v10, v11}, Lcom/android/phone/PhoneUtils;->hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v1

    .line 740
    .local v1, hasCallOnAlternateSub:Z
    if-eqz v2, :cond_f3

    if-nez v1, :cond_f3

    move v2, v9

    .line 747
    .end local v1           #hasCallOnAlternateSub:Z
    :goto_ab
    if-eqz v2, :cond_fa

    .line 750
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "auto_answer"

    invoke-static {v9, v10, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 754
    .local v3, mAutoAnswer:I
    invoke-virtual {p0, v13}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 756
    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V

    .line 760
    if-eq v3, v12, :cond_45

    .line 761
    const-string v9, "CallNotifier"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Will auto-answer in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    div-int/lit16 v11, v3, 0x3e8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " seconds"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    invoke-static {p0, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 763
    .local v4, message:Landroid/os/Message;
    int-to-long v9, v3

    invoke-virtual {p0, v4, v9, v10}, Lcom/android/phone/CallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_45

    .line 688
    .end local v2           #isRealIncomingCall:Z
    .end local v3           #mAutoAnswer:I
    .end local v4           #message:Landroid/os/Message;
    .end local v8           #state:Lcom/android/internal/telephony/Call$State;
    :cond_ed
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_86

    .line 740
    .restart local v1       #hasCallOnAlternateSub:Z
    .restart local v2       #isRealIncomingCall:Z
    .restart local v8       #state:Lcom/android/internal/telephony/Call$State;
    :cond_f3
    const/4 v2, 0x0

    goto :goto_ab

    .line 742
    .end local v1           #hasCallOnAlternateSub:Z
    .end local v2           #isRealIncomingCall:Z
    :cond_f5
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v2

    .restart local v2       #isRealIncomingCall:Z
    goto :goto_ab

    .line 767
    :cond_fa
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-nez v10, :cond_10a

    .line 768
    new-instance v10, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v10, p0, v9}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    iput-object v10, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 769
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v9}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 773
    :cond_10a
    sget-boolean v9, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v9, :cond_113

    const-string v9, "- showing incoming call (this is a WAITING call)..."

    invoke-direct {p0, v9}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 774
    :cond_113
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    goto/16 :goto_45
.end method

.method private onPhoneAutoAnswer()V
    .registers 4

    .prologue
    .line 619
    const-string v1, "CallNotifier"

    const-string v2, "Autoanswering ringing call"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 621
    .local v0, ringingCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_13

    .line 622
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 626
    :goto_12
    return-void

    .line 624
    :cond_13
    const-string v1, "CallNotifier"

    const-string v2, "No ringing call to answer!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .registers 12
    .parameter "r"

    .prologue
    .line 1135
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    .line 1139
    .local v5, state:Lcom/android/internal/telephony/Phone$State;
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/Phone;

    .line 1144
    .local v4, phone:Lcom/android/internal/telephony/Phone;
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v8, v7, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    sget-object v7, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v5, v7, :cond_195

    const/4 v7, 0x1

    :goto_15
    invoke-virtual {v8, v7}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableNotificationAlerts(Z)V

    .line 1148
    const/4 v3, 0x0

    .line 1150
    .local v3, fgPhone:Lcom/android/internal/telephony/Phone;
    sget-boolean v7, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v7, :cond_1ac

    .line 1151
    const/4 v7, -0x1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v8

    if-ne v7, v8, :cond_198

    .line 1153
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 1163
    :goto_2e
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_68

    .line 1164
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_5e

    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v8, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_4d

    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_5e

    .line 1167
    :cond_4d
    iget-boolean v7, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    if-eqz v7, :cond_5b

    .line 1168
    const/16 v6, 0xb

    .line 1169
    .local v6, toneToPlay:I
    new-instance v7, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v7, p0, v6}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v7}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 1172
    .end local v6           #toneToPlay:I
    :cond_5b
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 1174
    :cond_5e
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    .line 1177
    :cond_68
    sget-boolean v7, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v7, :cond_9d

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_9d

    .line 1178
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_93

    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v8, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_8b

    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_93

    .line 1181
    :cond_8b
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/phone/PhoneApp;->setGsmCallRemoteAnswered(Z)V

    .line 1183
    :cond_93
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    .line 1192
    :cond_9d
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/phone/PhoneApp;->updateBluetoothIndication(Z)V

    .line 1196
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v7, v5}, Lcom/android/phone/PhoneApp;->updatePhoneState(Lcom/android/internal/telephony/Phone$State;)V

    .line 1198
    sget-object v7, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v5, v7, :cond_112

    .line 1200
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v7, :cond_b8

    .line 1201
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v7}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 1202
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1208
    :cond_b8
    sget-boolean v7, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v7, :cond_1b4

    .line 1215
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v7

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v8

    if-ne v7, v8, :cond_d7

    .line 1217
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;I)V

    .line 1226
    :cond_d7
    :goto_d7
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v7

    if-nez v7, :cond_ed

    .line 1227
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v8, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v7, v8}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 1228
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v8, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v7, v8}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 1237
    :cond_ed
    sget-boolean v7, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v7, :cond_f6

    const-string v7, "stopRing()... (OFFHOOK state)"

    invoke-direct {p0, v7}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1243
    :cond_f6
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v7}, Lcom/android/phone/Ringer;->stopRing()V

    .line 1261
    sget-boolean v7, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v7, :cond_104

    const-string v7, "- posting UPDATE_IN_CALL_NOTIFICATION request..."

    invoke-direct {p0, v7}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1263
    :cond_104
    const/16 v7, 0x1c

    invoke-virtual {p0, v7}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1264
    const/16 v0, 0x3e8

    .line 1265
    .local v0, IN_CALL_NOTIFICATION_UPDATE_DELAY:I
    const/16 v7, 0x1c

    const-wide/16 v8, 0x3e8

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 1269
    .end local v0           #IN_CALL_NOTIFICATION_UPDATE_DELAY:I
    :cond_112
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_16e

    .line 1270
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 1271
    .local v1, c:Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_16e

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v7, v8}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_16e

    .line 1274
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 1275
    .local v2, callState:Lcom/android/internal/telephony/Call$State;
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-nez v7, :cond_144

    .line 1276
    new-instance v7, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    invoke-direct {v7, p0}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v7, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    .line 1279
    :cond_144
    sget-object v7, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v7, :cond_14c

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v7, :cond_1bb

    .line 1280
    :cond_14c
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "emergency_tone"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    .line 1283
    iget v7, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    if-eqz v7, :cond_16e

    iget v7, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-nez v7, :cond_16e

    .line 1285
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v7, :cond_16e

    .line 1286
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    invoke-static {v7}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$000(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    .line 1299
    .end local v1           #c:Lcom/android/internal/telephony/Connection;
    .end local v2           #callState:Lcom/android/internal/telephony/Call$State;
    :cond_16e
    :goto_16e
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_17c

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_194

    .line 1301
    :cond_17c
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 1302
    .restart local v2       #callState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v7

    if-nez v7, :cond_194

    .line 1305
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v7, :cond_194

    .line 1306
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v7}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 1307
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1311
    .end local v2           #callState:Lcom/android/internal/telephony/Call$State;
    :cond_194
    return-void

    .line 1144
    .end local v3           #fgPhone:Lcom/android/internal/telephony/Phone;
    :cond_195
    const/4 v7, 0x0

    goto/16 :goto_15

    .line 1155
    .restart local v3       #fgPhone:Lcom/android/internal/telephony/Phone;
    :cond_198
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/phone/PhoneUtils;->getFirstRingingCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    goto/16 :goto_2e

    .line 1160
    :cond_1ac
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    goto/16 :goto_2e

    .line 1220
    :cond_1b4
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    goto/16 :goto_d7

    .line 1289
    .restart local v1       #c:Lcom/android/internal/telephony/Connection;
    .restart local v2       #callState:Lcom/android/internal/telephony/Call$State;
    :cond_1bb
    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v7, :cond_16e

    .line 1290
    iget v7, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-eqz v7, :cond_16e

    .line 1291
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v7, :cond_16e

    .line 1292
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    invoke-static {v7}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$100(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    goto :goto_16e
.end method

.method private onResendMute()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2659
    sget-boolean v4, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v4, :cond_1d

    .line 2660
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v1

    .line 2661
    .local v1, sub:I
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->getMute(I)Z

    move-result v0

    .line 2662
    .local v0, muteState:Z
    if-nez v0, :cond_1b

    :goto_14
    invoke-static {v2, v1}, Lcom/android/phone/PhoneUtils;->setMute(ZI)V

    .line 2663
    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->setMute(ZI)V

    .line 2671
    .end local v1           #sub:I
    :goto_1a
    return-void

    .restart local v1       #sub:I
    :cond_1b
    move v2, v3

    .line 2662
    goto :goto_14

    .line 2665
    .end local v0           #muteState:Z
    .end local v1           #sub:I
    :cond_1d
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    .line 2666
    .restart local v0       #muteState:Z
    if-nez v0, :cond_2a

    :goto_23
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 2667
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    goto :goto_1a

    :cond_2a
    move v2, v3

    .line 2666
    goto :goto_23
.end method

.method private onRingbackTone(Landroid/os/AsyncResult;)V
    .registers 5
    .parameter "r"

    .prologue
    .line 2632
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2634
    .local v0, playTone:Z
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2c

    .line 2639
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-nez v1, :cond_2b

    .line 2641
    new-instance v1, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/16 v2, 0xd

    invoke-direct {v1, p0, v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 2642
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 2650
    :cond_2b
    :goto_2b
    return-void

    .line 2645
    :cond_2c
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v1, :cond_2b

    .line 2646
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 2647
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    goto :goto_2b
.end method

.method private onSignalInfo(Landroid/os/AsyncResult;)V
    .registers 11
    .parameter "r"

    .prologue
    .line 2278
    sget-boolean v7, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v7, :cond_c

    .line 2279
    const-string v7, "CallNotifier"

    const-string v8, "Got onSignalInfo() on non-voice-capable device! Ignoring..."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    :cond_b
    :goto_b
    return-void

    .line 2285
    :cond_c
    const/4 v1, 0x0

    .line 2287
    .local v1, ringingCall:Lcom/android/internal/telephony/Call;
    sget-boolean v7, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v7, :cond_38

    const/4 v7, -0x1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->getmRingingSubscription()I

    move-result v8

    if-eq v7, v8, :cond_38

    .line 2288
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->getmRingingSubscription()I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/phone/PhoneUtils;->getFirstRingingCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2293
    :goto_2a
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 2298
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    goto :goto_b

    .line 2290
    :cond_38
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    goto :goto_2a

    .line 2301
    :cond_3f
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    move-object v2, v7

    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    .line 2303
    .local v2, signalInfoRec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;
    if-eqz v2, :cond_b

    .line 2304
    iget-boolean v0, v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->isPresent:Z

    .line 2305
    .local v0, isPresent:Z
    sget-boolean v7, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v7, :cond_64

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSignalInfo: isPresent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2306
    :cond_64
    if-eqz v0, :cond_b

    .line 2307
    iget v6, v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signalType:I

    .line 2308
    .local v6, uSignalType:I
    iget v4, v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->alertPitch:I

    .line 2309
    .local v4, uAlertPitch:I
    iget v5, v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signal:I

    .line 2311
    .local v5, uSignal:I
    sget-boolean v7, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v7, :cond_9a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSignalInfo: uSignalType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uAlertPitch="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uSignal="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2314
    :cond_9a
    const/4 v7, 0x2

    if-ne v7, v6, :cond_a6

    .line 2315
    const-string v7, "CallNotifier"

    const-string v8, "uSignalType == 2 may not playTone"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 2320
    :cond_a6
    invoke-static {v6, v4, v5}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->getAudioToneFromSignalInfo(III)I

    move-result v3

    .line 2324
    .local v3, toneID:I
    new-instance v7, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    invoke-direct {v7, p0, v3}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v7}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    goto/16 :goto_b
.end method

.method private onUnknownConnectionAppeared(Landroid/os/AsyncResult;)V
    .registers 5
    .parameter "r"

    .prologue
    .line 1031
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 1033
    .local v0, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v2, :cond_2c

    .line 1038
    sget-boolean v2, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v2, :cond_1d

    .line 1039
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v1

    .line 1040
    .local v1, sub:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/phone/PhoneApp;->setmActiveSubscription(I)V

    .line 1044
    .end local v1           #sub:I
    :cond_1d
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    .line 1045
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_29

    const-string v2, "- showing incoming call (unknown connection appeared)..."

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1046
    :cond_29
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    .line 1048
    :cond_2c
    return-void
.end method

.method private registerForNotifications()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1360
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1361
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1362
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1363
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1364
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1365
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x1a

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1366
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1367
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1368
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x7

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1369
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x9

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1370
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1371
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xb

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1372
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xc

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1373
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x22

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1374
    return-void
.end method

.method private resetAudioStateAfterDisconnect()V
    .registers 4

    .prologue
    .line 1823
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_9

    .line 1824
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 1829
    :cond_9
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 1831
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 1832
    return-void
.end method

.method private showIncomingCall()V
    .registers 4

    .prologue
    .line 1070
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showIncomingCall()...  phone state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1075
    :try_start_1c
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const-string v2, "call"

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_57

    .line 1079
    :goto_25
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getMMIDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1080
    .local v0, mmiDialog:Landroid/app/AlertDialog;
    if-eqz v0, :cond_39

    .line 1081
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_36

    const-string v1, "in showIncomingCall: Trying to hide the ussd dialog"

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1082
    :cond_36
    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 1114
    :cond_39
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    .line 1115
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v2, Lcom/android/phone/PhoneApp$WakeState;->FULL:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 1122
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_4f

    const-string v1, "- updating notification from showIncomingCall()..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1123
    :cond_4f
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->updateNotificationAndLaunchIncomingCallUi()V

    .line 1124
    return-void

    .line 1076
    .end local v0           #mmiDialog:Landroid/app/AlertDialog;
    :catch_57
    move-exception v1

    goto :goto_25
.end method

.method private showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V
    .registers 12
    .parameter "c"
    .parameter "date"

    .prologue
    .line 2527
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, p1, p0, v3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v7

    .line 2529
    .local v7, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    if-eqz v7, :cond_51

    .line 2533
    iget-boolean v0, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v0, :cond_33

    .line 2536
    iget-object v6, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2541
    .local v6, ci:Lcom/android/internal/telephony/CallerInfo;
    iget-object v1, v6, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2542
    .local v1, name:Ljava/lang/String;
    iget-object v2, v6, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2543
    .local v2, number:Ljava/lang/String;
    iget v0, v6, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v0, v3, :cond_34

    .line 2544
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0005

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2551
    :goto_29
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v3, v6, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 2559
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #number:Ljava/lang/String;
    .end local v6           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_33
    :goto_33
    return-void

    .line 2545
    .restart local v1       #name:Ljava/lang/String;
    .restart local v2       #number:Ljava/lang/String;
    .restart local v6       #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_34
    iget v0, v6, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v0, v3, :cond_46

    .line 2546
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0004

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    .line 2548
    :cond_46
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    iget v3, v6, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {v0, v6, v2, v3}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_29

    .line 2557
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #number:Ljava/lang/String;
    .end local v6           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_51
    const-string v0, "CallNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showMissedCallNotification: got null CallerInfo for Connection "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method

.method private startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V
    .registers 11
    .parameter "c"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 874
    const/4 v3, 0x0

    .line 875
    .local v3, shouldStartQuery:Z
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v6

    .line 876
    :try_start_6
    iget v7, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    if-nez v7, :cond_e

    .line 877
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 878
    const/4 v3, 0x1

    .line 880
    :cond_e
    monitor-exit v6
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_2c

    .line 883
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v4

    .line 884
    .local v4, subscription:I
    if-eqz v3, :cond_75

    .line 887
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 888
    .local v1, context:Landroid/content/Context;
    if-nez v1, :cond_2f

    .line 951
    .end local v1           #context:Landroid/content/Context;
    :goto_2b
    return-void

    .line 880
    .end local v4           #subscription:I
    :catchall_2c
    move-exception v5

    :try_start_2d
    monitor-exit v6
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v5

    .line 891
    .restart local v1       #context:Landroid/content/Context;
    .restart local v4       #subscription:I
    :cond_2f
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v6

    if-eqz v6, :cond_68

    if-ne v4, v5, :cond_68

    const/16 v2, 0x8

    .line 893
    .local v2, ringtype:I
    :goto_3d
    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v6

    sput-object v6, Lcom/android/phone/CallNotifier;->mSettingUri:Landroid/net/Uri;

    .line 897
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_6a

    if-ne v4, v5, :cond_6a

    sget-object v5, Landroid/provider/Settings$System;->HUAWEI_RINGTONE2_URI:Landroid/net/Uri;

    :goto_53
    invoke-virtual {v6, v5}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 907
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, p0, p0}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 912
    .local v0, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-boolean v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v5, :cond_6d

    .line 914
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p0, v8, p0, v5}, Lcom/android/phone/CallNotifier;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V

    goto :goto_2b

    .end local v0           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v2           #ringtype:I
    :cond_68
    move v2, v5

    .line 891
    goto :goto_3d

    .line 897
    .restart local v2       #ringtype:I
    :cond_6a
    sget-object v5, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    goto :goto_53

    .line 917
    .restart local v0       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_6d
    const/16 v5, 0x64

    const-wide/16 v6, 0x1f4

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2b

    .line 926
    .end local v0           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #ringtype:I
    :cond_75
    const v5, 0x112a1

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 933
    sget-boolean v5, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v5, :cond_8e

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v5}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_8e

    .line 934
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v5}, Lcom/android/phone/Ringer;->stopRing()V

    .line 939
    :cond_8e
    sget-boolean v5, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v5, :cond_a4

    .line 940
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v5, v4}, Lcom/android/phone/Ringer;->ring(I)V

    .line 948
    :goto_97
    sget-boolean v5, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v5, :cond_a0

    const-string v5, "- showing incoming call (couldn\'t start query)..."

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 949
    :cond_a0
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    goto :goto_2b

    .line 942
    :cond_a4
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v5}, Lcom/android/phone/Ringer;->ring()V

    goto :goto_97
.end method

.method private stopAndStartRing(Landroid/content/Context;I)V
    .registers 7
    .parameter "c"
    .parameter "subscription"

    .prologue
    const/4 v1, 0x1

    .line 2772
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v2}, Lcom/android/phone/Ringer;->stopRing()V

    .line 2774
    if-nez p2, :cond_30

    move v0, v1

    .line 2776
    .local v0, altSub:I
    :goto_9
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2, v0}, Lcom/android/phone/PhoneUtils;->hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 2777
    invoke-static {p1, v0}, Lcom/android/phone/PhoneUtils;->getRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/android/phone/CallNotifier;->mSettingUri:Landroid/net/Uri;

    .line 2780
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_32

    if-ne v0, v1, :cond_32

    sget-object v1, Landroid/provider/Settings$System;->HUAWEI_RINGTONE2_URI:Landroid/net/Uri;

    :goto_27
    invoke-virtual {v2, v1}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 2786
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v1}, Lcom/android/phone/Ringer;->ring()V

    .line 2788
    :cond_2f
    return-void

    .line 2774
    .end local v0           #altSub:I
    :cond_30
    const/4 v0, 0x0

    goto :goto_9

    .line 2780
    .restart local v0       #altSub:I
    :cond_32
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    goto :goto_27
.end method


# virtual methods
.method createSignalInfoToneGenerator()V
    .registers 5

    .prologue
    .line 1315
    :try_start_0
    new-instance v1, Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    const/16 v3, 0x50

    invoke-direct {v1, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_a} :catch_b

    .line 1322
    :goto_a
    return-void

    .line 1317
    :catch_b
    move-exception v0

    .line 1318
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "CallNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallNotifier: Exception caught while creating mSignalInfoToneGenerator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_a
.end method

.method getIsCdmaRedialCall()Z
    .registers 2

    .prologue
    .line 2520
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    return v0
.end method

.method getPreviousCdmaCallState()Lcom/android/internal/telephony/Call$State;
    .registers 2

    .prologue
    .line 2506
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method getVoicePrivacyState()Z
    .registers 2

    .prologue
    .line 2513
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    .line 271
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_1c6

    .line 441
    :cond_6
    :goto_6
    return-void

    .line 273
    :sswitch_7
    const-string v3, "RINGING... (new)"

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 274
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->onNewRingingConnection(Landroid/os/AsyncResult;)V

    goto :goto_6

    .line 283
    :sswitch_14
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_6

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v3, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_6

    .line 284
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v1, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    .line 286
    .local v1, pb:Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v4, :cond_51

    iget-boolean v3, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    if-nez v3, :cond_51

    .line 288
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_3d

    const-string v3, "RINGING... (PHONE_INCOMING_RING event)"

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 292
    :cond_3d
    sget-boolean v3, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v3, :cond_4b

    .line 294
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSubscription()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/phone/Ringer;->ring(I)V

    goto :goto_6

    .line 296
    :cond_4b
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v3}, Lcom/android/phone/Ringer;->ring()V

    goto :goto_6

    .line 301
    :cond_51
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_6

    const-string v3, "RING before NEW_RING, skipping"

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_6

    .line 307
    .end local v1           #pb:Lcom/android/internal/telephony/PhoneBase;
    :sswitch_5b
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_6

    .line 311
    :sswitch_63
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_6c

    const-string v3, "DISCONNECT"

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 312
    :cond_6c
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->onDisconnect(Landroid/os/AsyncResult;)V

    goto :goto_6

    .line 316
    :sswitch_74
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->onUnknownConnectionAppeared(Landroid/os/AsyncResult;)V

    goto :goto_6

    .line 323
    :sswitch_7c
    const-string v3, "CallNotifier"

    const-string v4, "CallerInfo query took too long; manually starting ringer"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCustomRingQueryComplete()V

    goto :goto_6

    .line 333
    :sswitch_87
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/phone/CallNotifier;->onMwiChanged(Z)V

    goto/16 :goto_6

    .line 337
    :sswitch_94
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onBatteryLow()V

    goto/16 :goto_6

    .line 341
    :sswitch_99
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_a2

    const-string v3, "Received PHONE_CDMA_CALL_WAITING event"

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 342
    :cond_a2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->onCdmaCallWaiting(Landroid/os/AsyncResult;)V

    goto/16 :goto_6

    .line 346
    :sswitch_ab
    const-string v3, "CallNotifier"

    const-string v4, "Received CDMA_CALL_WAITING_REJECT event"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCdmaCallWaitingReject()V

    goto/16 :goto_6

    .line 351
    :sswitch_b7
    const-string v3, "CallNotifier"

    const-string v4, "Received CALLWAITING_CALLERINFO_DISPLAY_DONE event"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iput-boolean v5, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 353
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCdmaCallWaitingReject()V

    goto/16 :goto_6

    .line 357
    :sswitch_c5
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_ce

    const-string v3, "Received CALLWAITING_ADDCALL_DISABLE_TIMEOUT event ..."

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 359
    :cond_ce
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3, v5}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V

    .line 360
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    goto/16 :goto_6

    .line 364
    :sswitch_dc
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_e5

    const-string v3, "Received PHONE_STATE_DISPLAYINFO event"

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 365
    :cond_e5
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->onDisplayInfo(Landroid/os/AsyncResult;)V

    goto/16 :goto_6

    .line 369
    :sswitch_ee
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_f7

    const-string v3, "Received PHONE_STATE_SIGNALINFO event"

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 370
    :cond_f7
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->onSignalInfo(Landroid/os/AsyncResult;)V

    goto/16 :goto_6

    .line 374
    :sswitch_100
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_109

    const-string v3, "Received Display Info notification done event ..."

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 375
    :cond_109
    invoke-static {}, Lcom/android/phone/CdmaDisplayInfo;->dismissDisplayInfoRecord()V

    goto/16 :goto_6

    .line 379
    :sswitch_10e
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_117

    const-string v3, "EVENT_OTA_PROVISION_CHANGE..."

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 380
    :cond_117
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3, p1}, Lcom/android/phone/PhoneApp;->handleOtaspEvent(Landroid/os/Message;)V

    goto/16 :goto_6

    .line 384
    :sswitch_11e
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_127

    const-string v3, "PHONE_ENHANCED_VP_ON..."

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 385
    :cond_127
    iget-boolean v3, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    if-nez v3, :cond_6

    .line 386
    const/4 v2, 0x6

    .line 387
    .local v2, toneToPlay:I
    new-instance v3, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v3, p0, v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 388
    iput-boolean v5, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 390
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_13f

    const-string v3, "- updating notification for VP state..."

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 391
    :cond_13f
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v3}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_6

    .line 396
    .end local v2           #toneToPlay:I
    :sswitch_148
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_151

    const-string v3, "PHONE_ENHANCED_VP_OFF..."

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 397
    :cond_151
    iget-boolean v3, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    if-eqz v3, :cond_6

    .line 398
    const/4 v2, 0x6

    .line 399
    .restart local v2       #toneToPlay:I
    new-instance v3, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v3, p0, v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 400
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 402
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_16a

    const-string v3, "- updating notification for VP state..."

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 403
    :cond_16a
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v3}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_6

    .line 408
    .end local v2           #toneToPlay:I
    :sswitch_173
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->onRingbackTone(Landroid/os/AsyncResult;)V

    goto/16 :goto_6

    .line 412
    :sswitch_17c
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onResendMute()V

    goto/16 :goto_6

    .line 416
    :sswitch_181
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v3}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_6

    .line 421
    :sswitch_18a
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onPhoneAutoAnswer()V

    goto/16 :goto_6

    .line 425
    :sswitch_18f
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_198

    const-string v3, "Received Supplementary Notification"

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 427
    :cond_198
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_6

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v3, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_6

    .line 428
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v3, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    sput-object v3, Lcom/android/phone/CallNotifier;->suppSvcNotification:Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 429
    sget-object v3, Lcom/android/phone/CallNotifier;->suppSvcNotification:Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->getSuppSvcNotificationText(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, callForwardText:Ljava/lang/String;
    sget-boolean v3, Lcom/android/phone/CallNotifier;->isHideCallForward:Z

    if-nez v3, :cond_6

    .line 432
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    .line 271
    nop

    :sswitch_data_1c6
    .sparse-switch
        0x1 -> :sswitch_5b
        0x2 -> :sswitch_7
        0x3 -> :sswitch_63
        0x4 -> :sswitch_74
        0x5 -> :sswitch_14
        0x6 -> :sswitch_dc
        0x7 -> :sswitch_ee
        0x8 -> :sswitch_99
        0x9 -> :sswitch_11e
        0xa -> :sswitch_148
        0xb -> :sswitch_173
        0xc -> :sswitch_17c
        0xd -> :sswitch_18a
        0x15 -> :sswitch_87
        0x16 -> :sswitch_94
        0x17 -> :sswitch_b7
        0x18 -> :sswitch_c5
        0x19 -> :sswitch_100
        0x1a -> :sswitch_10e
        0x1b -> :sswitch_ab
        0x1c -> :sswitch_181
        0x22 -> :sswitch_18f
        0x64 -> :sswitch_7c
    .end sparse-switch
.end method

.method isRinging()Z
    .registers 2

    .prologue
    .line 1870
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v0

    return v0
.end method

.method listen()V
    .registers 4

    .prologue
    .line 262
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 264
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 267
    return-void
.end method

.method protected onCfiChanged(Z)V
    .registers 3
    .parameter "visible"

    .prologue
    .line 1863
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0, p1}, Lcom/android/phone/NotificationMgr;->updateCfi(Z)V

    .line 1864
    return-void
.end method

.method protected onMwiChanged(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 1839
    sget-boolean v0, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v0, :cond_c

    .line 1845
    const-string v0, "CallNotifier"

    const-string v1, "Got onMwiChanged() on non-voice-capable device! Ignoring..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    :goto_b
    return-void

    .line 1849
    :cond_c
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0, p1}, Lcom/android/phone/NotificationMgr;->updateMwi(Z)V

    goto :goto_b
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .registers 13
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    const/4 v2, -0x1

    .line 1383
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_19

    .line 1386
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v1, p3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iget-object v2, p3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget-object v3, p3, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1435
    :cond_18
    :goto_18
    return-void

    .line 1388
    .restart local p2
    :cond_19
    instance-of v0, p2, Lcom/android/phone/CallNotifier;

    if-eqz v0, :cond_18

    .line 1393
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1395
    const/4 v6, 0x0

    .line 1396
    .local v6, isQueryExecutionTimeOK:Z
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 1397
    :try_start_26
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    if-ne v0, v2, :cond_2e

    .line 1398
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 1399
    const/4 v6, 0x1

    .line 1401
    :cond_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_63

    .line 1403
    if-eqz v6, :cond_18

    .line 1406
    iget-boolean v0, p3, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    if-eqz v0, :cond_70

    .line 1407
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_3e

    const-string v0, "send to voicemail flag detected. hanging up."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1409
    :cond_3e
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->setSilentHangupFlag()V

    .line 1413
    sget-boolean v0, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_66

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getmRingingSubscription()I

    move-result v0

    if-eq v2, v0, :cond_66

    .line 1414
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getmRingingSubscription()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getFirstRingingCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v8

    .line 1416
    .local v8, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_18

    .line 1401
    .end local v8           #ringingCall:Lcom/android/internal/telephony/Call;
    :catchall_63
    move-exception v0

    :try_start_64
    monitor-exit v1
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v0

    .line 1418
    :cond_66
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_18

    .line 1426
    :cond_70
    iget-object v0, p3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    if-eqz v0, :cond_86

    .line 1427
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_7d

    const-string v0, "custom ringtone found, setting up ringer."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1428
    :cond_7d
    check-cast p2, Lcom/android/phone/CallNotifier;

    .end local p2
    iget-object v7, p2, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    .line 1429
    .local v7, r:Lcom/android/phone/Ringer;
    iget-object v0, p3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v7, v0}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 1432
    .end local v7           #r:Lcom/android/phone/Ringer;
    :cond_86
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCustomRingQueryComplete()V

    goto :goto_18
.end method

.method restartRinger()V
    .registers 4

    .prologue
    .line 1890
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_9

    const-string v1, "restartRinger()..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1891
    :cond_9
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1918
    :cond_f
    :goto_f
    return-void

    .line 1895
    :cond_10
    const/4 v0, 0x0

    .line 1897
    .local v0, ringingCall:Lcom/android/internal/telephony/Call;
    sget-boolean v1, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v1, :cond_66

    const/4 v1, -0x1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getmRingingSubscription()I

    move-result v2

    if-eq v1, v2, :cond_66

    .line 1898
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getmRingingSubscription()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->getFirstRingingCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1907
    :goto_2e
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_4c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- ringingCall state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1908
    :cond_4c
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_f

    .line 1910
    sget-boolean v1, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v1, :cond_6d

    .line 1911
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getmRingingSubscription()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/phone/Ringer;->ring(I)V

    goto :goto_f

    .line 1900
    :cond_66
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_2e

    .line 1913
    :cond_6d
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v1}, Lcom/android/phone/Ringer;->ring()V

    goto :goto_f
.end method

.method sendBatteryLow()V
    .registers 3

    .prologue
    .line 1925
    const/16 v1, 0x16

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1926
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->sendMessage(Landroid/os/Message;)Z

    .line 1927
    return-void
.end method

.method sendCdmaCallWaitingReject()V
    .registers 2

    .prologue
    .line 2400
    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->sendEmptyMessage(I)Z

    .line 2401
    return-void
.end method

.method sendMwiChangedDelayed(J)V
    .registers 5
    .parameter "delayMillis"

    .prologue
    .line 1857
    const/16 v1, 0x15

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1858
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/phone/CallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1859
    return-void
.end method

.method silenceRinger()V
    .registers 2

    .prologue
    .line 1878
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    .line 1879
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "stopRing()... (silenceRinger)"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1880
    :cond_c
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->stopRing()V

    .line 1881
    return-void
.end method

.method public startIncallTone()V
    .registers 3

    .prologue
    .line 2797
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-nez v0, :cond_11

    .line 2798
    new-instance v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 2799
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 2801
    :cond_11
    return-void
.end method

.method stopSignalInfoTone()V
    .registers 3

    .prologue
    .line 2337
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "stopSignalInfoTone: Stopping SignalInfo tone player"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2338
    :cond_9
    new-instance v0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    const/16 v1, 0x62

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    .line 2339
    return-void
.end method

.method updateCallNotifierRegistrationsAfterRadioTechnologyChange()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1325
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "CallNotifier"

    const-string v1, "updateCallNotifierRegistrationsAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    :cond_c
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 1328
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 1329
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 1330
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 1331
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 1332
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 1333
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 1334
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 1335
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 1336
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 1337
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    .line 1338
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 1341
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_51

    .line 1342
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 1346
    :cond_51
    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1349
    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1351
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 1352
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 1355
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->registerForNotifications()V

    .line 1356
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->createSignalInfoToneGenerator()V

    .line 1357
    return-void
.end method
