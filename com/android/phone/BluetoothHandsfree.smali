.class public Lcom/android/phone/BluetoothHandsfree;
.super Ljava/lang/Object;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BluetoothHandsfree$34;,
        Lcom/android/phone/BluetoothHandsfree$DebugThread;,
        Lcom/android/phone/BluetoothHandsfree$VendorSpecificCommandHandler;,
        Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;,
        Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;,
        Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;,
        Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;,
        Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;
    }
.end annotation


# static fields
.field private static final BATTERY_CHANGED:I = 0x9

.field private static final BRSF_AG_EC_NR:I = 0x2

.field private static final BRSF_AG_ENHANCED_CALL_CONTROL:I = 0x80

.field private static final BRSF_AG_ENHANCED_CALL_STATUS:I = 0x40

.field private static final BRSF_AG_ENHANCED_ERR_RESULT_CODES:I = 0x100

.field private static final BRSF_AG_IN_BAND_RING:I = 0x8

.field private static final BRSF_AG_REJECT_CALL:I = 0x20

.field private static final BRSF_AG_THREE_WAY_CALLING:I = 0x1

.field private static final BRSF_AG_VOICE_RECOG:I = 0x4

.field private static final BRSF_AG_VOICE_TAG_NUMBE:I = 0x10

.field private static final BRSF_HF_CLIP:I = 0x4

.field private static final BRSF_HF_CW_THREE_WAY_CALLING:I = 0x2

.field private static final BRSF_HF_EC_NR:I = 0x1

.field private static final BRSF_HF_ENHANCED_CALL_CONTROL:I = 0x40

.field private static final BRSF_HF_ENHANCED_CALL_STATUS:I = 0x20

.field private static final BRSF_HF_REMOTE_VOL_CONTROL:I = 0x10

.field private static final BRSF_HF_VOICE_REG_ACT:I = 0x8

.field private static final CDMA_MAX_CONNECTIONS:I = 0x2

.field private static final CHECK_CALL_STARTED:I = 0x4

.field private static final CHECK_VOICE_RECOGNITION_STARTED:I = 0x5

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final GSM_MAX_CONNECTIONS:I = 0x6

.field private static final HEADSET_NAME:Ljava/lang/String; = "bt_headset_name"

.field private static final HEADSET_NREC:Ljava/lang/String; = "bt_headset_nrec"

.field private static final MESSAGE_CHECK_PENDING_SCO:I = 0x6

.field private static final SCO_AUDIO_STATE:I = 0x7

.field private static final SCO_CLOSED:I = 0x3

.field private static final SCO_CONNECTION_CHECK:I = 0x8

.field private static final SIGNAL_STRENGTH_CHANGED:I = 0xa

.field private static final START_CALL_TIMEOUT:I = 0x2710

.field private static final START_VOICE_RECOGNITION_TIMEOUT:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "Bluetooth HS/HF"

.field public static final TYPE_HANDSFREE:I = 0x2

.field public static final TYPE_HEADSET:I = 0x1

.field public static final TYPE_UNKNOWN:I

.field private static final VDBG:Z

.field private static sInstance:Lcom/android/phone/BluetoothHandsfree;

.field private static sVoiceCommandIntent:Landroid/content/Intent;


# instance fields
.field private mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

.field private mA2dpState:I

.field private mA2dpSuspended:Z

.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioPossible:Z

.field private mAudioState:I

.field private mBgndEarliestConnectionTime:J

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private final mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

.field private final mCM:Lcom/android/internal/telephony/CallManager;

.field private mCdmaCallsSwapped:Z

.field private mCdmaIsSecondCallActive:Z

.field mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

.field private mClccTimestamps:[J

.field private mClccUsed:[Z

.field private mClip:Z

.field private mCmee:Z

.field private mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

.field private mConnectedSco:Landroid/bluetooth/BluetoothSocket;

.field private final mContext:Landroid/content/Context;

.field private mDTMFUtil:Lcom/broadcom/bt/app/phone/DTMFUtil;

.field private mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

.field private mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

.field private mHeadset:Landroid/bluetooth/HeadsetBase;

.field private mHeadsetType:I

.field private mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

.field private mIndicatorsActivations:I

.field private mIndicatorsEnabled:Z

.field private mLocalBrsf:I

.field private mPendingAudioState:Z

.field private mPendingSco:Z

.field private mPhoneState:Lcom/android/internal/telephony/Phone$State;

.field private final mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mRemoteBrsf:I

.field private mScoGain:I

.field private mSendChldResponse:Z

.field private mServiceConnectionEstablished:Z

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

.field private mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mUserWantsAudio:Z

.field private mVirtualCallStarted:Z

.field private mVoiceRecognitionStarted:Z

.field private mWaitingForCallStart:Z

.field private mWaitingForVoiceRecognition:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 85
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)V
    .registers 13
    .parameter "context"
    .parameter "cm"

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 244
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object v9, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    .line 117
    iput-object v9, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    .line 118
    iput-object v9, p0, Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    .line 138
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/phone/BluetoothHandsfree;->mBgndEarliestConnectionTime:J

    .line 139
    iput-boolean v5, p0, Lcom/android/phone/BluetoothHandsfree;->mClip:Z

    .line 140
    iput-boolean v5, p0, Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z

    .line 141
    iput-boolean v5, p0, Lcom/android/phone/BluetoothHandsfree;->mCmee:Z

    .line 157
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;

    .line 158
    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    iput-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 162
    const/high16 v3, -0x8000

    iput v3, p0, Lcom/android/phone/BluetoothHandsfree;->mScoGain:I

    .line 172
    iput v5, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    .line 173
    iput v5, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    .line 181
    iput-boolean v5, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    .line 182
    iput-boolean v5, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaCallsSwapped:Z

    .line 206
    iput-boolean v5, p0, Lcom/android/phone/BluetoothHandsfree;->mVirtualCallStarted:Z

    .line 1698
    new-instance v3, Lcom/android/phone/BluetoothHandsfree$1;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$1;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    iput-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 245
    iput-object p2, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 246
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    .line 247
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 248
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v3, :cond_fb

    move v0, v4

    .line 249
    .local v0, bluetoothCapable:Z
    :goto_42
    iput-object v9, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    .line 250
    iput v5, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    .line 251
    if-eqz v0, :cond_52

    .line 252
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v8, 0x2

    invoke-virtual {v3, v6, v7, v8}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 255
    :cond_52
    iput v5, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I

    .line 256
    iput-object v9, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    .line 257
    iput-boolean v5, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    .line 260
    iput-boolean v5, p0, Lcom/android/phone/BluetoothHandsfree;->mSendChldResponse:Z

    .line 261
    new-instance v3, Lcom/broadcom/bt/app/phone/DTMFUtil;

    invoke-direct {v3, p1}, Lcom/broadcom/bt/app/phone/DTMFUtil;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mDTMFUtil:Lcom/broadcom/bt/app/phone/DTMFUtil;

    .line 264
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mPowerManager:Landroid/os/PowerManager;

    .line 265
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mPowerManager:Landroid/os/PowerManager;

    const-string v6, "Bluetooth HS/HF:StartCall"

    invoke-virtual {v3, v4, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 267
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 268
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mPowerManager:Landroid/os/PowerManager;

    const-string v6, "Bluetooth HS/HF:VoiceRecognition"

    invoke-virtual {v3, v4, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 270
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 272
    const/16 v3, 0x163

    iput v3, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    .line 278
    sget-object v3, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    if-nez v3, :cond_a1

    .line 279
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    .line 280
    sget-object v3, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    const/high16 v6, 0x1000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 282
    :cond_a1
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-object v6, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    invoke-virtual {v3, v6, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_bd

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/bluetooth/BluetoothHeadset;->isBluetoothVoiceDialingEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 284
    iget v3, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    .line 287
    :cond_bd
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "BluetoothHandsfreeHandler"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 288
    .local v2, thread:Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 289
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 290
    .local v1, looper:Landroid/os/Looper;
    new-instance v3, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    invoke-direct {v3, p0, v1, v9}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;-><init>(Lcom/android/phone/BluetoothHandsfree;Landroid/os/Looper;Lcom/android/phone/BluetoothHandsfree$1;)V

    iput-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    .line 291
    new-instance v3, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    invoke-direct {v3, p0, v9}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$1;)V

    iput-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    .line 292
    iput-boolean v4, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    .line 293
    iput-boolean v5, p0, Lcom/android/phone/BluetoothHandsfree;->mVirtualCallStarted:Z

    .line 294
    iput-boolean v5, p0, Lcom/android/phone/BluetoothHandsfree;->mVoiceRecognitionStarted:Z

    .line 297
    new-instance v3, Lcom/android/phone/BluetoothAtPhonebook;

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p0}, Lcom/android/phone/BluetoothAtPhonebook;-><init>(Landroid/content/Context;Lcom/android/phone/BluetoothHandsfree;)V

    iput-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

    .line 298
    const-string v3, "audio"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    .line 299
    invoke-virtual {p0, v5}, Lcom/android/phone/BluetoothHandsfree;->cdmaSetSecondCallState(Z)V

    .line 302
    if-eqz v0, :cond_fa

    .line 303
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->resetAtState()V

    .line 306
    :cond_fa
    return-void

    .end local v0           #bluetoothCapable:Z
    .end local v1           #looper:Landroid/os/Looper;
    .end local v2           #thread:Landroid/os/HandlerThread;
    :cond_fb
    move v0, v5

    .line 248
    goto/16 :goto_42
.end method

.method static synthetic access$1100(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/BluetoothHandsfree;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->resetConnectScoThread()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/BluetoothHandsfree;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->closeConnectedSco()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/phone/BluetoothHandsfree;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/phone/BluetoothHandsfree;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mClip:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mClip:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Call;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/phone/BluetoothHandsfree;)Landroid/telephony/ServiceState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceState:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/phone/BluetoothHandsfree;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/phone/BluetoothHandsfree;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I

    return v0
.end method

.method static synthetic access$2902(Lcom/android/phone/BluetoothHandsfree;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z

    return p1
.end method

.method static synthetic access$3200()Z
    .registers 1

    .prologue
    .line 83
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    return v0
.end method

.method static synthetic access$3300(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-static {p0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/phone/BluetoothHandsfree;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->connectScoThread()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothAtPhonebook;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/phone/BluetoothHandsfree;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIndicatorsActivations:I

    return v0
.end method

.method static synthetic access$3672(Lcom/android/phone/BluetoothHandsfree;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIndicatorsActivations:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIndicatorsActivations:I

    return v0
.end method

.method static synthetic access$3676(Lcom/android/phone/BluetoothHandsfree;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIndicatorsActivations:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIndicatorsActivations:I

    return v0
.end method

.method static synthetic access$3700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Call;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Call;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->allowAudioAnytime()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone$State;)Lcom/android/internal/telephony/Phone$State;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isVirtualCallInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/android/phone/BluetoothHandsfree;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->callStarted()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mSendChldResponse:Z

    return v0
.end method

.method static synthetic access$4402(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mSendChldResponse:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/android/phone/BluetoothHandsfree;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    return v0
.end method

.method static synthetic access$4502(Lcom/android/phone/BluetoothHandsfree;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    return p1
.end method

.method static synthetic access$4600(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaCallsSwapped:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/android/phone/BluetoothHandsfree;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBgndEarliestConnectionTime:J

    return-wide v0
.end method

.method static synthetic access$4702(Lcom/android/phone/BluetoothHandsfree;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-wide p1, p0, Lcom/android/phone/BluetoothHandsfree;->mBgndEarliestConnectionTime:J

    return-wide p1
.end method

.method static synthetic access$4800(Lcom/android/phone/BluetoothHandsfree;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    return v0
.end method

.method static synthetic access$4900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothSocket;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z

    return v0
.end method

.method static synthetic access$5102(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    return v0
.end method

.method static synthetic access$5302(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    return p1
.end method

.method static synthetic access$5400(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isA2dpMultiProfile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothDevice;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5900(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothHeadset;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$5902(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingAudioState:Z

    return v0
.end method

.method static synthetic access$6002(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingAudioState:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/android/phone/BluetoothHandsfree;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioState:I

    return v0
.end method

.method static synthetic access$6202(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$6700(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->hasActiveCallsImpl()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6800(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/AtCommandResult;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->redial()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/phone/BluetoothHandsfree;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mScoGain:I

    return v0
.end method

.method static synthetic access$6902(Lcom/android/phone/BluetoothHandsfree;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mScoGain:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/HeadsetBase;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/phone/BluetoothHandsfree;I)Landroid/bluetooth/AtCommandResult;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree;->memoryDial(I)Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7100(Lcom/android/phone/BluetoothHandsfree;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->expectCallStart()V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->hasActiveRingingCall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7300(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->hasActiveBgCall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7400(Lcom/android/phone/BluetoothHandsfree;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->broadcastSlcEstablished()V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isIncallAudio()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7600(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCmee:Z

    return v0
.end method

.method static synthetic access$7602(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mCmee:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/phone/BluetoothHandsfree;ILandroid/bluetooth/BluetoothDevice;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothHandsfree;->setAudioState(ILandroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/phone/BluetoothHandsfree;)Lcom/broadcom/bt/app/phone/DTMFUtil;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDTMFUtil:Lcom/broadcom/bt/app/phone/DTMFUtil;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/AtCommandResult;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->cdmaGetClccResult()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8300(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/AtCommandResult;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->gsmGetClccResult()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8400(Lcom/android/phone/BluetoothHandsfree;I)Lcom/android/internal/telephony/Call;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree;->getFirstActiveRingingCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8500(Lcom/android/phone/BluetoothHandsfree;I)Lcom/android/internal/telephony/Call;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree;->getFirstActiveBgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8600(Lcom/android/phone/BluetoothHandsfree;I)Lcom/android/internal/telephony/Call;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8800(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isVoiceRecognitionInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8900(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isCellularCallInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    return-object v0
.end method

.method static synthetic access$9000()Landroid/content/Intent;
    .registers 1

    .prologue
    .line 83
    sget-object v0, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;)Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    return-object p1
.end method

.method static synthetic access$9100(Lcom/android/phone/BluetoothHandsfree;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->expectVoiceRecognition()V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;II[Ljava/lang/Object;Landroid/bluetooth/BluetoothDevice;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 83
    invoke-direct/range {p0 .. p5}, Lcom/android/phone/BluetoothHandsfree;->broadcastVendorSpecificEventIntent(Ljava/lang/String;II[Ljava/lang/Object;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->inDebug()Z

    move-result v0

    return v0
.end method

.method private allowAudioAnytime()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 3401
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->inDebug()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "debug.bt.hfp.audio_anytime"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method private broadcastSlcEstablished()V
    .registers 4

    .prologue
    .line 3640
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3641
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3642
    const-string v1, "android.bluetooth.profile.extra.STATE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3643
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v2}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3644
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 3645
    return-void
.end method

.method private broadcastVendorSpecificEventIntent(Ljava/lang/String;II[Ljava/lang/Object;Landroid/bluetooth/BluetoothDevice;)V
    .registers 9
    .parameter "command"
    .parameter "companyId"
    .parameter "commandType"
    .parameter "arguments"
    .parameter "device"

    .prologue
    .line 1731
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.headset.action.VENDOR_SPECIFIC_HEADSET_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1733
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_CMD"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1734
    const-string v1, "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_CMD_TYPE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1737
    const-string v1, "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_ARGS"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1738
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1740
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.bluetooth.headset.intent.category.companyid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1743
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1744
    return-void
.end method

.method private declared-synchronized callStarted()V
    .registers 2

    .prologue
    .line 3286
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z

    if-eqz v0, :cond_1a

    .line 3287
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z

    .line 3288
    const-string v0, "OK"

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 3289
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3290
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 3293
    :cond_1a
    monitor-exit p0

    return-void

    .line 3286
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private cdmaConnectionToClccEntry(ILcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .registers 16
    .parameter "index"
    .parameter "c"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 2171
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2172
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v11, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v11}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    .line 2174
    .local v1, currCdmaCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    iget-object v11, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v11}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v5

    .line 2177
    .local v5, prevCdmaCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v11, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v5, v11, :cond_8e

    sget-object v11, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v11, :cond_8e

    .line 2181
    const/4 v7, 0x0

    .line 2215
    .local v7, state:I
    :goto_1b
    const/4 v3, 0x0

    .line 2216
    .local v3, mpty:I
    sget-object v11, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v11, :cond_c5

    .line 2217
    sget-object v11, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v5, v11, :cond_c2

    .line 2220
    const/4 v3, 0x1

    .line 2233
    :goto_25
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v11

    if-eqz v11, :cond_c8

    move v2, v9

    .line 2235
    .local v2, direction:I
    :goto_2c
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 2236
    .local v4, number:Ljava/lang/String;
    const/4 v8, -0x1

    .line 2237
    .local v8, type:I
    if-eqz v4, :cond_37

    .line 2238
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v8

    .line 2241
    :cond_37
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "+CLCC: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, p1, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",0,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2242
    .local v6, result:Ljava/lang/String;
    if-eqz v4, :cond_8d

    .line 2243
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2245
    .end local v2           #direction:I
    .end local v3           #mpty:I
    .end local v4           #number:Ljava/lang/String;
    .end local v6           #result:Ljava/lang/String;
    .end local v7           #state:I
    .end local v8           #type:I
    :cond_8d
    :goto_8d
    return-object v6

    .line 2183
    :cond_8e
    sget-object v11, Lcom/android/phone/BluetoothHandsfree$34;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_cc

    .line 2211
    :pswitch_9d
    const/4 v6, 0x0

    goto :goto_8d

    .line 2189
    :pswitch_9f
    if-nez p1, :cond_aa

    .line 2190
    iget-boolean v11, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    if-eqz v11, :cond_a8

    move v7, v9

    .restart local v7       #state:I
    :goto_a6
    goto/16 :goto_1b

    .end local v7           #state:I
    :cond_a8
    move v7, v10

    goto :goto_a6

    .line 2192
    :cond_aa
    iget-boolean v11, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    if-eqz v11, :cond_b1

    move v7, v10

    .line 2194
    .restart local v7       #state:I
    :goto_af
    goto/16 :goto_1b

    .end local v7           #state:I
    :cond_b1
    move v7, v9

    .line 2192
    goto :goto_af

    .line 2196
    :pswitch_b3
    const/4 v7, 0x1

    .line 2197
    .restart local v7       #state:I
    goto/16 :goto_1b

    .line 2199
    .end local v7           #state:I
    :pswitch_b6
    const/4 v7, 0x2

    .line 2200
    .restart local v7       #state:I
    goto/16 :goto_1b

    .line 2202
    .end local v7           #state:I
    :pswitch_b9
    const/4 v7, 0x3

    .line 2203
    .restart local v7       #state:I
    goto/16 :goto_1b

    .line 2205
    .end local v7           #state:I
    :pswitch_bc
    const/4 v7, 0x4

    .line 2206
    .restart local v7       #state:I
    goto/16 :goto_1b

    .line 2208
    .end local v7           #state:I
    :pswitch_bf
    const/4 v7, 0x5

    .line 2209
    .restart local v7       #state:I
    goto/16 :goto_1b

    .line 2227
    .restart local v3       #mpty:I
    :cond_c2
    const/4 v3, 0x0

    goto/16 :goto_25

    .line 2230
    :cond_c5
    const/4 v3, 0x0

    goto/16 :goto_25

    :cond_c8
    move v2, v10

    .line 2233
    goto/16 :goto_2c

    .line 2183
    nop

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_9f
        :pswitch_b6
        :pswitch_b9
        :pswitch_9d
        :pswitch_bc
        :pswitch_bf
        :pswitch_b3
    .end packed-switch
.end method

.method private declared-synchronized cdmaGetClccResult()Landroid/bluetooth/AtCommandResult;
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 2113
    monitor-enter p0

    const/4 v7, 0x2

    :try_start_3
    new-array v0, v7, [Lcom/android/internal/telephony/Connection;

    .line 2116
    .local v0, clccConnections:[Lcom/android/internal/telephony/Connection;
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 2117
    .local v2, foregroundCall:Lcom/android/internal/telephony/Call;
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 2120
    .local v5, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    .line 2123
    .local v6, ringingCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v7, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_4a

    .line 2125
    const/4 v7, 0x0

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    aput-object v8, v0, v7

    .line 2148
    :cond_1c
    :goto_1c
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v7}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v7

    sget-object v8, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v7, v8, :cond_8d

    .line 2150
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/phone/BluetoothHandsfree;->cdmaSetSecondCallState(Z)V

    .line 2157
    :cond_2e
    :goto_2e
    new-instance v4, Landroid/bluetooth/AtCommandResult;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2158
    .local v4, result:Landroid/bluetooth/AtCommandResult;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_35
    array-length v7, v0

    if-ge v3, v7, :cond_a0

    aget-object v7, v0, v3

    if-eqz v7, :cond_a0

    .line 2159
    aget-object v7, v0, v3

    invoke-direct {p0, v3, v7}, Lcom/android/phone/BluetoothHandsfree;->cdmaConnectionToClccEntry(ILcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v1

    .line 2160
    .local v1, clccEntry:Ljava/lang/String;
    if-eqz v1, :cond_47

    .line 2161
    invoke-virtual {v4, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 2158
    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 2126
    .end local v1           #clccEntry:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #result:Landroid/bluetooth/AtCommandResult;
    :cond_4a
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 2128
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 2130
    const/4 v7, 0x0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    aput-object v8, v0, v7

    .line 2131
    const/4 v7, 0x1

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    aput-object v8, v0, v7
    :try_end_68
    .catchall {:try_start_3 .. :try_end_68} :catchall_69

    goto :goto_1c

    .line 2113
    .end local v0           #clccConnections:[Lcom/android/internal/telephony/Connection;
    .end local v2           #foregroundCall:Lcom/android/internal/telephony/Call;
    .end local v5           #ringingCall:Lcom/android/internal/telephony/Call;
    .end local v6           #ringingCallState:Lcom/android/internal/telephony/Call$State;
    :catchall_69
    move-exception v7

    monitor-exit p0

    throw v7

    .line 2133
    .restart local v0       #clccConnections:[Lcom/android/internal/telephony/Connection;
    .restart local v2       #foregroundCall:Lcom/android/internal/telephony/Call;
    .restart local v5       #ringingCall:Lcom/android/internal/telephony/Call;
    .restart local v6       #ringingCallState:Lcom/android/internal/telephony/Call$State;
    :cond_6c
    :try_start_6c
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-gt v7, v8, :cond_7e

    .line 2136
    const/4 v7, 0x0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    aput-object v8, v0, v7

    goto :goto_1c

    .line 2141
    :cond_7e
    const/4 v7, 0x0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    aput-object v8, v0, v7

    .line 2142
    const/4 v7, 0x1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    aput-object v8, v0, v7

    goto :goto_1c

    .line 2151
    :cond_8d
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v7}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v7

    sget-object v8, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v7, v8, :cond_2e

    .line 2153
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/phone/BluetoothHandsfree;->cdmaSetSecondCallState(Z)V
    :try_end_9f
    .catchall {:try_start_6c .. :try_end_9f} :catchall_69

    goto :goto_2e

    .line 2165
    .restart local v3       #i:I
    .restart local v4       #result:Landroid/bluetooth/AtCommandResult;
    :cond_a0
    monitor-exit p0

    return-object v4
.end method

.method private closeConnectedSco()V
    .registers 5

    .prologue
    .line 578
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;

    if-eqz v2, :cond_27

    .line 580
    :try_start_4
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_28

    .line 586
    :goto_9
    const-wide/16 v2, 0x3e8

    :try_start_b
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_e} :catch_31

    .line 590
    :goto_e
    const/4 v0, 0x0

    .line 591
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    if-eqz v2, :cond_19

    .line 592
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v2}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 594
    :cond_19
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 595
    const/16 v2, 0xa

    invoke-direct {p0, v2, v0}, Lcom/android/phone/BluetoothHandsfree;->setAudioState(ILandroid/bluetooth/BluetoothDevice;)V

    .line 597
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;

    .line 599
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_27
    return-void

    .line 581
    :catch_28
    move-exception v1

    .line 582
    .local v1, e:Ljava/io/IOException;
    const-string v2, "Bluetooth HS/HF"

    const-string v3, "Error when closing Sco socket"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 587
    .end local v1           #e:Ljava/io/IOException;
    :catch_31
    move-exception v2

    goto :goto_e
.end method

.method private configAudioParameters()V
    .registers 5

    .prologue
    .line 715
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 716
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_e

    .line 717
    const-string v0, "<unknown>"

    .line 719
    :cond_e
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bt_headset_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bt_headset_nrec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=on"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 720
    return-void
.end method

.method private connectScoThread()V
    .registers 5

    .prologue
    .line 553
    const-class v2, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    monitor-enter v2

    .line 554
    :try_start_3
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    if-nez v1, :cond_33

    .line 555
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 556
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_1a

    .line 557
    const/16 v1, 0xb

    invoke-direct {p0, v1, v0}, Lcom/android/phone/BluetoothHandsfree;->setAudioState(ILandroid/bluetooth/BluetoothDevice;)V

    .line 560
    :cond_1a
    new-instance v1, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v3}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;-><init>(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothDevice;)V

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    .line 562
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    const-string v3, "HandsfreeScoSocketConnectThread"

    invoke-virtual {v1, v3}, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->setName(Ljava/lang/String;)V

    .line 564
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->start()V

    .line 566
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_33
    monitor-exit v2

    .line 567
    return-void

    .line 566
    :catchall_35
    move-exception v1

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method

.method private connectionToClccEntry(ILcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .registers 14
    .parameter "index"
    .parameter "c"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2064
    sget-object v9, Lcom/android/phone/BluetoothHandsfree$34;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_9a

    .line 2084
    :pswitch_11
    const/4 v4, 0x0

    .line 2105
    :cond_12
    :goto_12
    return-object v4

    .line 2066
    :pswitch_13
    const/4 v5, 0x0

    .line 2087
    .local v5, state:I
    :goto_14
    const/4 v2, 0x0

    .line 2088
    .local v2, mpty:I
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2089
    .local v0, call:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_22

    .line 2090
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v9

    if-eqz v9, :cond_95

    move v2, v7

    .line 2093
    :cond_22
    :goto_22
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v9

    if-eqz v9, :cond_97

    move v1, v7

    .line 2095
    .local v1, direction:I
    :goto_29
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 2096
    .local v3, number:Ljava/lang/String;
    const/4 v6, -0x1

    .line 2097
    .local v6, type:I
    if-eqz v3, :cond_34

    .line 2098
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v6

    .line 2101
    :cond_34
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+CLCC: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, p1, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",0,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2102
    .local v4, result:Ljava/lang/String;
    if-eqz v3, :cond_12

    .line 2103
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_12

    .line 2069
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    .end local v1           #direction:I
    .end local v2           #mpty:I
    .end local v3           #number:Ljava/lang/String;
    .end local v4           #result:Ljava/lang/String;
    .end local v5           #state:I
    .end local v6           #type:I
    :pswitch_8b
    const/4 v5, 0x1

    .line 2070
    .restart local v5       #state:I
    goto :goto_14

    .line 2072
    .end local v5           #state:I
    :pswitch_8d
    const/4 v5, 0x2

    .line 2073
    .restart local v5       #state:I
    goto :goto_14

    .line 2075
    .end local v5           #state:I
    :pswitch_8f
    const/4 v5, 0x3

    .line 2076
    .restart local v5       #state:I
    goto :goto_14

    .line 2078
    .end local v5           #state:I
    :pswitch_91
    const/4 v5, 0x4

    .line 2079
    .restart local v5       #state:I
    goto :goto_14

    .line 2081
    .end local v5           #state:I
    :pswitch_93
    const/4 v5, 0x5

    .line 2082
    .restart local v5       #state:I
    goto :goto_14

    .restart local v0       #call:Lcom/android/internal/telephony/Call;
    .restart local v2       #mpty:I
    :cond_95
    move v2, v8

    .line 2090
    goto :goto_22

    :cond_97
    move v1, v8

    .line 2093
    goto :goto_29

    .line 2064
    nop

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_13
        :pswitch_8d
        :pswitch_8f
        :pswitch_11
        :pswitch_91
        :pswitch_93
        :pswitch_8b
    .end packed-switch
.end method

.method private dial(Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;
    .registers 6
    .parameter "number"

    .prologue
    .line 1888
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->terminateScoUsingVirtualVoiceCall()Z

    .line 1889
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1891
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1892
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1898
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->expectCallStart()V

    .line 1899
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    return-object v1
.end method

.method private declared-synchronized expectCallStart()V
    .registers 5

    .prologue
    .line 3277
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z

    .line 3278
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3279
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3280
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_21

    .line 3281
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_23

    .line 3283
    :cond_21
    monitor-exit p0

    return-void

    .line 3277
    .end local v0           #msg:Landroid/os/Message;
    :catchall_23
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized expectVoiceRecognition()V
    .registers 5

    .prologue
    .line 3298
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    .line 3299
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3300
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3301
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_21

    .line 3302
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_23

    .line 3304
    :cond_21
    monitor-exit p0

    return-void

    .line 3298
    .end local v0           #msg:Landroid/os/Message;
    :catchall_23
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getActiveFgCall()Lcom/android/internal/telephony/Call;
    .registers 3

    .prologue
    .line 3696
    sget-boolean v1, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v1, :cond_13

    .line 3697
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v0

    .line 3698
    .local v0, sub:I
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1, v0}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3700
    .end local v0           #sub:I
    :goto_12
    return-object v1

    :cond_13
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    goto :goto_12
.end method

.method private getActiveFgCall(I)Lcom/android/internal/telephony/Call;
    .registers 3
    .parameter "sub"

    .prologue
    .line 3706
    sget-boolean v0, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_b

    .line 3707
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0, p1}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3709
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_a
.end method

.method private getActiveFgCallState()Lcom/android/internal/telephony/Call$State;
    .registers 3

    .prologue
    .line 3715
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3717
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_b

    .line 3718
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 3721
    :goto_a
    return-object v1

    :cond_b
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    goto :goto_a
.end method

.method private declared-synchronized getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 3
    .parameter "device"

    .prologue
    .line 1694
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-nez v0, :cond_9

    const/16 v0, 0xa

    .line 1695
    :goto_7
    monitor-exit p0

    return v0

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_10

    move-result v0

    goto :goto_7

    .line 1694
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .registers 3

    .prologue
    .line 3768
    sget-boolean v1, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v1, :cond_20

    .line 3770
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getmRingingSubscription()I

    move-result v0

    .line 3771
    .local v0, sub:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    .line 3772
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v0

    .line 3774
    :cond_17
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 3776
    .end local v0           #sub:I
    :goto_1f
    return-object v1

    :cond_20
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    goto :goto_1f
.end method

.method private getFirstActiveBgCall()Lcom/android/internal/telephony/Call;
    .registers 3

    .prologue
    .line 3678
    sget-boolean v1, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v1, :cond_13

    .line 3679
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v0

    .line 3680
    .local v0, sub:I
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1, v0}, Lcom/android/phone/PhoneUtils;->getFirstActiveBgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3682
    .end local v0           #sub:I
    :goto_12
    return-object v1

    :cond_13
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    goto :goto_12
.end method

.method private getFirstActiveBgCall(I)Lcom/android/internal/telephony/Call;
    .registers 3
    .parameter "sub"

    .prologue
    .line 3687
    sget-boolean v0, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_b

    .line 3688
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0, p1}, Lcom/android/phone/PhoneUtils;->getFirstActiveBgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3690
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_a
.end method

.method private getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;
    .registers 3

    .prologue
    .line 3654
    sget-boolean v1, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v1, :cond_1e

    .line 3656
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getmRingingSubscription()I

    move-result v0

    .line 3657
    .local v0, sub:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    .line 3658
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v0

    .line 3660
    :cond_17
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1, v0}, Lcom/android/phone/PhoneUtils;->getFirstRingingCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3663
    .end local v0           #sub:I
    :goto_1d
    return-object v1

    :cond_1e
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    goto :goto_1d
.end method

.method private getFirstActiveRingingCall(I)Lcom/android/internal/telephony/Call;
    .registers 3
    .parameter "sub"

    .prologue
    .line 3669
    sget-boolean v0, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_b

    .line 3670
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0, p1}, Lcom/android/phone/PhoneUtils;->getFirstRingingCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3672
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_a
.end method

.method private getState()Lcom/android/internal/telephony/Phone$State;
    .registers 3

    .prologue
    .line 3757
    sget-boolean v1, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v1, :cond_11

    .line 3758
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v0

    .line 3759
    .local v0, sub:I
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getState(I)Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    .line 3761
    .end local v0           #sub:I
    :goto_10
    return-object v1

    :cond_11
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    goto :goto_10
.end method

.method private declared-synchronized gsmGetClccResult()Landroid/bluetooth/AtCommandResult;
    .registers 24

    .prologue
    .line 1981
    monitor-enter p0

    const/16 v21, 0x6

    :try_start_3
    move/from16 v0, v21

    new-array v4, v0, [Lcom/android/internal/telephony/Connection;

    .line 1982
    .local v4, clccConnections:[Lcom/android/internal/telephony/Connection;
    new-instance v16, Ljava/util/LinkedList;

    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedList;-><init>()V

    .line 1983
    .local v16, newConnections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 1987
    .local v7, connections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothHandsfree;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    .line 1988
    .local v11, foregroundCall:Lcom/android/internal/telephony/Call;
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothHandsfree;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 1989
    .local v2, backgroundCall:Lcom/android/internal/telephony/Call;
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothHandsfree;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v18

    .line 1992
    .local v18, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v21

    if-eqz v21, :cond_30

    .line 1993
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1995
    :cond_30
    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v21

    if-eqz v21, :cond_43

    .line 1996
    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1998
    :cond_43
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v21

    if-eqz v21, :cond_56

    .line 1999
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 2003
    :cond_56
    const/16 v21, 0x6

    move/from16 v0, v21

    new-array v6, v0, [Z

    .line 2004
    .local v6, clccUsed:[Z
    const/4 v13, 0x0

    .local v13, i:I
    :goto_5d
    const/16 v21, 0x6

    move/from16 v0, v21

    if-ge v13, v0, :cond_7a

    .line 2005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v21, v0

    aget-boolean v21, v21, v13

    aput-boolean v21, v6, v13

    .line 2006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-boolean v22, v21, v13

    .line 2004
    add-int/lit8 v13, v13, 0x1

    goto :goto_5d

    .line 2008
    :cond_7a
    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_7e
    :goto_7e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_da

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    .line 2009
    .local v3, c:Lcom/android/internal/telephony/Connection;
    const/4 v12, 0x0

    .line 2010
    .local v12, found:Z
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v19

    .line 2011
    .local v19, timestamp:J
    const/4 v13, 0x0

    :goto_90
    const/16 v21, 0x6

    move/from16 v0, v21

    if-ge v13, v0, :cond_b3

    .line 2012
    aget-boolean v21, v6, v13

    if-eqz v21, :cond_be

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccTimestamps:[J

    move-object/from16 v21, v0

    aget-wide v21, v21, v13

    cmp-long v21, v19, v21

    if-nez v21, :cond_be

    .line 2013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aput-boolean v22, v21, v13

    .line 2014
    const/4 v12, 0x1

    .line 2015
    aput-object v3, v4, v13

    .line 2019
    :cond_b3
    if-nez v12, :cond_7e

    .line 2020
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_ba
    .catchall {:try_start_3 .. :try_end_ba} :catchall_bb

    goto :goto_7e

    .line 1981
    .end local v2           #backgroundCall:Lcom/android/internal/telephony/Call;
    .end local v3           #c:Lcom/android/internal/telephony/Connection;
    .end local v4           #clccConnections:[Lcom/android/internal/telephony/Connection;
    .end local v6           #clccUsed:[Z
    .end local v7           #connections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    .end local v11           #foregroundCall:Lcom/android/internal/telephony/Call;
    .end local v12           #found:Z
    .end local v13           #i:I
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v16           #newConnections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    .end local v18           #ringingCall:Lcom/android/internal/telephony/Call;
    .end local v19           #timestamp:J
    :catchall_bb
    move-exception v21

    monitor-exit p0

    throw v21

    .line 2011
    .restart local v2       #backgroundCall:Lcom/android/internal/telephony/Call;
    .restart local v3       #c:Lcom/android/internal/telephony/Connection;
    .restart local v4       #clccConnections:[Lcom/android/internal/telephony/Connection;
    .restart local v6       #clccUsed:[Z
    .restart local v7       #connections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    .restart local v11       #foregroundCall:Lcom/android/internal/telephony/Call;
    .restart local v12       #found:Z
    .restart local v13       #i:I
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v16       #newConnections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    .restart local v18       #ringingCall:Lcom/android/internal/telephony/Call;
    .restart local v19       #timestamp:J
    :cond_be
    add-int/lit8 v13, v13, 0x1

    goto :goto_90

    .line 2041
    .end local v3           #c:Lcom/android/internal/telephony/Connection;
    .end local v12           #found:Z
    .end local v19           #timestamp:J
    .local v8, earliestConnection:Lcom/android/internal/telephony/Connection;
    .local v9, earliestTimestamp:J
    .local v15, j:I
    :cond_c1
    :try_start_c1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aput-boolean v22, v21, v13

    .line 2042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccTimestamps:[J

    move-object/from16 v21, v0

    aput-wide v9, v21, v13

    .line 2043
    aput-object v8, v4, v13

    .line 2044
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 2025
    .end local v8           #earliestConnection:Lcom/android/internal/telephony/Connection;
    .end local v9           #earliestTimestamp:J
    .end local v15           #j:I
    :cond_da
    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_130

    .line 2027
    const/4 v13, 0x0

    .line 2028
    :goto_e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v21, v0

    aget-boolean v21, v21, v13

    if-eqz v21, :cond_ee

    add-int/lit8 v13, v13, 0x1

    goto :goto_e1

    .line 2030
    :cond_ee
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/telephony/Connection;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v9

    .line 2031
    .restart local v9       #earliestTimestamp:J
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/Connection;

    .line 2032
    .restart local v8       #earliestConnection:Lcom/android/internal/telephony/Connection;
    const/4 v15, 0x0

    .restart local v15       #j:I
    :goto_10b
    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v15, v0, :cond_c1

    .line 2033
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/telephony/Connection;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v19

    .line 2034
    .restart local v19       #timestamp:J
    cmp-long v21, v19, v9

    if-gez v21, :cond_12d

    .line 2035
    move-wide/from16 v9, v19

    .line 2036
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #earliestConnection:Lcom/android/internal/telephony/Connection;
    check-cast v8, Lcom/android/internal/telephony/Connection;

    .line 2032
    .restart local v8       #earliestConnection:Lcom/android/internal/telephony/Connection;
    :cond_12d
    add-int/lit8 v15, v15, 0x1

    goto :goto_10b

    .line 2048
    .end local v8           #earliestConnection:Lcom/android/internal/telephony/Connection;
    .end local v9           #earliestTimestamp:J
    .end local v15           #j:I
    .end local v19           #timestamp:J
    :cond_130
    new-instance v17, Landroid/bluetooth/AtCommandResult;

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2049
    .local v17, result:Landroid/bluetooth/AtCommandResult;
    const/4 v13, 0x0

    :goto_13c
    array-length v0, v4

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v13, v0, :cond_161

    .line 2050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v21, v0

    aget-boolean v21, v21, v13

    if-eqz v21, :cond_15e

    .line 2051
    aget-object v21, v4, v13

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v13, v1}, Lcom/android/phone/BluetoothHandsfree;->connectionToClccEntry(ILcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v5

    .line 2052
    .local v5, clccEntry:Ljava/lang/String;
    if-eqz v5, :cond_15e

    .line 2053
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V
    :try_end_15e
    .catchall {:try_start_c1 .. :try_end_15e} :catchall_bb

    .line 2049
    .end local v5           #clccEntry:Ljava/lang/String;
    :cond_15e
    add-int/lit8 v13, v13, 0x1

    goto :goto_13c

    .line 2058
    :cond_161
    monitor-exit p0

    return-object v17
.end method

.method private hasActiveBgCall()Z
    .registers 3

    .prologue
    .line 3748
    sget-boolean v1, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v1, :cond_13

    .line 3749
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v0

    .line 3750
    .local v0, sub:I
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1, v0}, Lcom/android/phone/PhoneUtils;->hasHoldCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v1

    .line 3752
    .end local v0           #sub:I
    :goto_12
    return v1

    :cond_13
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    goto :goto_12
.end method

.method private hasActiveCallsImpl()Z
    .registers 3

    .prologue
    .line 3725
    sget-boolean v1, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v1, :cond_13

    .line 3726
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v0

    .line 3727
    .local v0, sub:I
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1, v0}, Lcom/android/phone/PhoneUtils;->hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v1

    .line 3729
    .end local v0           #sub:I
    :goto_12
    return v1

    :cond_13
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    goto :goto_12
.end method

.method private hasActiveRingingCall()Z
    .registers 3

    .prologue
    .line 3735
    sget-boolean v1, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v1, :cond_1e

    .line 3736
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getmRingingSubscription()I

    move-result v0

    .line 3737
    .local v0, sub:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    .line 3738
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v0

    .line 3740
    :cond_17
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1, v0}, Lcom/android/phone/PhoneUtils;->hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v1

    .line 3743
    .end local v0           #sub:I
    :goto_1d
    return v1

    :cond_1e
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v1

    goto :goto_1d
.end method

.method private inDebug()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 3397
    sget-boolean v1, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v1, :cond_e

    const-string v1, "debug.bt.hfp"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method static init(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)Lcom/android/phone/BluetoothHandsfree;
    .registers 6
    .parameter "context"
    .parameter "cm"

    .prologue
    .line 233
    const-class v1, Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v1

    .line 234
    :try_start_3
    sget-object v0, Lcom/android/phone/BluetoothHandsfree;->sInstance:Lcom/android/phone/BluetoothHandsfree;

    if-nez v0, :cond_12

    .line 235
    new-instance v0, Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/BluetoothHandsfree;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)V

    sput-object v0, Lcom/android/phone/BluetoothHandsfree;->sInstance:Lcom/android/phone/BluetoothHandsfree;

    .line 239
    :goto_e
    sget-object v0, Lcom/android/phone/BluetoothHandsfree;->sInstance:Lcom/android/phone/BluetoothHandsfree;

    monitor-exit v1

    return-object v0

    .line 237
    :cond_12
    const-string v0, "Bluetooth HS/HF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/BluetoothHandsfree;->sInstance:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 240
    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method private initializeHandsfreeAtParser()V
    .registers 5

    .prologue
    .line 2369
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v2}, Landroid/bluetooth/HeadsetBase;->getAtParser()Landroid/bluetooth/AtParser;

    move-result-object v0

    .line 2372
    .local v0, parser:Landroid/bluetooth/AtParser;
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 2376
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    const/16 v2, 0x41

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$5;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$5;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/Character;Landroid/bluetooth/AtCommandHandler;)V

    .line 2388
    const/16 v2, 0x44

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$6;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$6;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/Character;Landroid/bluetooth/AtCommandHandler;)V

    .line 2446
    const-string v2, "+CHUP"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$7;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$7;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2486
    const-string v2, "+BRSF"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$8;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$8;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2518
    const-string v2, "+CCWA"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$9;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$9;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2547
    const-string v2, "+CMER"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$10;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$10;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2606
    const-string v2, "+CMEE"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$11;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$11;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2640
    const-string v2, "+BLDN"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$12;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$12;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2648
    const-string v2, "+CIND"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$13;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$13;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2665
    const-string v2, "+BIA"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$14;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$14;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2692
    const-string v2, "+CSQ"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$15;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$15;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2700
    const-string v2, "+CREG"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$16;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$16;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2709
    const-string v2, "+VTS"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$17;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$17;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2747
    const-string v2, "+CLCC"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$18;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$18;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2784
    const-string v2, "+CHLD"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$19;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$19;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3001
    const-string v2, "+COPS"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$20;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$20;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3038
    const-string v2, "+CPIN"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$21;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$21;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3047
    const-string v2, "+BTRH"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$22;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$22;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3063
    const-string v2, "+CIMI"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$23;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$23;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3077
    const-string v2, "+CLIP"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$24;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$24;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3100
    const-string v2, "+CGSN"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$25;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$25;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3110
    const-string v2, "+CGMM"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$26;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$26;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3124
    const-string v2, "+CGMI"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$27;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$27;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3138
    const-string v2, "+NREC"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$28;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$28;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3153
    const-string v2, "+BVRA"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$29;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$29;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3188
    const-string v2, "+CNUM"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$30;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$30;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3201
    const-string v2, "+VGM"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$31;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$31;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3211
    const-string v2, "+VGS"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$32;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$32;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3227
    const-string v2, "+CPAS"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$33;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$33;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3249
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-virtual {v2, v0}, Lcom/android/phone/BluetoothAtPhonebook;->register(Landroid/bluetooth/AtParser;)V

    .line 3250
    return-void
.end method

.method private initializeHeadsetAtParser()V
    .registers 4

    .prologue
    .line 2280
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getAtParser()Landroid/bluetooth/AtParser;

    move-result-object v0

    .line 2283
    .local v0, parser:Landroid/bluetooth/AtParser;
    const-string v1, "+CKPD"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$2;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$2;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2337
    const-string v1, "+VGM"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$3;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$3;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2347
    const-string v1, "+VGS"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$4;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$4;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2362
    return-void
.end method

.method private isA2dpMultiProfile()Z
    .registers 3

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private isCellularCallInProgress()Z
    .registers 2

    .prologue
    .line 3426
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->hasActiveCallsImpl()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    .line 3429
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isHeadsetConnected()Z
    .registers 2

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    if-nez v0, :cond_a

    .line 628
    :cond_8
    const/4 v0, 0x0

    .line 630
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v0}, Landroid/bluetooth/HeadsetBase;->isConnected()Z

    move-result v0

    goto :goto_9
.end method

.method private isIncallAudio()Z
    .registers 3

    .prologue
    .line 674
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 677
    .local v0, state:Lcom/android/internal/telephony/Call$State;
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_c

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private isVirtualCallInProgress()Z
    .registers 2

    .prologue
    .line 3434
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mVirtualCallStarted:Z

    return v0
.end method

.method private isVoiceRecognitionInProgress()Z
    .registers 2

    .prologue
    .line 3350
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mVoiceRecognitionStarted:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 3649
    const-string v0, "Bluetooth HS/HF"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3650
    return-void
.end method

.method private memoryDial(I)Landroid/bluetooth/AtCommandResult;
    .registers 13
    .parameter "index"

    .prologue
    .line 1921
    const/4 v9, 0x0

    .line 1922
    .local v9, cursor:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 1926
    .local v10, number:Ljava/lang/String;
    :try_start_2
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 1927
    .local v1, contactRef:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "starred = 1"

    const/4 v4, 0x0

    const-string v5, "display_name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1932
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_2e

    .line 1934
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V
    :try_end_27
    .catchall {:try_start_2 .. :try_end_27} :catchall_ac
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_27} :catch_a4

    .line 1967
    if-eqz v9, :cond_2d

    .line 1968
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1969
    const/4 v9, 0x0

    .line 1972
    .end local v1           #contactRef:Landroid/net/Uri;
    :cond_2d
    :goto_2d
    return-object v0

    .line 1937
    .restart local v1       #contactRef:Landroid/net/Uri;
    :cond_2e
    :try_start_2e
    invoke-interface {v9, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1938
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1939
    .local v8, contactId:I
    if-gtz v8, :cond_45

    .line 1941
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V
    :try_end_3e
    .catchall {:try_start_2e .. :try_end_3e} :catchall_ac
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3e} :catch_a4

    .line 1967
    if-eqz v9, :cond_2d

    .line 1968
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1969
    const/4 v9, 0x0

    goto :goto_2d

    .line 1944
    :cond_45
    :try_start_45
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1947
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "data1"

    aput-object v5, v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "is_super_primary DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1953
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_85

    .line 1955
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V
    :try_end_7e
    .catchall {:try_start_45 .. :try_end_7e} :catchall_ac
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_7e} :catch_a4

    .line 1967
    if-eqz v9, :cond_2d

    .line 1968
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1969
    const/4 v9, 0x0

    goto :goto_2d

    .line 1958
    :cond_85
    const/4 v0, 0x0

    :try_start_86
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1959
    if-nez v10, :cond_99

    .line 1961
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V
    :try_end_92
    .catchall {:try_start_86 .. :try_end_92} :catchall_ac
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_92} :catch_a4

    .line 1967
    if-eqz v9, :cond_2d

    .line 1968
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1969
    const/4 v9, 0x0

    goto :goto_2d

    .line 1967
    :cond_99
    if-eqz v9, :cond_9f

    .line 1968
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1969
    const/4 v9, 0x0

    .line 1972
    .end local v1           #contactRef:Landroid/net/Uri;
    .end local v8           #contactId:I
    :cond_9f
    :goto_9f
    invoke-direct {p0, v10}, Lcom/android/phone/BluetoothHandsfree;->dial(Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    goto :goto_2d

    .line 1964
    :catch_a4
    move-exception v0

    .line 1967
    if-eqz v9, :cond_9f

    .line 1968
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1969
    const/4 v9, 0x0

    goto :goto_9f

    .line 1967
    :catchall_ac
    move-exception v0

    if-eqz v9, :cond_b3

    .line 1968
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1969
    const/4 v9, 0x0

    :cond_b3
    throw v0
.end method

.method private redial()Landroid/bluetooth/AtCommandResult;
    .registers 4

    .prologue
    .line 1905
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothAtPhonebook;->getLastDialledNumber()Ljava/lang/String;

    move-result-object v0

    .line 1906
    .local v0, number:Ljava/lang/String;
    if-nez v0, :cond_f

    .line 1911
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1915
    :goto_e
    return-object v1

    :cond_f
    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->dial(Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;

    move-result-object v1

    goto :goto_e
.end method

.method private registerAllVendorSpecificCommands()V
    .registers 4

    .prologue
    .line 2267
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getAtParser()Landroid/bluetooth/AtParser;

    move-result-object v0

    .line 2270
    .local v0, parser:Landroid/bluetooth/AtParser;
    const-string v1, "+XEVENT"

    const/16 v2, 0x55

    invoke-direct {p0, v1, v2, v0}, Lcom/android/phone/BluetoothHandsfree;->registerVendorSpecificCommand(Ljava/lang/String;ILandroid/bluetooth/AtParser;)V

    .line 2273
    return-void
.end method

.method private registerVendorSpecificCommand(Ljava/lang/String;ILandroid/bluetooth/AtParser;)V
    .registers 6
    .parameter "commandName"
    .parameter "companyId"
    .parameter "parser"

    .prologue
    .line 2259
    new-instance v0, Lcom/android/phone/BluetoothHandsfree$VendorSpecificCommandHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/phone/BluetoothHandsfree$VendorSpecificCommandHandler;-><init>(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;ILcom/android/phone/BluetoothHandsfree$1;)V

    invoke-virtual {p3, p1, v0}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2261
    return-void
.end method

.method private resetConnectScoThread()V
    .registers 3

    .prologue
    .line 571
    const-class v1, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    monitor-enter v1

    .line 572
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    .line 573
    monitor-exit v1

    .line 574
    return-void

    .line 573
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method private sendURC(Ljava/lang/String;)V
    .registers 3
    .parameter "urc"

    .prologue
    .line 1877
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1878
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v0, p1}, Landroid/bluetooth/HeadsetBase;->sendURC(Ljava/lang/String;)Z

    .line 1880
    :cond_b
    return-void
.end method

.method private declared-synchronized setAudioState(ILandroid/bluetooth/BluetoothDevice;)V
    .registers 7
    .parameter "state"
    .parameter "device"

    .prologue
    .line 1684
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_16

    .line 1685
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 1686
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingAudioState:Z

    .line 1687
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioState:I
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1c

    .line 1691
    :goto_14
    monitor-exit p0

    return-void

    .line 1690
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p2, p1}, Landroid/bluetooth/BluetoothHeadset;->setAudioState(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1c

    goto :goto_14

    .line 1684
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startDebug()V
    .registers 3

    .prologue
    .line 3406
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    if-nez v0, :cond_15

    .line 3407
    new-instance v0, Lcom/android/phone/BluetoothHandsfree$DebugThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/BluetoothHandsfree$DebugThread;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$1;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    .line 3408
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree$DebugThread;->start()V

    .line 3410
    :cond_15
    return-void
.end method

.method private stopDebug()V
    .registers 2

    .prologue
    .line 3413
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    if-eqz v0, :cond_c

    .line 3414
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree$DebugThread;->interrupt()V

    .line 3415
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    .line 3417
    :cond_c
    return-void
.end method

.method public static typeToString(I)Ljava/lang/String;
    .registers 2
    .parameter "type"

    .prologue
    .line 217
    packed-switch p0, :pswitch_data_e

    .line 225
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 219
    :pswitch_5
    const-string v0, "unknown"

    goto :goto_4

    .line 221
    :pswitch_8
    const-string v0, "headset"

    goto :goto_4

    .line 223
    :pswitch_b
    const-string v0, "handsfree"

    goto :goto_4

    .line 217
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method declared-synchronized audioOff()V
    .registers 3

    .prologue
    .line 1835
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    if-eqz v0, :cond_1e

    .line 1836
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isA2dpMultiProfile()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1837
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v0, :cond_14

    const-string v0, "resuming A2DP stream after disconnecting SCO"

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 1838
    :cond_14
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothA2dp;->resumeSink(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1840
    :cond_1b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    .line 1843
    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z

    .line 1846
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    if-eqz v0, :cond_2d

    .line 1847
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;->shutdown()V

    .line 1848
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    .line 1853
    :cond_2d
    const-class v1, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    monitor-enter v1
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_45

    .line 1854
    :try_start_30
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    if-eqz v0, :cond_3c

    .line 1855
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->shutdown()V

    .line 1856
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->resetConnectScoThread()V

    .line 1858
    :cond_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_42

    .line 1860
    :try_start_3d
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->closeConnectedSco()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_45

    .line 1861
    monitor-exit p0

    return-void

    .line 1858
    :catchall_42
    move-exception v0

    :try_start_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    :try_start_44
    throw v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_45

    .line 1835
    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized audioOn()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1759
    monitor-enter p0

    :try_start_3
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v3

    if-nez v3, :cond_14

    .line 1760
    sget-boolean v2, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v2, :cond_12

    const-string v2, "audioOn(): headset is not connected!"

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_27

    .line 1804
    :cond_12
    :goto_12
    monitor-exit p0

    return v1

    .line 1763
    :cond_14
    :try_start_14
    iget v3, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    iget-boolean v3, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z

    if-nez v3, :cond_2a

    .line 1764
    sget-boolean v2, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v2, :cond_12

    const-string v2, "audioOn(): service connection not yet established!"

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_27

    goto :goto_12

    .line 1759
    :catchall_27
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1768
    :cond_2a
    :try_start_2a
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;

    if-eqz v3, :cond_39

    .line 1769
    sget-boolean v1, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v1, :cond_37

    const-string v1, "audioOn(): audio is already connected"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    :cond_37
    move v1, v2

    .line 1770
    goto :goto_12

    .line 1773
    :cond_39
    iget-boolean v3, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    if-nez v3, :cond_47

    .line 1774
    sget-boolean v2, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v2, :cond_12

    const-string v2, "audioOn(): user requested no audio, ignoring"

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    goto :goto_12

    .line 1780
    :cond_47
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z

    if-eqz v1, :cond_56

    .line 1781
    sget-boolean v1, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v1, :cond_54

    const-string v1, "audioOn(): SCO already pending"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    :cond_54
    move v1, v2

    .line 1782
    goto :goto_12

    .line 1785
    :cond_56
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    .line 1786
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z

    .line 1787
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isA2dpMultiProfile()Z

    move-result v1

    if-eqz v1, :cond_90

    iget v1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_90

    .line 1788
    sget-boolean v1, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v1, :cond_71

    const-string v1, "suspending A2DP stream for SCO"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 1789
    :cond_71
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothA2dp;->suspendSink(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    .line 1790
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    if-eqz v1, :cond_9a

    .line 1791
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z

    .line 1792
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1793
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1799
    .end local v0           #msg:Landroid/os/Message;
    :cond_90
    :goto_90
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z

    if-nez v1, :cond_97

    .line 1800
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->connectScoThread()V

    :cond_97
    move v1, v2

    .line 1804
    goto/16 :goto_12

    .line 1795
    :cond_9a
    const-string v1, "Bluetooth HS/HF"

    const-string v3, "Could not suspend A2DP stream for SCO, going ahead with SCO"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catchall {:try_start_2a .. :try_end_a1} :catchall_27

    goto :goto_90
.end method

.method public cdmaSetSecondCallState(Z)V
    .registers 3
    .parameter "state"

    .prologue
    .line 3626
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    .line 3628
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    if-nez v0, :cond_9

    .line 3629
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaCallsSwapped:Z

    .line 3631
    :cond_9
    return-void
.end method

.method public cdmaSwapSecondCallState()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 3620
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    if-nez v0, :cond_b

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    .line 3621
    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaCallsSwapped:Z

    .line 3622
    return-void

    .line 3620
    :cond_b
    const/4 v0, 0x0

    goto :goto_6
.end method

.method declared-synchronized connectHeadset(Landroid/bluetooth/HeadsetBase;I)V
    .registers 5
    .parameter "headset"
    .parameter "headsetType"

    .prologue
    .line 634
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    .line 635
    iput p2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    .line 638
    const/16 v0, 0x7f

    iput v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIndicatorsActivations:I

    .line 640
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    .line 641
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->initializeHeadsetAtParser()V

    .line 647
    :goto_11
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->registerAllVendorSpecificCommands()V

    .line 649
    invoke-virtual {p1}, Landroid/bluetooth/HeadsetBase;->startEventThread()V

    .line 650
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->configAudioParameters()V

    .line 652
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->inDebug()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 653
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->startDebug()V

    .line 661
    :cond_23
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isIncallAudio()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 662
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_32

    .line 668
    :cond_2c
    :goto_2c
    monitor-exit p0

    return-void

    .line 643
    :cond_2e
    :try_start_2e
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->initializeHandsfreeAtParser()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    goto :goto_11

    .line 634
    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0

    .line 663
    :cond_35
    :try_start_35
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 665
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$1400(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;
    :try_end_44
    .catchall {:try_start_35 .. :try_end_44} :catchall_32

    goto :goto_2c
.end method

.method declared-synchronized disconnectHeadset()V
    .registers 2

    .prologue
    .line 681
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 685
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->terminateScoUsingVirtualVoiceCall()Z

    .line 687
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    .line 690
    const/16 v0, 0x7f

    iput v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIndicatorsActivations:I

    .line 692
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->stopDebug()V

    .line 693
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->resetAtState()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 694
    monitor-exit p0

    return-void

    .line 681
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getHeadset()Landroid/bluetooth/HeadsetBase;
    .registers 2

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    return-object v0
.end method

.method ignoreRing()V
    .registers 2

    .prologue
    .line 1873
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$6400(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V

    .line 1874
    return-void
.end method

.method declared-synchronized initiateScoUsingVirtualVoiceCall()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3445
    monitor-enter p0

    :try_start_3
    sget-boolean v3, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v3, :cond_c

    const-string v3, "initiateScoUsingVirtualVoiceCall: Received"

    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 3447
    :cond_c
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isCellularCallInProgress()Z

    move-result v3

    if-nez v3, :cond_18

    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isVoiceRecognitionInProgress()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 3448
    :cond_18
    const-string v2, "Bluetooth HS/HF"

    const-string v3, "initiateScoUsingVirtualVoiceCall: Call in progress"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_68

    .line 3476
    :goto_1f
    monitor-exit p0

    return v1

    .line 3453
    :cond_21
    :try_start_21
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$1600(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isVirtualCallInProgress()Z

    move-result v3

    if-nez v3, :cond_56

    .line 3454
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 3456
    .local v0, result:Landroid/bluetooth/AtCommandResult;
    const-string v3, "+CIEV: 3,2"

    invoke-virtual {v0, v3}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 3457
    const-string v3, "+CIEV: 2,1"

    invoke-virtual {v0, v3}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 3458
    const-string v3, "+CIEV: 3,0"

    invoke-virtual {v0, v3}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 3459
    invoke-virtual {v0}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 3460
    sget-boolean v3, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v3, :cond_56

    const-string v3, "Bluetooth HS/HF"

    const-string v4, "initiateScoUsingVirtualVoiceCall: Sent Call-setup procedure"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3463
    .end local v0           #result:Landroid/bluetooth/AtCommandResult;
    :cond_56
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/BluetoothHandsfree;->mVirtualCallStarted:Z

    .line 3466
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    move-result v3

    if-nez v3, :cond_6b

    .line 3467
    const-string v2, "initiateScoUsingVirtualVoiceCall: audioON failed"

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 3468
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->terminateScoUsingVirtualVoiceCall()Z
    :try_end_67
    .catchall {:try_start_21 .. :try_end_67} :catchall_68

    goto :goto_1f

    .line 3445
    :catchall_68
    move-exception v1

    monitor-exit p0

    throw v1

    .line 3472
    :cond_6b
    const/4 v1, 0x1

    :try_start_6c
    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z

    .line 3475
    sget-boolean v1, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v1, :cond_77

    const-string v1, "initiateScoUsingVirtualVoiceCall: Done"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    :try_end_77
    .catchall {:try_start_6c .. :try_end_77} :catchall_68

    :cond_77
    move v1, v2

    .line 3476
    goto :goto_1f
.end method

.method isAudioOn()Z
    .registers 2

    .prologue
    .line 1864
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method declared-synchronized onBluetoothDisabled()V
    .registers 2

    .prologue
    .line 618
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 620
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    if-eqz v0, :cond_10

    .line 621
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->shutdown()V

    .line 622
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 624
    :cond_10
    monitor-exit p0

    return-void

    .line 618
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onBluetoothEnabled()V
    .registers 3

    .prologue
    .line 609
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    if-nez v0, :cond_18

    .line 610
    new-instance v0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    .line 611
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    const-string v1, "incomingScoAcceptThread"

    invoke-virtual {v0, v1}, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->setName(Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->start()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 614
    :cond_18
    monitor-exit p0

    return-void

    .line 609
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reportCmeError(I)Landroid/bluetooth/AtCommandResult;
    .registers 5
    .parameter "error"

    .prologue
    .line 3265
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCmee:Z

    if-eqz v1, :cond_21

    .line 3266
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 3267
    .local v0, result:Landroid/bluetooth/AtCommandResult;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+CME ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 3270
    .end local v0           #result:Landroid/bluetooth/AtCommandResult;
    :goto_20
    return-object v0

    :cond_21
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_20
.end method

.method declared-synchronized resetAtState()V
    .registers 5

    .prologue
    const/4 v3, 0x6

    .line 697
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mClip:Z

    .line 698
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z

    .line 699
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z

    .line 700
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCmee:Z

    .line 701
    const/4 v1, 0x6

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mClccTimestamps:[J

    .line 702
    const/4 v1, 0x6

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    .line 703
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    if-ge v0, v3, :cond_23

    .line 704
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 703
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 706
    :cond_23
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    .line 707
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothAtPhonebook;->resetAtState()V
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_2d

    .line 708
    monitor-exit p0

    return-void

    .line 697
    .end local v0           #i:I
    :catchall_2d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public sendScoGainUpdate(I)V
    .registers 4
    .parameter "gain"

    .prologue
    .line 3255
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mScoGain:I

    if-eq v0, p1, :cond_27

    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_27

    .line 3259
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+VGS:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 3260
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mScoGain:I

    .line 3262
    :cond_27
    return-void
.end method

.method setVirtualCallInProgress(Z)V
    .registers 2
    .parameter "state"

    .prologue
    .line 3438
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mVirtualCallStarted:Z

    .line 3439
    return-void
.end method

.method declared-synchronized startVoiceRecognition()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 3308
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isCellularCallInProgress()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isVirtualCallInProgress()Z

    move-result v1

    if-nez v1, :cond_12

    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mVoiceRecognitionStarted:Z

    if-eqz v1, :cond_1b

    .line 3311
    :cond_12
    const-string v1, "Bluetooth HS/HF"

    const-string v2, "startVoiceRecognition: Call in progress"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_41

    .line 3332
    :cond_19
    :goto_19
    monitor-exit p0

    return v0

    .line 3315
    :cond_1b
    const/4 v1, 0x1

    :try_start_1c
    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mVoiceRecognitionStarted:Z

    .line 3317
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    if-eqz v1, :cond_44

    .line 3319
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    .line 3320
    const-string v1, "OK"

    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 3325
    :goto_2a
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    move-result v0

    .line 3326
    .local v0, ret:Z
    if-nez v0, :cond_33

    .line 3327
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mVoiceRecognitionStarted:Z

    .line 3329
    :cond_33
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 3330
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_40
    .catchall {:try_start_1c .. :try_end_40} :catchall_41

    goto :goto_19

    .line 3308
    .end local v0           #ret:Z
    :catchall_41
    move-exception v1

    monitor-exit p0

    throw v1

    .line 3323
    :cond_44
    :try_start_44
    const-string v1, "+BVRA: 1"

    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    :try_end_49
    .catchall {:try_start_44 .. :try_end_49} :catchall_41

    goto :goto_2a
.end method

.method declared-synchronized stopVoiceRecognition()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 3337
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isVoiceRecognitionInProgress()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_17

    move-result v1

    if-nez v1, :cond_a

    .line 3345
    :goto_8
    monitor-exit p0

    return v0

    .line 3341
    :cond_a
    const/4 v0, 0x0

    :try_start_b
    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mVoiceRecognitionStarted:Z

    .line 3343
    const-string v0, "+BVRA: 0"

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 3344
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_17

    .line 3345
    const/4 v0, 0x1

    goto :goto_8

    .line 3337
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized terminateScoUsingVirtualVoiceCall()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 3480
    monitor-enter p0

    :try_start_2
    sget-boolean v2, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v2, :cond_b

    const-string v2, "terminateScoUsingVirtualVoiceCall: Received"

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 3482
    :cond_b
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isVirtualCallInProgress()Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_4a

    move-result v2

    if-nez v2, :cond_13

    .line 3502
    :goto_11
    monitor-exit p0

    return v1

    .line 3487
    :cond_13
    :try_start_13
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 3490
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$1600(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 3491
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 3493
    .local v0, result:Landroid/bluetooth/AtCommandResult;
    const-string v1, "+CIEV: 2,0"

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 3494
    invoke-virtual {v0}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 3495
    sget-boolean v1, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v1, :cond_39

    const-string v1, "terminateScoUsingVirtualVoiceCall: Sent Call-setup procedure"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 3497
    .end local v0           #result:Landroid/bluetooth/AtCommandResult;
    :cond_39
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mVirtualCallStarted:Z

    .line 3498
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z

    .line 3501
    sget-boolean v1, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v1, :cond_48

    const-string v1, "terminateScoUsingVirtualVoiceCall: Done"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_13 .. :try_end_48} :catchall_4a

    .line 3502
    :cond_48
    const/4 v1, 0x1

    goto :goto_11

    .line 3480
    :catchall_4a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method updateBtHandsfreeAfterRadioTechnologyChange()V
    .registers 2

    .prologue
    .line 1749
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$6300(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V

    .line 1750
    return-void
.end method

.method declared-synchronized userWantsAudioOff()V
    .registers 2

    .prologue
    .line 1820
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    .line 1821
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 1822
    monitor-exit p0

    return-void

    .line 1820
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized userWantsAudioOn()V
    .registers 2

    .prologue
    .line 1812
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    .line 1813
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 1814
    monitor-exit p0

    return-void

    .line 1812
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
