.class public Lcom/android/phone/InCallScreen;
.super Landroid/app/Activity;
.source "InCallScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/media/voicerecorder/BaseVoiceRecorder$OnVoiceRecorderListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InCallScreen$20;,
        Lcom/android/phone/InCallScreen$SdReceiver;,
        Lcom/android/phone/InCallScreen$InCallAudioMode;,
        Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;
    }
.end annotation


# static fields
.field public static final ACTION_UNDEFINED:Ljava/lang/String; = "com.android.phone.InCallScreen.UNDEFINED"

.field private static final ADD_VOICEMAIL_NUMBER:I = 0x6a

.field private static final ALLOW_SCREEN_ON:I = 0x70

.field static final AUTO_RETRY_OFF:I = 0x0

.field static final AUTO_RETRY_ON:I = 0x1

.field private static final CALL_ENDED_LONG_DELAY:I = 0x7d0

.field private static final CALL_ENDED_SHORT_DELAY:I = 0xc8

#the value of this static final field might be set in the static constructor
.field public static final CAN_VOICE_RECORD:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final DELAYED_CLEANUP_AFTER_DISCONNECT:I = 0x6c

.field private static final DONT_ADD_VOICEMAIL_NUMBER:I = 0x6b

.field private static final EVENT_HEADSET_PLUG_STATE_CHANGED:I = 0x67

.field private static final EVENT_HIDE_PROVIDER_OVERLAY:I = 0x79

.field private static final EVENT_LINE_CONTROL_INFO:I = 0x7d

.field private static final EVENT_PAUSE_DIALOG_COMPLETE:I = 0x78

.field private static final EXTERNAL_SDCARD:Ljava/lang/String; = "external"

.field private static final EXTERNAL_SDCARD_MOUNTED_FILE:Ljava/lang/String; = "/dev/hw_extern_sdcardMounted"

.field static final EXTRA_GATEWAY_PROVIDER_PACKAGE:Ljava/lang/String; = "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

.field static final EXTRA_GATEWAY_URI:Ljava/lang/String; = "com.android.phone.extra.GATEWAY_URI"

.field private static final HW_VIBRATE:I = 0x1e

.field private static final INTERNAL_SDCARD:Ljava/lang/String; = "internal"

.field private static final LOG_TAG:Ljava/lang/String; = "InCallScreen"

.field private static final MIN_AVAILABLE_SIZE:I = 0x200000

.field private static final PAUSE_PROMPT_DIALOG_TIMEOUT:I = 0x7d0

.field private static final PHONE_CDMA_CALL_WAITING:I = 0x73

.field private static final PHONE_DISCONNECT:I = 0x66

.field private static final PHONE_INCOMING_RING:I = 0x7b

.field private static final PHONE_NEW_RINGING_CONNECTION:I = 0x7c

.field private static final PHONE_STATE_CHANGED:I = 0x65

.field private static final POST_ON_DIAL_CHARS:I = 0x68

.field private static final PREFIX_INCOMING:Ljava/lang/String; = "From_"

.field private static final PREFIX_OUTGOING:Ljava/lang/String; = "To_"

.field private static final PROVIDER_OVERLAY_TIMEOUT:I = 0x1388

.field private static final REQUEST_CLOSE_OTA_FAILURE_NOTICE:I = 0x77

.field private static final REQUEST_CLOSE_SPC_ERROR_NOTICE:I = 0x76

.field private static final REQUEST_UPDATE_BLUETOOTH_INDICATION:I = 0x72

.field private static final REQUEST_UPDATE_SCREEN:I = 0x7a

.field private static final RE_START_TONE:I = 0x3e9

.field static final SHOW_DIALPAD_EXTRA:Ljava/lang/String; = "com.android.phone.ShowDialpad"

.field private static final SUFFIX:Ljava/lang/String; = "%s.amr"

.field private static final SUPP_SERVICE_FAILED:I = 0x6e

.field private static final VDBG:Z = false

.field private static final WILD_PROMPT_CHAR_ENTERED:I = 0x69


# instance fields
.field dtmfphoto:Lcom/android/phone/InCallContactPhoto;

.field protected mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field protected mApp:Lcom/android/phone/PhoneApp;

.field private mBluetoothConnectionPending:Z

.field private mBluetoothConnectionRequestTime:J

.field protected mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field protected mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field protected mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallCard:Lcom/android/phone/CallCard;

.field private mCallLostDialog:Landroid/app/AlertDialog;

.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field private mDialPadViewLeft_Banner:Landroid/view/ViewGroup;

.field private mDialPadView_LeftName:Landroid/widget/TextView;

.field private mDialPadView_LeftNumber:Landroid/widget/TextView;

.field private mDialPadView_SocialStatus:Landroid/widget/TextView;

.field protected mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

.field private mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

.field private mEjectSdError:Z

.field private mEndButton:Landroid/widget/ImageButton;

.field private mExitingECMDialog:Landroid/app/AlertDialog;

.field private mFastShutdownReceiver:Landroid/content/BroadcastReceiver;

.field protected mGenericErrorDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mHideImmediately:Z

.field private mHwVibrate:Z

.field private mInCallControlState:Lcom/android/phone/InCallControlState;

.field private mInCallControls:Landroid/view/View;

.field protected mInCallPanel:Landroid/view/ViewGroup;

.field private mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

.field private mIsDestroyed:Z

.field private mIsEmergencyNumber:Z

.field private mIsForegroundActivity:Z

.field private mIsForegroundActivityForProximity:Z

.field protected mLastDisconnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

.field private mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

.field private mMissingVoicemailDialog:Landroid/app/AlertDialog;

.field protected mMmiStartedDialog:Landroid/app/Dialog;

.field private mPauseInProgress:Z

.field private mPausePromptDialog:Landroid/app/AlertDialog;

.field protected mPhone:Lcom/android/internal/telephony/Phone;

.field private mPostDialStrAfterPause:Ljava/lang/String;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

.field private mRegisteredForLineControlInfo:Z

.field private mRegisteredForPhoneStates:Z

.field private mRemoteCallEnd:Z

.field private mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager;

.field private mSdReceiver:Lcom/android/phone/InCallScreen$SdReceiver;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStoragePath:Ljava/lang/String;

.field private mSuppServiceFailureDialog:Landroid/app/AlertDialog;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVoiceRecordBtn:Landroid/widget/ImageButton;

.field private mVoiceRecordBtnLabel:Landroid/widget/TextView;

.field private mVoiceRecordButtonContainer:Landroid/widget/LinearLayout;

.field private mWaitPromptDialog:Landroid/app/AlertDialog;

.field private mWildPromptDialog:Landroid/app/AlertDialog;

.field private mWildPromptText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 157
    sput-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    .line 374
    const-string v0, "ro.config.hw_voicerecord"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/InCallScreen;->CAN_VOICE_RECORD:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->dtmfphoto:Lcom/android/phone/InCallContactPhoto;

    .line 155
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsEmergencyNumber:Z

    .line 201
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mHwVibrate:Z

    .line 202
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mVibrator:Landroid/os/Vibrator;

    .line 260
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mRemoteCallEnd:Z

    .line 285
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mRegisteredForLineControlInfo:Z

    .line 346
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    .line 347
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    .line 348
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivityForProximity:Z

    .line 353
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mPauseInProgress:Z

    .line 361
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mHideImmediately:Z

    .line 392
    new-instance v0, Lcom/android/phone/InCallScreen$SdReceiver;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$SdReceiver;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mSdReceiver:Lcom/android/phone/InCallScreen$SdReceiver;

    .line 393
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mEjectSdError:Z

    .line 402
    new-instance v0, Lcom/android/phone/InCallScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$1;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    .line 598
    new-instance v0, Lcom/android/phone/InCallScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$2;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 735
    new-instance v0, Lcom/android/phone/InCallScreen$3;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$3;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 5647
    new-instance v0, Lcom/android/phone/InCallScreen$19;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$19;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mFastShutdownReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/InCallScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 142
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/InCallScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->addVoiceMailNumberPanel()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/InCallScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dontAddVoiceMailNumber()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/phone/InCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/phone/InCallScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateProviderOverlay()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/InCallScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onIncomingRing()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/InCallScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onNewRingingConnection()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/InCallScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mHwVibrate:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/phone/InCallScreen;)Landroid/os/Vibrator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/phone/InCallScreen;)Lcom/android/phone/CallCard;
    .registers 2
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/phone/InCallScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->reStartTone()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/phone/InCallScreen;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/phone/InCallScreen;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/phone/InCallScreen;Landroid/widget/EditText;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/phone/InCallScreen;)Landroid/media/voicerecorder/BaseVoiceRecorder;
    .registers 2
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/phone/InCallScreen;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/android/phone/InCallScreen;->mEjectSdError:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/phone/InCallScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalHangup()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/InCallScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/InCallScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/InCallScreen;)Lcom/android/phone/InCallTouchUi;
    .registers 2
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Phone;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->onMMICancel(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;C)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V

    return-void
.end method

.method private addVoiceMailNumberPanel()V
    .registers 3

    .prologue
    .line 2912
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_c

    .line 2913
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2914
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 2916
    :cond_c
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_15

    const-string v1, "addVoiceMailNumberPanel: finishing InCallScreen..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2917
    :cond_15
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 2919
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_21

    const-string v1, "show vm setting"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2923
    :cond_21
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 2924
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2925
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/phone/MSimCallFeaturesSetting;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2926
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 2936
    :goto_3a
    return-void

    .line 2930
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3b
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2931
    .restart local v0       #intent:Landroid/content/Intent;
    const-class v1, Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2932
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_3a
.end method

.method private checkOtaspStateOnResume()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 4906
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-nez v3, :cond_12

    .line 4907
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_10

    const-string v3, "checkOtaspStateOnResume: no OtaUtils instance; nothing to do."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_10
    move v1, v2

    .line 5011
    :cond_11
    :goto_11
    return v1

    .line 4911
    :cond_12
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-nez v3, :cond_26

    .line 4915
    :cond_1e
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "checkOtaspStateOnResume: app.cdmaOta* objects(s) not initialized"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4923
    :cond_26
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v3}, Lcom/android/phone/OtaUtils;->getCdmaOtaInCallScreenUiState()Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    move-result-object v0

    .line 4930
    .local v0, cdmaOtaInCallScreenState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;
    sget-object v3, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-eq v0, v3, :cond_36

    sget-object v3, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v0, v3, :cond_59

    :cond_36
    const/4 v1, 0x1

    .line 4934
    .local v1, otaspUiActive:Z
    :goto_37
    if-eqz v1, :cond_6e

    .line 4941
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/android/phone/OtaUtils;->updateUiWidgets(Lcom/android/phone/InCallScreen;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/android/phone/CallCard;)V

    .line 4945
    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v0, v2, :cond_5b

    .line 4946
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_53

    const-string v2, "checkOtaspStateOnResume - in OTA Normal mode"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4947
    :cond_53
    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    goto :goto_11

    .end local v1           #otaspUiActive:Z
    :cond_59
    move v1, v2

    .line 4930
    goto :goto_37

    .line 4948
    .restart local v1       #otaspUiActive:Z
    :cond_5b
    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v0, v2, :cond_11

    .line 4950
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_68

    const-string v2, "checkOtaspStateOnResume - in OTA END mode"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4951
    :cond_68
    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    goto :goto_11

    .line 4966
    :cond_6e
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_77

    const-string v3, "checkOtaspStateOnResume - Set OTA NORMAL Mode"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4967
    :cond_77
    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 4969
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v3, :cond_11

    .line 4970
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v3, v2}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    goto :goto_11
.end method

.method private checkWhichStorageVolume(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "externalOrInternal"

    .prologue
    const/4 v7, 0x0

    .line 5293
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v8}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 5294
    .local v5, storageVolumes:[Landroid/os/storage/StorageVolume;
    const-string v8, "InCallScreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkWhichStorageVolume()->storageVolumes.size="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5295
    const-string v8, "internal"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_99

    .line 5296
    const-string v8, "InCallScreen"

    const-string v9, "checkWhichStorageVolume()->internal sdcard branch"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5297
    move-object v0, v5

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_32
    if-ge v2, v3, :cond_111

    aget-object v6, v0, v2

    .line 5298
    .local v6, sv:Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 5299
    .local v4, path:Ljava/lang/String;
    const-string v8, "InCallScreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkWhichStorageVolume()->storage_volume_path="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5300
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5301
    .local v1, f:Ljava/io/File;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v8

    if-nez v8, :cond_96

    .line 5302
    const-string v8, "InCallScreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkWhichStorageVolume()->canRead and canWrite:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "||"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5304
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v8

    if-eqz v8, :cond_94

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v8

    if-eqz v8, :cond_94

    .line 5328
    .end local v0           #arr$:[Landroid/os/storage/StorageVolume;
    .end local v1           #f:Ljava/io/File;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #path:Ljava/lang/String;
    .end local v6           #sv:Landroid/os/storage/StorageVolume;
    :cond_93
    :goto_93
    return-object v4

    .restart local v0       #arr$:[Landroid/os/storage/StorageVolume;
    .restart local v1       #f:Ljava/io/File;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #path:Ljava/lang/String;
    .restart local v6       #sv:Landroid/os/storage/StorageVolume;
    :cond_94
    move-object v4, v7

    .line 5307
    goto :goto_93

    .line 5297
    :cond_96
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 5311
    .end local v0           #arr$:[Landroid/os/storage/StorageVolume;
    .end local v1           #f:Ljava/io/File;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #path:Ljava/lang/String;
    .end local v6           #sv:Landroid/os/storage/StorageVolume;
    :cond_99
    const-string v8, "external"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_111

    .line 5312
    const-string v8, "InCallScreen"

    const-string v9, "checkWhichStorageVolume()->external sdcard branch"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5313
    move-object v0, v5

    .restart local v0       #arr$:[Landroid/os/storage/StorageVolume;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_ab
    if-ge v2, v3, :cond_111

    aget-object v6, v0, v2

    .line 5314
    .restart local v6       #sv:Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 5315
    .restart local v4       #path:Ljava/lang/String;
    const-string v8, "InCallScreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkWhichStorageVolume()->storage_volume_path="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5316
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5317
    .restart local v1       #f:Ljava/io/File;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v8

    if-eqz v8, :cond_10e

    .line 5318
    const-string v8, "InCallScreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkWhichStorageVolume()->canRead and canWrite:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "||"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5320
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v8

    if-eqz v8, :cond_10c

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v8

    if-nez v8, :cond_93

    :cond_10c
    move-object v4, v7

    .line 5323
    goto :goto_93

    .line 5313
    :cond_10e
    add-int/lit8 v2, v2, 0x1

    goto :goto_ab

    .end local v0           #arr$:[Landroid/os/storage/StorageVolume;
    .end local v1           #f:Ljava/io/File;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #path:Ljava/lang/String;
    .end local v6           #sv:Landroid/os/storage/StorageVolume;
    :cond_111
    move-object v4, v7

    .line 5328
    goto :goto_93
.end method

.method private createWildPromptView()Landroid/view/View;
    .registers 11

    .prologue
    const/4 v9, -0x2

    const/high16 v8, 0x4160

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x5

    .line 2593
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2594
    .local v3, result:Landroid/widget/LinearLayout;
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2595
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2597
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v0, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2601
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2602
    .local v2, promptMsg:Landroid/widget/TextView;
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2603
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2604
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c003c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2606
    invoke-virtual {v3, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2608
    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    .line 2609
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 2610
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 2611
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setTextSize(F)V

    .line 2612
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 2613
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 2614
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    const v5, 0x1080018

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 2616
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v1, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2619
    .local v1, lp2:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, 0x3

    invoke-virtual {v1, v6, v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2621
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2623
    return-object v3
.end method

.method private dismissProgressIndication()V
    .registers 2

    .prologue
    .line 3944
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "dismissProgressIndication()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3945
    :cond_9
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_15

    .line 3946
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3947
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 3949
    :cond_15
    return-void
.end method

.method private dontAddVoiceMailNumber()V
    .registers 2

    .prologue
    .line 2939
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    .line 2940
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2941
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 2943
    :cond_c
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_15

    const-string v0, "dontAddVoiceMailNumber: finishing InCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2944
    :cond_15
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 2945
    return-void
.end method

.method private dumpBluetoothState()V
    .registers 5

    .prologue
    .line 4783
    const-string v2, "============== dumpBluetoothState() ============="

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4784
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= isBluetoothAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4785
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= isBluetoothAudioConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4786
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= isBluetoothAudioConnectedOrPending: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4787
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= PhoneApp.showBluetoothIndication: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4789
    const-string v2, "="

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4790
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v2, :cond_e4

    .line 4791
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= BluetoothHandsfree.isAudioOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4792
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_de

    .line 4793
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 4795
    .local v1, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_dd

    .line 4796
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 4797
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= BluetoothHeadset.getCurrentDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4798
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= BluetoothHeadset.State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4807
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_dd
    :goto_dd
    return-void

    .line 4802
    :cond_de
    const-string v2, "= mBluetoothHeadset is null"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_dd

    .line 4805
    :cond_e4
    const-string v2, "= mBluetoothHandsfree is null; device is not BT capable"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_dd
.end method

.method private endInCallScreenSession(Z)V
    .registers 5
    .parameter "forceFinish"

    .prologue
    const/4 v2, 0x1

    .line 1285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endInCallScreenSession("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")...  phone state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1286
    if-eqz p1, :cond_39

    .line 1287
    const-string v0, "InCallScreen"

    const-string v1, "endInCallScreenSession(): FORCING a call to super.finish()!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 1296
    :goto_33
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 1297
    return-void

    .line 1291
    :cond_39
    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->moveTaskToBack(Z)Z

    .line 1293
    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->setEndButton(Z)V

    goto :goto_33
.end method

.method private externalStoragePath()Ljava/lang/String;
    .registers 16

    .prologue
    const/4 v10, 0x0

    .line 5268
    const-string v11, "external"

    invoke-direct {p0, v11}, Lcom/android/phone/InCallScreen;->checkWhichStorageVolume(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 5269
    .local v8, path:Ljava/lang/String;
    const/4 v5, 0x0

    .line 5270
    .local v5, f:Ljava/io/File;
    if-eqz v8, :cond_35

    .line 5272
    :try_start_a
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_3b

    .line 5273
    .end local v5           #f:Ljava/io/File;
    .local v6, f:Ljava/io/File;
    :try_start_f
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_34

    .line 5274
    new-instance v9, Landroid/os/StatFs;

    invoke-direct {v9, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 5275
    .local v9, stat:Landroid/os/StatFs;
    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v2, v11

    .line 5276
    .local v2, blockSize:J
    invoke-virtual {v9}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v11

    int-to-long v0, v11

    .line 5277
    .local v0, availableBlocks:J
    mul-long v11, v0, v2

    const-wide/32 v13, 0x200000

    cmp-long v11, v11, v13

    if-lez v11, :cond_37

    const/4 v7, 0x1

    .line 5278
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

    .line 5286
    :goto_36
    return-object v10

    .line 5277
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

    .line 5278
    goto :goto_34

    .line 5280
    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v6           #f:Ljava/io/File;
    .end local v7           #isOk:Z
    .end local v9           #stat:Landroid/os/StatFs;
    .restart local v5       #f:Ljava/io/File;
    :catch_3b
    move-exception v4

    .line 5281
    .local v4, e:Ljava/lang/Exception;
    :goto_3c
    const-string v11, "InCallScreen"

    const-string v12, "external storage path error"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5282
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_36

    .line 5280
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

.method private getCallName()Ljava/lang/String;
    .registers 6

    .prologue
    .line 5212
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    const v4, 0x7f070013

    invoke-virtual {v3, v4}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 5213
    .local v1, name:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    const v4, 0x7f070016

    invoke-virtual {v3, v4}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 5217
    .local v2, phoneNum:Ljava/lang/CharSequence;
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v3, v4, :cond_4f

    .line 5218
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_36

    const-string v3, "InCallScreen"

    const-string v4, "PHONE_TYPE_CDMA"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5220
    :cond_36
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 5221
    .local v0, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_4f

    .line 5222
    const v3, 0x7f0c0028

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5233
    .end local v0           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :goto_4e
    return-object v3

    .line 5225
    :cond_4f
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_60

    invoke-static {v1}, Lcom/android/phone/InCallScreen;->isValidFileName(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 5226
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4e

    .line 5229
    :cond_60
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6b

    .line 5230
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4e

    .line 5233
    :cond_6b
    const v3, 0x7f0c0004

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4e
.end method

.method private getToastStringPath(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "stringId"
    .parameter "path"

    .prologue
    .line 5604
    if-nez p2, :cond_a

    .line 5605
    const v0, 0x7f0c0303

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5608
    :goto_9
    return-object v0

    :cond_a
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/InCallScreen;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method private handleCallKey()Z
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 1711
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v3

    .line 1712
    .local v3, hasRingingCall:Z
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    .line 1713
    .local v1, hasActiveCall:Z
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v2

    .line 1715
    .local v2, hasHoldingCall:Z
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 1716
    .local v4, phoneType:I
    const/4 v5, 0x2

    if-eq v4, v5, :cond_23

    const/4 v5, 0x4

    if-ne v4, v5, :cond_60

    .line 1721
    :cond_23
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v5}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    .line 1723
    .local v0, currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    if-eqz v3, :cond_3a

    .line 1725
    sget-boolean v5, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v5, :cond_36

    const-string v5, "answerCall: First Incoming and Call Waiting scenario"

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1726
    :cond_36
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    .line 1787
    .end local v0           #currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_39
    :goto_39
    return v7

    .line 1728
    .restart local v0       #currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_3a
    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v5, :cond_4f

    if-eqz v1, :cond_4f

    .line 1731
    sget-boolean v5, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v5, :cond_49

    const-string v5, "answerCall: Merge 3-way call scenario"

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1733
    :cond_49
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_39

    .line 1734
    :cond_4f
    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v5, :cond_39

    .line 1737
    sget-boolean v5, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v5, :cond_5c

    const-string v5, "answerCall: Switch btwn 2 calls scenario"

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1738
    :cond_5c
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSwapCalls()V

    goto :goto_39

    .line 1740
    .end local v0           #currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_60
    if-eq v4, v7, :cond_65

    const/4 v5, 0x3

    if-ne v4, v5, :cond_98

    .line 1742
    :cond_65
    if-eqz v3, :cond_72

    .line 1753
    const-string v5, "InCallScreen"

    const-string v6, "handleCallKey: incoming call is ringing! (PhoneWindowManager should have handled this key.)"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    goto :goto_39

    .line 1760
    :cond_72
    if-eqz v1, :cond_83

    if-eqz v2, :cond_83

    .line 1762
    sget-boolean v5, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v5, :cond_7f

    const-string v5, "handleCallKey: both lines in use ==> swap calls."

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1763
    :cond_7f
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSwapCalls()V

    goto :goto_39

    .line 1764
    :cond_83
    if-eqz v2, :cond_39

    .line 1767
    sget-boolean v5, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v5, :cond_8e

    const-string v5, "handleCallKey: call on hold ==> unhold."

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1768
    :cond_8e
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_39

    .line 1782
    :cond_98
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected phone type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private handleDialerKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1649
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->okToDialDTMFTones()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1650
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, p2}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1660
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private handleMissingVoiceMailNumber()V
    .registers 9

    .prologue
    const/4 v7, 0x2

    .line 2863
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_a

    const-string v4, "handleMissingVoiceMailNumber"

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2865
    :cond_a
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 2866
    .local v1, msg:Landroid/os/Message;
    const/16 v4, 0x6b

    iput v4, v1, Landroid/os/Message;->what:I

    .line 2868
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 2869
    .local v2, msg2:Landroid/os/Message;
    const/16 v4, 0x6a

    iput v4, v2, Landroid/os/Message;->what:I

    .line 2872
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 2873
    .local v3, phoneType:I
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2874
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0c003d

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2875
    if-ne v3, v7, :cond_6d

    .line 2876
    const v4, 0x7f0c003f

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2880
    :goto_37
    const v4, 0x7f0c002d

    new-instance v5, Lcom/android/phone/InCallScreen$12;

    invoke-direct {v5, p0, v1}, Lcom/android/phone/InCallScreen$12;-><init>(Lcom/android/phone/InCallScreen;Landroid/os/Message;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0040

    new-instance v6, Lcom/android/phone/InCallScreen$11;

    invoke-direct {v6, p0, v2}, Lcom/android/phone/InCallScreen$11;-><init>(Lcom/android/phone/InCallScreen;Landroid/os/Message;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/phone/InCallScreen$10;

    invoke-direct {v5, p0, v1}, Lcom/android/phone/InCallScreen$10;-><init>(Lcom/android/phone/InCallScreen;Landroid/os/Message;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 2905
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/Window;->addFlags(I)V

    .line 2908
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 2909
    return-void

    .line 2878
    :cond_6d
    const v4, 0x7f0c003e

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_37
.end method

.method private handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    .registers 9
    .parameter "r"
    .parameter "ch"

    .prologue
    .line 2433
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 2435
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_15

    .line 2436
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/Connection$PostDialState;

    .line 2442
    .local v2, state:Lcom/android/internal/telephony/Connection$PostDialState;
    sget-object v3, Lcom/android/phone/InCallScreen$20;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_84

    .line 2497
    .end local v2           #state:Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_15
    :goto_15
    return-void

    .line 2444
    .restart local v2       #state:Lcom/android/internal/telephony/Connection$PostDialState;
    :pswitch_16
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneIfNeeded()V

    .line 2445
    iget-boolean v3, p0, Lcom/android/phone/InCallScreen;->mPauseInProgress:Z

    if-eqz v3, :cond_24

    .line 2450
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPostDialStrAfterPause:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallScreen;->showPausePromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    .line 2452
    :cond_24
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/phone/InCallScreen;->mPauseInProgress:Z

    .line 2453
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v3, p2}, Lcom/android/phone/DTMFTwelveKeyDialer;->startLocalToneIfNeeded(C)V

    goto :goto_15

    .line 2464
    :pswitch_2d
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_36

    const-string v3, "handlePostOnDialChars: show WAIT prompt..."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2465
    :cond_36
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneIfNeeded()V

    .line 2466
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v1

    .line 2467
    .local v1, postDialStr:Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_15

    .line 2471
    .end local v1           #postDialStr:Ljava/lang/String;
    :pswitch_43
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_4c

    const-string v3, "handlePostOnDialChars: show WILD prompt"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2472
    :cond_4c
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneIfNeeded()V

    .line 2473
    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->showWildPromptDialog(Lcom/android/internal/telephony/Connection;)V

    goto :goto_15

    .line 2477
    :pswitch_55
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneIfNeeded()V

    .line 2480
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_15

    iget-boolean v3, p0, Lcom/android/phone/InCallScreen;->mHwVibrate:Z

    if-eqz v3, :cond_15

    .line 2481
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v4, 0x1e

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_15

    .line 2488
    :pswitch_75
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneIfNeeded()V

    .line 2489
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mPostDialStrAfterPause:Ljava/lang/String;

    .line 2490
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/InCallScreen;->mPauseInProgress:Z

    goto :goto_15

    .line 2442
    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_16
        :pswitch_2d
        :pswitch_43
        :pswitch_55
        :pswitch_75
    .end packed-switch
.end method

.method private hideDialpadInternal(Z)V
    .registers 8
    .parameter "animate"

    .prologue
    .line 3370
    invoke-static {p0}, Lcom/android/phone/InCallScreen;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 3371
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3372
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3373
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3374
    .local v3, screenWidth:I
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3376
    .local v2, screenHeight:I
    if-le v3, v2, :cond_4e

    .line 3377
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4, v5}, Lcom/android/phone/CallCard;->getCallerinfo(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 3378
    .local v1, info:Lcom/android/internal/telephony/CallerInfo;
    const v4, 0x7f070056

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/phone/InCallContactPhoto;

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->dtmfphoto:Lcom/android/phone/InCallContactPhoto;

    .line 3379
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->dtmfphoto:Lcom/android/phone/InCallContactPhoto;

    if-eqz v4, :cond_3a

    .line 3380
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->dtmfphoto:Lcom/android/phone/InCallContactPhoto;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/phone/InCallContactPhoto;->setVisibility(I)V

    .line 3383
    :cond_3a
    const v4, 0x7f070057

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mDialPadViewLeft_Banner:Landroid/view/ViewGroup;

    .line 3384
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialPadViewLeft_Banner:Landroid/view/ViewGroup;

    if-eqz v4, :cond_4e

    .line 3385
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialPadViewLeft_Banner:Landroid/view/ViewGroup;

    invoke-static {v4}, Lcom/android/phone/InCallScreen;->hideVG(Landroid/view/ViewGroup;)V

    .line 3391
    .end local v0           #dm:Landroid/util/DisplayMetrics;
    .end local v1           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v2           #screenHeight:I
    .end local v3           #screenWidth:I
    :cond_4e
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v4, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 3394
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/phone/InCallUiState;->showDialpad:Z

    .line 3395
    return-void
.end method

.method private static final hideVG(Landroid/view/ViewGroup;)V
    .registers 2
    .parameter "vg"

    .prologue
    .line 5693
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5694
    return-void
.end method

.method private initInCallTouchUi()V
    .registers 3

    .prologue
    .line 4558
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "initInCallTouchUi()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4563
    :cond_9
    const v0, 0x7f07006d

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InCallTouchUi;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    .line 4564
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {v0, p0}, Lcom/android/phone/InCallTouchUi;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 4566
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    const v1, 0x7f070075

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallControls:Landroid/view/View;

    .line 4567
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallControls:Landroid/view/View;

    const v1, 0x7f07007f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mEndButton:Landroid/widget/ImageButton;

    .line 4572
    new-instance v0, Lcom/android/phone/RespondViaSmsManager;

    invoke-direct {v0}, Lcom/android/phone/RespondViaSmsManager;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager;

    .line 4573
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager;

    invoke-virtual {v0, p0}, Lcom/android/phone/RespondViaSmsManager;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 4574
    return-void
.end method

.method private initVoiceRecord()V
    .registers 5

    .prologue
    .line 5170
    const-string v1, "InCallScreen"

    const-string v2, "initVoiceRecord() method"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5171
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1, p0}, Landroid/media/voicerecorder/VoiceRecorderFactory;->createVoiceRecorder(Lcom/android/internal/telephony/CallManager;Lcom/android/phone/InCallScreen;)Landroid/media/voicerecorder/BaseVoiceRecorder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    .line 5172
    const-string v1, "InCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initVoiceRecord()->mRecorder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5173
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v1}, Landroid/media/voicerecorder/BaseVoiceRecorder;->registerForNotifications()V

    .line 5174
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v1, p0}, Landroid/media/voicerecorder/BaseVoiceRecorder;->setOnVoiceRecorderListener(Landroid/media/voicerecorder/BaseVoiceRecorder$OnVoiceRecorderListener;)V

    .line 5176
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd_hh_mm_ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 5179
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 5180
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5181
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5183
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 5184
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mSdReceiver:Lcom/android/phone/InCallScreen$SdReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/InCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5185
    return-void
.end method

.method private internalAnswerAndEnd()V
    .registers 3

    .prologue
    .line 4046
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "internalAnswerAndEnd()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4050
    :cond_9
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    .line 4051
    return-void
.end method

.method private internalAnswerCall()V
    .registers 12

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    .line 3961
    const-string v6, "internalAnswerCall()..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3964
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    .line 3966
    .local v2, hasRingingCall:Z
    if-eqz v2, :cond_63

    .line 3967
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 3968
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 3969
    .local v5, ringing:Lcom/android/internal/telephony/Call;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 3970
    .local v4, phoneType:I
    if-ne v4, v7, :cond_68

    .line 3971
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_2c

    const-string v6, "internalAnswerCall: answering (CDMA)..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3972
    :cond_2c
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v6

    if-eqz v6, :cond_40

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-eq v6, v9, :cond_4c

    :cond_40
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v6, v10, :cond_64

    .line 3982
    :cond_4c
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_55

    const-string v6, "internalAnswerCall: answer CDMA incoming and end SIP ongoing"

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3984
    :cond_55
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v6, v5}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    .line 4035
    :goto_5a
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/phone/PhoneApp;->setLatestActiveCallOrigin(Ljava/lang/String;)V

    .line 4037
    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->setEndButton(Z)V

    .line 4040
    .end local v3           #phone:Lcom/android/internal/telephony/Phone;
    .end local v4           #phoneType:I
    .end local v5           #ringing:Lcom/android/internal/telephony/Call;
    :cond_63
    return-void

    .line 3986
    .restart local v3       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v4       #phoneType:I
    .restart local v5       #ringing:Lcom/android/internal/telephony/Call;
    :cond_64
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_5a

    .line 3988
    :cond_68
    if-ne v4, v9, :cond_9a

    .line 3989
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_73

    const-string v6, "internalAnswerCall: answering (SIP)..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3990
    :cond_73
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v6

    if-eqz v6, :cond_96

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v6, v7, :cond_96

    .line 4000
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_90

    const-string v6, "internalAnswerCall: answer SIP incoming and end CDMA ongoing"

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4002
    :cond_90
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v6, v5}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto :goto_5a

    .line 4004
    :cond_96
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_5a

    .line 4006
    :cond_9a
    if-eq v4, v8, :cond_9e

    if-ne v4, v10, :cond_ca

    .line 4012
    :cond_9e
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 4013
    .local v0, hasActiveCall:Z
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    .line 4015
    .local v1, hasHoldingCall:Z
    if-eqz v0, :cond_bd

    if-eqz v1, :cond_bd

    .line 4016
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_b7

    const-string v6, "internalAnswerCall: answering (both lines in use!)..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4020
    :cond_b7
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v6, v5}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto :goto_5a

    .line 4026
    :cond_bd
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_c6

    const-string v6, "internalAnswerCall: answering..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4027
    :cond_c6
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_5a

    .line 4031
    .end local v0           #hasActiveCall:Z
    .end local v1           #hasHoldingCall:Z
    :cond_ca
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

.method private internalHangup()V
    .registers 4

    .prologue
    .line 4105
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 4106
    .local v0, state:Lcom/android/internal/telephony/Phone$State;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalHangup()...  phone state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4111
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 4126
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_2c

    .line 4128
    const-string v1, "InCallScreen"

    const-string v2, "internalHangup(): phone is already IDLE!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4152
    :cond_2c
    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-eqz v1, :cond_34

    .line 4153
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->setEndButton(Z)V

    .line 4156
    :cond_34
    return-void
.end method

.method private internalRespondViaSms()V
    .registers 4

    .prologue
    .line 4081
    const-string v1, "internalRespondViaSms()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4084
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager;

    if-nez v1, :cond_11

    .line 4085
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "got internalRespondViaSms(), but mRespondViaSmsManager was never initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4091
    :cond_11
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 4093
    .local v0, ringingCall:Lcom/android/internal/telephony/Call;
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager;

    invoke-virtual {v1, v0}, Lcom/android/phone/RespondViaSmsManager;->showRespondViaSmsPopup(Lcom/android/internal/telephony/Call;)V

    .line 4098
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSilenceRinger()V

    .line 4099
    return-void
.end method

.method private internalSilenceRinger()V
    .registers 3

    .prologue
    .line 4068
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_9

    const-string v1, "internalSilenceRinger()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4069
    :cond_9
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 4070
    .local v0, notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4072
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    .line 4074
    :cond_16
    return-void
.end method

.method private internalStoragePath()Ljava/lang/String;
    .registers 16

    .prologue
    const/4 v10, 0x0

    .line 5241
    const-string v11, "internal"

    invoke-direct {p0, v11}, Lcom/android/phone/InCallScreen;->checkWhichStorageVolume(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 5242
    .local v9, path:Ljava/lang/String;
    const/4 v1, 0x0

    .line 5243
    .local v1, f:Ljava/io/File;
    if-eqz v9, :cond_51

    .line 5245
    :try_start_a
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_57

    .line 5246
    .end local v1           #f:Ljava/io/File;
    .local v2, f:Ljava/io/File;
    :try_start_f
    const-string v11, "InCallScreen"

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

    .line 5248
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_50

    .line 5249
    new-instance v7, Landroid/os/StatFs;

    invoke-direct {v7, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 5250
    .local v7, interSdStat:Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v5, v11

    .line 5251
    .local v5, interBlockSize:J
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v11

    int-to-long v3, v11

    .line 5252
    .local v3, interAvailableBlocks:J
    mul-long v11, v3, v5

    const-wide/32 v13, 0x200000

    cmp-long v11, v11, v13

    if-lez v11, :cond_53

    const/4 v8, 0x1

    .line 5253
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

    .line 5261
    :goto_52
    return-object v10

    .line 5252
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

    .line 5253
    goto :goto_50

    .line 5255
    .end local v2           #f:Ljava/io/File;
    .end local v3           #interAvailableBlocks:J
    .end local v5           #interBlockSize:J
    .end local v7           #interSdStat:Landroid/os/StatFs;
    .end local v8           #isOk:Z
    .restart local v1       #f:Ljava/io/File;
    :catch_57
    move-exception v0

    .line 5256
    .local v0, e:Ljava/lang/Exception;
    :goto_58
    const-string v11, "InCallScreen"

    const-string v12, "internal sdcard error"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5257
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_52

    .line 5255
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

.method private internalSwapCalls()V
    .registers 4

    .prologue
    .line 4162
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_9

    const-string v1, "internalSwapCalls()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4167
    :cond_9
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->hideDialpadInternal(Z)V

    .line 4174
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearDigits()V

    .line 4179
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 4184
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_33

    .line 4185
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    .line 4186
    .local v0, bthf:Lcom/android/phone/BluetoothHandsfree;
    if-eqz v0, :cond_33

    .line 4187
    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->cdmaSwapSecondCallState()V

    .line 4191
    .end local v0           #bthf:Lcom/android/phone/BluetoothHandsfree;
    :cond_33
    return-void
.end method

.method private invokeReflectedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;)V
    .registers 13
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
    .line 1404
    .local p5, ctypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 1421
    :cond_4
    :goto_4
    return-void

    .line 1409
    :cond_5
    :try_start_5
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1410
    .local v3, targetClass:Ljava/lang/Class;
    invoke-virtual {v3, p2, p5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1411
    .local v1, nMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_4

    .line 1412
    invoke-virtual {v1, p3, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1413
    .local v2, o:Ljava/lang/Object;
    const-string v4, "InCallScreen"

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

    .line 1416
    .end local v1           #nMethod:Ljava/lang/reflect/Method;
    .end local v2           #o:Ljava/lang/Object;
    .end local v3           #targetClass:Ljava/lang/Class;
    :catch_2c
    move-exception v0

    .line 1417
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "InCallScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Occur an exception when call "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 5696
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method static isValidFileName(Ljava/lang/CharSequence;)Z
    .registers 2
    .parameter "fileName"

    .prologue
    .line 5203
    const-string v0, "^[^\\\\/:*?<>\"|]+$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 5157
    const-string v0, "InCallScreen"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5158
    return-void
.end method

.method private okToDialDTMFTones()Z
    .registers 6

    .prologue
    .line 4517
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    .line 4518
    .local v2, hasRingingCall:Z
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 4529
    .local v1, fgCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v3, :cond_14

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v3, :cond_22

    :cond_14
    if-nez v2, :cond_22

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v3, v3, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v4, Lcom/android/phone/InCallUiState$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v3, v4, :cond_22

    const/4 v0, 0x1

    .line 4539
    .local v0, canDial:Z
    :goto_21
    return v0

    .line 4529
    .end local v0           #canDial:Z
    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .registers 28
    .parameter "r"

    .prologue
    .line 2053
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/Connection;

    .line 2055
    .local v5, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v14

    .line 2056
    .local v14, duration:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1f

    .line 2057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    move-object/from16 v22, v0

    const-wide/16 v23, 0x3e8

    div-long v23, v14, v23

    invoke-virtual/range {v22 .. v24}, Lcom/android/phone/CallCard;->setElapsedTime(J)V

    .line 2060
    :cond_1f
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v9

    .line 2061
    .local v9, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v19

    .line 2062
    .local v19, phone:Lcom/android/internal/telephony/Phone;
    sget-boolean v22, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v22, :cond_57

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "onDisconnect: connection \'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\', cause = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2065
    :cond_57
    sget-object v22, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v22

    if-ne v9, v0, :cond_10f

    const/16 v22, 0x1

    :goto_5f
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallScreen;->mRemoteCallEnd:Z

    .line 2069
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "hide_call_lost_dialog"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_96

    .line 2070
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v18

    .line 2071
    .local v18, o:Ljava/lang/Object;
    const/4 v10, 0x0

    .line 2072
    .local v10, ci:Lcom/android/internal/telephony/CallerInfo;
    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/internal/telephony/CallerInfo;

    move/from16 v22, v0

    if-eqz v22, :cond_113

    move-object/from16 v10, v18

    .line 2073
    check-cast v10, Lcom/android/internal/telephony/CallerInfo;

    .line 2077
    .end local v18           #o:Ljava/lang/Object;
    :cond_8a
    :goto_8a
    if-eqz v10, :cond_123

    .line 2078
    invoke-virtual {v10}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallScreen;->mIsEmergencyNumber:Z

    .line 2085
    .end local v10           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_96
    :goto_96
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v22

    if-nez v22, :cond_12d

    const/4 v13, 0x1

    .line 2086
    .local v13, currentlyIdle:Z
    :goto_9d
    const/4 v3, 0x0

    .line 2087
    .local v3, autoretrySetting:I
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_130

    const/16 v20, 0x1

    .line 2088
    .local v20, phoneIsCdma:Z
    :goto_ac
    if-eqz v20, :cond_c6

    .line 2091
    if-eqz v13, :cond_c6

    .line 2092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "call_auto_retry"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 2098
    :cond_c6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    move-object/from16 v22, v0

    sget-object v23, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_134

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    move-object/from16 v22, v0

    if-eqz v22, :cond_134

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    move/from16 v22, v0

    if-nez v22, :cond_134

    .line 2101
    sget-object v22, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 2102
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 2361
    :cond_10e
    :goto_10e
    return-void

    .line 2065
    .end local v3           #autoretrySetting:I
    .end local v13           #currentlyIdle:Z
    .end local v20           #phoneIsCdma:Z
    :cond_10f
    const/16 v22, 0x0

    goto/16 :goto_5f

    .line 2074
    .restart local v10       #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v18       #o:Ljava/lang/Object;
    :cond_113
    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move/from16 v22, v0

    if-eqz v22, :cond_8a

    .line 2075
    check-cast v18, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v18           #o:Ljava/lang/Object;
    move-object/from16 v0, v18

    iget-object v10, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto/16 :goto_8a

    .line 2080
    :cond_123
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallScreen;->mIsEmergencyNumber:Z

    goto/16 :goto_96

    .line 2085
    .end local v10           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_12d
    const/4 v13, 0x0

    goto/16 :goto_9d

    .line 2087
    .restart local v3       #autoretrySetting:I
    .restart local v13       #currentlyIdle:Z
    :cond_130
    const/16 v20, 0x0

    goto/16 :goto_ac

    .line 2104
    .restart local v20       #phoneIsCdma:Z
    :cond_134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    move-object/from16 v22, v0

    sget-object v23, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_170

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    move-object/from16 v22, v0

    if-eqz v22, :cond_17e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    move/from16 v22, v0

    if-eqz v22, :cond_17e

    .line 2107
    :cond_170
    sget-boolean v22, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v22, :cond_10e

    const-string v22, "onDisconnect: OTA Call end already handled"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_10e

    .line 2114
    :cond_17e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearDigits()V

    .line 2119
    sget-object v22, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v22

    if-ne v9, v0, :cond_1c2

    .line 2123
    invoke-static {}, Lcom/android/phone/CallNotifier;->getSuppSvcNotification()Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    move-result-object v21

    .line 2124
    .local v21, suppSvcNotification:Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    if-eqz v21, :cond_272

    .line 2125
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_272

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    move/from16 v22, v0

    const/16 v23, 0xa

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_272

    .line 2127
    const v22, 0x7f0c002a

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    .line 2128
    invoke-static {}, Lcom/android/phone/CallNotifier;->clearSuppSvcNotification()V

    goto/16 :goto_10e

    .line 2132
    .end local v21           #suppSvcNotification:Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    :cond_1c2
    sget-object v22, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v22

    if-ne v9, v0, :cond_1d8

    .line 2133
    const v22, 0x7f0c0017

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_10e

    .line 2135
    :cond_1d8
    sget-object v22, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v22

    if-ne v9, v0, :cond_1ee

    .line 2136
    const v22, 0x7f0c0016

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_10e

    .line 2138
    :cond_1ee
    sget-object v22, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v22

    if-ne v9, v0, :cond_204

    .line 2139
    const v22, 0x7f0c001b

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_10e

    .line 2141
    :cond_204
    sget-object v22, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v22

    if-ne v9, v0, :cond_21a

    .line 2142
    const v22, 0x7f0c001c

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_10e

    .line 2144
    :cond_21a
    sget-object v22, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v22

    if-ne v9, v0, :cond_230

    .line 2145
    const v22, 0x7f0c001d

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_10e

    .line 2147
    :cond_230
    sget-object v22, Lcom/android/internal/telephony/Connection$DisconnectCause;->DIAL_MODIFIED_TO_USSD:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v22

    if-ne v9, v0, :cond_246

    .line 2148
    const v22, 0x7f0c0018

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_10e

    .line 2150
    :cond_246
    sget-object v22, Lcom/android/internal/telephony/Connection$DisconnectCause;->DIAL_MODIFIED_TO_SS:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v22

    if-ne v9, v0, :cond_25c

    .line 2151
    const v22, 0x7f0c0019

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_10e

    .line 2153
    :cond_25c
    sget-object v22, Lcom/android/internal/telephony/Connection$DisconnectCause;->DIAL_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v22

    if-ne v9, v0, :cond_272

    .line 2154
    const v22, 0x7f0c001a

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_10e

    .line 2158
    :cond_272
    if-eqz v20, :cond_2a5

    .line 2159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/CallNotifier;->getPreviousCdmaCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    .line 2160
    .local v8, callState:Lcom/android/internal/telephony/Call$State;
    sget-object v22, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v22

    if-ne v8, v0, :cond_31e

    sget-object v22, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v22

    if-eq v9, v0, :cond_31e

    sget-object v22, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v22

    if-eq v9, v0, :cond_31e

    sget-object v22, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v22

    if-eq v9, v0, :cond_31e

    sget-object v22, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v22

    if-eq v9, v0, :cond_31e

    .line 2165
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->showCallLostDialog()V

    .line 2199
    .end local v8           #callState:Lcom/android/internal/telephony/Call$State;
    :cond_2a5
    :goto_2a5
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 2200
    .local v6, call:Lcom/android/internal/telephony/Call;
    if-eqz v6, :cond_2eb

    .line 2209
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v12

    .line 2210
    .local v12, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v12, :cond_2eb

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_2eb

    .line 2211
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_2c1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2eb

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/Connection;

    .line 2212
    .local v11, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2c1

    .line 2222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 2223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 2242
    .end local v11           #conn:Lcom/android/internal/telephony/Connection;
    .end local v12           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v17           #i$:Ljava/util/Iterator;
    :cond_2eb
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/phone/InCallScreen;->mLastDisconnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 2246
    sget-object v22, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v22

    if-eq v9, v0, :cond_2fb

    sget-object v22, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v22

    if-ne v9, v0, :cond_3a0

    :cond_2fb
    if-eqz v13, :cond_3a0

    const/4 v4, 0x1

    .line 2268
    .local v4, bailOutImmediately:Z
    :goto_2fe
    if-eqz v4, :cond_3a3

    .line 2269
    sget-boolean v22, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v22, :cond_30d

    const-string v22, "- onDisconnect: bailOutImmediately..."

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2275
    :cond_30d
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect(Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_10e

    .line 2166
    .end local v4           #bailOutImmediately:Z
    .end local v6           #call:Lcom/android/internal/telephony/Call;
    .restart local v8       #callState:Lcom/android/internal/telephony/Call$State;
    :cond_31e
    sget-object v22, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v22

    if-eq v8, v0, :cond_32a

    sget-object v22, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v22

    if-ne v8, v0, :cond_2a5

    :cond_32a
    sget-object v22, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v22

    if-eq v9, v0, :cond_2a5

    sget-object v22, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v22

    if-eq v9, v0, :cond_2a5

    sget-object v22, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v22

    if-eq v9, v0, :cond_2a5

    sget-object v22, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v22

    if-eq v9, v0, :cond_2a5

    .line 2172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/phone/InCallUiState;->needToShowCallLostDialog:Z

    move/from16 v22, v0

    if-eqz v22, :cond_36f

    .line 2174
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->showCallLostDialog()V

    .line 2175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/phone/InCallUiState;->needToShowCallLostDialog:Z

    goto/16 :goto_2a5

    .line 2177
    :cond_36f
    if-nez v3, :cond_38a

    .line 2179
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->showCallLostDialog()V

    .line 2180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/phone/InCallUiState;->needToShowCallLostDialog:Z

    goto/16 :goto_2a5

    .line 2184
    :cond_38a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/phone/InCallUiState;->needToShowCallLostDialog:Z

    goto/16 :goto_2a5

    .line 2246
    .end local v8           #callState:Lcom/android/internal/telephony/Call$State;
    .restart local v6       #call:Lcom/android/internal/telephony/Call;
    :cond_3a0
    const/4 v4, 0x0

    goto/16 :goto_2fe

    .line 2277
    .restart local v4       #bailOutImmediately:Z
    :cond_3a3
    sget-boolean v22, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v22, :cond_3b0

    const-string v22, "- onDisconnect: delayed bailout..."

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2284
    :cond_3b0
    if-eqz v13, :cond_3e0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CallManager;->hasDisconnectedFgCall()Z

    move-result v22

    if-nez v22, :cond_3ca

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CallManager;->hasDisconnectedBgCall()Z

    move-result v22

    if-eqz v22, :cond_3e0

    .line 2286
    :cond_3ca
    sget-boolean v22, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v22, :cond_3d7

    const-string v22, "- onDisconnect: switching to \'Call ended\' state..."

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2287
    :cond_3d7
    sget-object v22, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 2293
    :cond_3e0
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 2297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v16

    .line 2298
    .local v16, hasActiveCall:Z
    if-nez v16, :cond_454

    .line 2299
    sget-boolean v22, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v22, :cond_3fc

    const-string v22, "- onDisconnect: cleaning up after FG call disconnect..."

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2303
    :cond_3fc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    move-object/from16 v22, v0

    if-eqz v22, :cond_415

    .line 2305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog;->dismiss()V

    .line 2306
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 2308
    :cond_415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    move-object/from16 v22, v0

    if-eqz v22, :cond_42e

    .line 2310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog;->dismiss()V

    .line 2311
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 2313
    :cond_42e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    move-object/from16 v22, v0

    if-eqz v22, :cond_454

    .line 2314
    sget-boolean v22, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v22, :cond_443

    const-string v22, "- DISMISSING mPausePromptDialog."

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2315
    :cond_443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog;->dismiss()V

    .line 2316
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 2330
    :cond_454
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_487

    .line 2331
    if-nez v13, :cond_487

    .line 2335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 2339
    sget-boolean v22, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v22, :cond_478

    const-string v22, "onDisconnect: Call Collision case - staying on InCallScreen."

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2340
    :cond_478
    sget-boolean v22, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v22, :cond_10e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneUtils;->dumpCallState(Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_10e

    .line 2349
    :cond_487
    sget-object v22, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v22

    if-ne v9, v0, :cond_4ba

    const/16 v7, 0xc8

    .line 2352
    .local v7, callEndedDisplayDelay:I
    :goto_48f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x6c

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->removeMessages(I)V

    .line 2353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x6c

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    int-to-long v0, v7

    move-wide/from16 v24, v0

    invoke-virtual/range {v22 .. v25}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_10e

    .line 2349
    .end local v7           #callEndedDisplayDelay:I
    :cond_4ba
    const/16 v7, 0x7d0

    goto :goto_48f
.end method

.method private onHoldClick()V
    .registers 7

    .prologue
    .line 3128
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 3129
    .local v0, hasActiveCall:Z
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    .line 3130
    .local v1, hasHoldingCall:Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onHoldClick: hasActiveCall = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", hasHoldingCall = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3134
    if-eqz v0, :cond_40

    if-nez v1, :cond_40

    .line 3136
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 3138
    const/4 v3, 0x1

    .line 3139
    .local v3, newHoldState:Z
    const/4 v2, 0x1

    .line 3156
    .local v2, holdButtonEnabled:Z
    :goto_3b
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->hideDialpadInternal(Z)V

    .line 3157
    return-void

    .line 3140
    .end local v2           #holdButtonEnabled:Z
    .end local v3           #newHoldState:Z
    :cond_40
    if-nez v0, :cond_50

    if-eqz v1, :cond_50

    .line 3142
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 3144
    const/4 v3, 0x0

    .line 3145
    .restart local v3       #newHoldState:Z
    const/4 v2, 0x1

    .restart local v2       #holdButtonEnabled:Z
    goto :goto_3b

    .line 3148
    .end local v2           #holdButtonEnabled:Z
    .end local v3           #newHoldState:Z
    :cond_50
    const/4 v3, 0x0

    .line 3149
    .restart local v3       #newHoldState:Z
    const/4 v2, 0x0

    .restart local v2       #holdButtonEnabled:Z
    goto :goto_3b
.end method

.method private onIncomingRing()V
    .registers 2

    .prologue
    .line 5103
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "onIncomingRing()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5107
    :cond_9
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_16

    .line 5108
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/InCallTouchUi;->onIncomingRing()V

    .line 5110
    :cond_16
    return-void
.end method

.method private onMMICancel(Lcom/android/internal/telephony/Phone;)V
    .registers 3
    .parameter "phone"

    .prologue
    .line 2408
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    .line 2419
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "onMMICancel: finishing InCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2420
    :cond_c
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 2421
    return-void
.end method

.method private onMuteClick()V
    .registers 4

    .prologue
    .line 3186
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v1

    if-nez v1, :cond_21

    const/4 v0, 0x1

    .line 3187
    .local v0, newMuteState:Z
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMuteClick(): newMuteState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3188
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 3189
    return-void

    .line 3186
    .end local v0           #newMuteState:Z
    :cond_21
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private onNewRingingConnection()V
    .registers 2

    .prologue
    .line 5116
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "onNewRingingConnection()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5134
    :cond_9
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager;

    if-eqz v0, :cond_12

    .line 5135
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager;

    invoke-virtual {v0}, Lcom/android/phone/RespondViaSmsManager;->dismissPopup()V

    .line 5137
    :cond_12
    return-void
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .registers 5
    .parameter "r"

    .prologue
    .line 2003
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 2004
    .local v0, state:Lcom/android/internal/telephony/Phone$State;
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPhoneStateChanged: current state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2011
    :cond_20
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/phone/PhoneApp;->mWakeUpScreen:Z

    if-nez v1, :cond_36

    .line 2012
    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v1, :cond_36

    .line 2013
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_35

    const-string v1, "onPhoneStateChanged: Activity not in foreground! Bailing out..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2034
    :cond_35
    :goto_35
    return-void

    .line 2024
    :cond_36
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    .line 2030
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_35

    .line 2031
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    goto :goto_35
.end method

.method private onShowHideDialpad()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 3303
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3304
    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->hideDialpadInternal(Z)V

    .line 3308
    :goto_c
    return-void

    .line 3306
    :cond_d
    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->showDialpadInternal(Z)V

    goto :goto_c
.end method

.method private reStartTone()V
    .registers 4

    .prologue
    .line 5635
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v1}, Landroid/media/voicerecorder/BaseVoiceRecorder;->getState()I

    move-result v1

    if-ne v0, v1, :cond_28

    .line 5636
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_14

    const-string v0, "InCallScreen"

    const-string v1, "reStartTone : restart tone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5637
    :cond_14
    const/16 v0, 0x23

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->startTone(C)V

    .line 5638
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_24

    const-string v0, "InCallScreen"

    const-string v1, "reStartTone : stop tone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5639
    :cond_24
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->stopTone()V

    .line 5643
    :cond_27
    :goto_27
    return-void

    .line 5641
    :cond_28
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_27

    const-string v0, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reStartTone : mRecorderState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v2}, Landroid/media/voicerecorder/BaseVoiceRecorder;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method

.method private registerForLineControlInfo()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    const/4 v7, 0x1

    .line 1350
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mRegisteredForLineControlInfo:Z

    if-nez v0, :cond_49

    .line 1351
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 1352
    .local v6, phoneType:I
    if-ne v6, v1, :cond_4a

    .line 1353
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/Object;

    .line 1354
    .local v4, objs:[Ljava/lang/Object;
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    aput-object v0, v4, v2

    .line 1355
    const/16 v0, 0x7d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    .line 1356
    const/4 v0, 0x0

    aput-object v0, v4, v1

    .line 1358
    array-length v0, v4

    new-array v5, v0, [Ljava/lang/Class;

    .line 1359
    .local v5, clazzs:[Ljava/lang/Class;
    const-class v0, Landroid/os/Handler;

    aput-object v0, v5, v2

    .line 1360
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v5, v7

    .line 1362
    const-class v0, Ljava/lang/Object;

    aput-object v0, v5, v1

    .line 1365
    const-class v0, Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "registerForLineControlInfo"

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/InCallScreen;->invokeReflectedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 1369
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_47

    const-string v0, "Registering for Line Control Info."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1373
    .end local v4           #objs:[Ljava/lang/Object;
    .end local v5           #clazzs:[Ljava/lang/Class;
    :cond_47
    :goto_47
    iput-boolean v7, p0, Lcom/android/phone/InCallScreen;->mRegisteredForLineControlInfo:Z

    .line 1375
    .end local v6           #phoneType:I
    :cond_49
    return-void

    .line 1371
    .restart local v6       #phoneType:I
    :cond_4a
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_47

    const-string v0, "current phone is not CDMA!"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_47
.end method

.method private setEndButton(Z)V
    .registers 4
    .parameter "enable"

    .prologue
    .line 5660
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEndButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setSoundEffectsEnabled(Z)V

    .line 5662
    if-eqz p1, :cond_18

    .line 5663
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEndButton:Landroid/widget/ImageButton;

    const v1, 0x7f020047

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 5664
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEndButton:Landroid/widget/ImageButton;

    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 5669
    :goto_17
    return-void

    .line 5666
    :cond_18
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEndButton:Landroid/widget/ImageButton;

    const v1, 0x7f020048

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 5667
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEndButton:Landroid/widget/ImageButton;

    const v1, 0x7f020033

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_17
.end method

.method private showCallLostDialog()V
    .registers 4

    .prologue
    .line 3679
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "showCallLostDialog()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3682
    :cond_9
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_17

    .line 3683
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_16

    const-string v0, "showCallLostDialog: not the foreground Activity! Bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3706
    :cond_16
    :goto_16
    return-void

    .line 3688
    :cond_17
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hide_call_lost_dialog"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_33

    .line 3689
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsEmergencyNumber:Z

    if-nez v0, :cond_16

    .line 3696
    :cond_33
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_41

    .line 3697
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_16

    const-string v0, "showCallLostDialog: There is a mCallLostDialog already."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_16

    .line 3701
    :cond_41
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0029

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    .line 3705
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_16
.end method

.method private showDialpadInternal(Z)V
    .registers 9
    .parameter "animate"

    .prologue
    const v6, 0x7f070058

    .line 3314
    invoke-static {p0}, Lcom/android/phone/InCallScreen;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 3315
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3316
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3317
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3318
    .local v3, screenWidth:I
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3320
    .local v2, screenHeight:I
    const v4, 0x7f070056

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/phone/InCallContactPhoto;

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->dtmfphoto:Lcom/android/phone/InCallContactPhoto;

    .line 3321
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->dtmfphoto:Lcom/android/phone/InCallContactPhoto;

    if-eqz v4, :cond_5a

    .line 3322
    if-le v3, v2, :cond_5a

    .line 3323
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4, v5}, Lcom/android/phone/CallCard;->getCallerinfo(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 3325
    .local v1, info:Lcom/android/internal/telephony/CallerInfo;
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 3326
    invoke-virtual {p0, v6}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mDialPadView_LeftName:Landroid/widget/TextView;

    .line 3327
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialPadView_LeftName:Landroid/widget/TextView;

    const v5, 0x7f0c0028

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 3328
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->dtmfphoto:Lcom/android/phone/InCallContactPhoto;

    const v5, 0x7f02006b

    invoke-static {v4, v5}, Lcom/android/phone/InCallScreen;->showImage(Landroid/widget/ImageView;I)V

    .line 3361
    .end local v0           #dm:Landroid/util/DisplayMetrics;
    .end local v1           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v2           #screenHeight:I
    .end local v3           #screenWidth:I
    :cond_5a
    :goto_5a
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v4, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->openDialer(Z)V

    .line 3364
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/phone/InCallUiState;->showDialpad:Z

    .line 3365
    return-void

    .line 3331
    .restart local v0       #dm:Landroid/util/DisplayMetrics;
    .restart local v1       #info:Lcom/android/internal/telephony/CallerInfo;
    .restart local v2       #screenHeight:I
    .restart local v3       #screenWidth:I
    :cond_67
    if-eqz v1, :cond_78

    iget-boolean v4, v1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v4, :cond_78

    .line 3332
    iget-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_d4

    .line 3333
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->dtmfphoto:Lcom/android/phone/InCallContactPhoto;

    iget-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-static {v4, v5}, Lcom/android/phone/InCallScreen;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 3339
    :cond_78
    :goto_78
    if-eqz v1, :cond_5a

    .line 3340
    invoke-virtual {p0, v6}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mDialPadView_LeftName:Landroid/widget/TextView;

    .line 3341
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialPadView_LeftName:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3343
    const v4, 0x7f07005a

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mDialPadView_LeftNumber:Landroid/widget/TextView;

    .line 3344
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialPadView_LeftNumber:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3346
    const v4, 0x7f07005e

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mDialPadView_SocialStatus:Landroid/widget/TextView;

    .line 3347
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialPadView_SocialStatus:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3349
    const v4, 0x7f070057

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mDialPadViewLeft_Banner:Landroid/view/ViewGroup;

    .line 3350
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialPadView_LeftNumber:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mDialPadViewLeft_Banner:Landroid/view/ViewGroup;

    invoke-static {v4, v5, v6}, Lcom/android/phone/InCallScreen;->showText(Landroid/widget/TextView;Ljava/lang/String;Landroid/view/ViewGroup;)V

    .line 3351
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialPadView_LeftName:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mDialPadViewLeft_Banner:Landroid/view/ViewGroup;

    invoke-static {v4, v5, v6}, Lcom/android/phone/InCallScreen;->showText(Landroid/widget/TextView;Ljava/lang/String;Landroid/view/ViewGroup;)V

    .line 3352
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialPadView_SocialStatus:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mDialPadViewLeft_Banner:Landroid/view/ViewGroup;

    invoke-static {v4, v5, v6}, Lcom/android/phone/InCallScreen;->showText(Landroid/widget/TextView;Ljava/lang/String;Landroid/view/ViewGroup;)V

    goto :goto_5a

    .line 3335
    :cond_d4
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->dtmfphoto:Lcom/android/phone/InCallContactPhoto;

    const v5, 0x7f02006f

    invoke-static {v4, v5}, Lcom/android/phone/InCallScreen;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_78
.end method

.method private showExitingECMDialog()V
    .registers 6

    .prologue
    .line 3741
    const-string v3, "InCallScreen"

    const-string v4, "showExitingECMDialog()..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3743
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_1c

    .line 3744
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_14

    const-string v3, "- DISMISSING mExitingECMDialog."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3745
    :cond_14
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 3746
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    .line 3753
    :cond_1c
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v3, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 3754
    .local v2, inCallUiState:Lcom/android/phone/InCallUiState;
    new-instance v1, Lcom/android/phone/InCallScreen$17;

    invoke-direct {v1, p0, v2}, Lcom/android/phone/InCallScreen$17;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/InCallUiState;)V

    .line 3758
    .local v1, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/phone/InCallScreen$18;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/InCallScreen$18;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/InCallUiState;)V

    .line 3764
    .local v0, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c0221

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c002d

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    .line 3769
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 3771
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 3772
    return-void
.end method

.method private showGenericErrorDialog(IZ)V
    .registers 10
    .parameter "resid"
    .parameter "isStartupError"

    .prologue
    .line 3634
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 3635
    .local v2, msg:Ljava/lang/CharSequence;
    sget-boolean v5, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v5, :cond_28

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showGenericErrorDialog(\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\')..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3640
    :cond_28
    if-eqz p2, :cond_5e

    .line 3641
    new-instance v1, Lcom/android/phone/InCallScreen$13;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen$13;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 3645
    .local v1, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/phone/InCallScreen$14;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$14;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 3664
    .local v0, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    :goto_34
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c002d

    invoke-virtual {v5, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 3672
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 3675
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 3676
    return-void

    .line 3650
    .end local v0           #cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    .end local v1           #clickListener:Landroid/content/DialogInterface$OnClickListener;
    :cond_5e
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getVoiceSubscription()I

    move-result v4

    .line 3651
    .local v4, sub:I
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5, v4}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 3652
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    new-instance v1, Lcom/android/phone/InCallScreen$15;

    invoke-direct {v1, p0, v3}, Lcom/android/phone/InCallScreen$15;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Phone;)V

    .line 3656
    .restart local v1       #clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/phone/InCallScreen$16;

    invoke-direct {v0, p0, v3}, Lcom/android/phone/InCallScreen$16;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Phone;)V

    .restart local v0       #cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    goto :goto_34
.end method

.method private static final showImage(Landroid/widget/ImageView;I)V
    .registers 3
    .parameter "view"
    .parameter "resource"

    .prologue
    .line 5679
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5680
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5681
    return-void
.end method

.method private static final showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "view"
    .parameter "drawable"

    .prologue
    .line 5675
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5676
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5677
    return-void
.end method

.method private showPausePromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .registers 9
    .parameter "c"
    .parameter "postDialStrAfterPause"

    .prologue
    .line 2572
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2573
    .local v2, r:Landroid/content/res/Resources;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2574
    .local v0, buf:Ljava/lang/StringBuilder;
    const v3, 0x7f0c0038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2575
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2577
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_2b

    .line 2578
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_23

    const-string v3, "- DISMISSING mPausePromptDialog."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2579
    :cond_23
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 2580
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 2583
    :cond_2b
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 2586
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 2588
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x78

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 2589
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2590
    return-void
.end method

.method private showProgressIndication(II)V
    .registers 5
    .parameter "titleResId"
    .parameter "messageResId"

    .prologue
    .line 3924
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showProgressIndication(message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3929
    :cond_20
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissProgressIndication()V

    .line 3930
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 3931
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lcom/android/phone/InCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 3932
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p2}, Lcom/android/phone/InCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3933
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 3934
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 3935
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 3936
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3937
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 3938
    return-void
.end method

.method private showStatusIndication(Lcom/android/phone/Constants$CallStatusCode;)V
    .registers 5
    .parameter "status"

    .prologue
    const/4 v2, 0x1

    .line 3520
    sget-object v0, Lcom/android/phone/InCallScreen$20;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    invoke-virtual {p1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_70

    .line 3608
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showStatusIndication: unexpected status code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3524
    :pswitch_25
    const-string v0, "InCallScreen"

    const-string v1, "showStatusIndication: nothing to display"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3627
    :cond_2c
    :goto_2c
    :pswitch_2c
    return-void

    .line 3536
    :pswitch_2d
    const v0, 0x7f0c01c5

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_2c

    .line 3544
    :pswitch_34
    const v0, 0x7f0c01c6

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_2c

    .line 3550
    :pswitch_3b
    const v0, 0x7f0c01c7

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_2c

    .line 3558
    :pswitch_42
    const v0, 0x7f0c01c8

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_2c

    .line 3571
    :pswitch_49
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_2c

    .line 3572
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    const v1, 0x7f0c01cb

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2c

    .line 3582
    :pswitch_61
    const v0, 0x7f0c01ca

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_2c

    .line 3589
    :pswitch_68
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->handleMissingVoiceMailNumber()V

    goto :goto_2c

    .line 3604
    :pswitch_6c
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->showExitingECMDialog()V

    goto :goto_2c

    .line 3520
    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_25
        :pswitch_2d
        :pswitch_34
        :pswitch_3b
        :pswitch_42
        :pswitch_49
        :pswitch_61
        :pswitch_68
        :pswitch_2c
        :pswitch_6c
    .end packed-switch
.end method

.method private static final showText(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 3
    .parameter "view"
    .parameter "resource"

    .prologue
    .line 5688
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5689
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5690
    return-void
.end method

.method private static final showText(Landroid/widget/TextView;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .registers 4
    .parameter "view"
    .parameter "resource"
    .parameter "vg"

    .prologue
    const/4 v0, 0x0

    .line 5683
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5684
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5685
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5686
    return-void
.end method

.method private showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .registers 9
    .parameter "c"
    .parameter "postDialStr"

    .prologue
    .line 2504
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showWaitPromptDialogChoice: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2506
    :cond_20
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2507
    .local v2, r:Landroid/content/res/Resources;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2508
    .local v0, buf:Ljava/lang/StringBuilder;
    const v3, 0x7f0c0037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2509
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2539
    const/4 v1, 0x0

    .line 2540
    .local v1, firstTimeShow:Z
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-nez v3, :cond_47

    .line 2542
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 2543
    const/4 v1, 0x1

    .line 2546
    :cond_47
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2547
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    const v4, 0x7f0c003a

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/phone/InCallScreen$6;

    invoke-direct {v5, p0, p1}, Lcom/android/phone/InCallScreen$6;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2554
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    const v4, 0x7f0c003b

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/phone/InCallScreen$7;

    invoke-direct {v5, p0, p1}, Lcom/android/phone/InCallScreen$7;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2560
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2561
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 2562
    if-eqz v1, :cond_89

    .line 2563
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 2565
    :cond_89
    return-void
.end method

.method private showWildPromptDialog(Lcom/android/internal/telephony/Connection;)V
    .registers 6
    .parameter "c"

    .prologue
    .line 2627
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->createWildPromptView()Landroid/view/View;

    move-result-object v0

    .line 2629
    .local v0, v:Landroid/view/View;
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_10

    .line 2631
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2632
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 2635
    :cond_10
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0039

    new-instance v3, Lcom/android/phone/InCallScreen$9;

    invoke-direct {v3, p0, p1}, Lcom/android/phone/InCallScreen$9;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/InCallScreen$8;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/InCallScreen$8;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 2660
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 2662
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2664
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 2665
    return-void
.end method

.method private startTone(C)V
    .registers 4
    .parameter "c"

    .prologue
    .line 5439
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 5440
    .local v0, phoneType:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    .line 5441
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->startTone(C)V

    .line 5445
    :goto_12
    return-void

    .line 5443
    :cond_13
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/CallManager;->startDtmf(C)Z

    goto :goto_12
.end method

.method private stopTimer()V
    .registers 2

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->stopTimer()V

    .line 1572
    :cond_9
    return-void
.end method

.method private stopTone()V
    .registers 6

    .prologue
    .line 5452
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 5453
    .local v1, phoneType:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_26

    .line 5455
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dtmf_tone_type"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 5457
    .local v0, ToneType:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_25

    .line 5458
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->stopDtmf()V

    .line 5459
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneIfNeeded()V

    .line 5464
    .end local v0           #ToneType:I
    :cond_25
    :goto_25
    return-void

    .line 5462
    :cond_26
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->stopDtmf()V

    goto :goto_25
.end method

.method private storagePath()Ljava/lang/String;
    .registers 5

    .prologue
    .line 5335
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_20

    const-string v1, "InCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExternalStorageState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5336
    :cond_20
    const/4 v0, 0x0

    .line 5338
    .local v0, path:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->externalStoragePath()Ljava/lang/String;

    move-result-object v0

    .line 5340
    const-string v1, "InCallScreen"

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

    .line 5342
    if-nez v0, :cond_43

    .line 5343
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalStoragePath()Ljava/lang/String;

    move-result-object v0

    .line 5346
    :cond_43
    if-nez v0, :cond_54

    .line 5347
    const v1, 0x7f0c02fd

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 5352
    :cond_54
    return-object v0
.end method

.method private syncWithPhoneState()Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 2807
    const/4 v2, 0x0

    .line 2808
    .local v2, updateSuccessful:Z
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_b

    const-string v4, "syncWithPhoneState()..."

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2809
    :cond_b
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->dumpCallState(Lcom/android/internal/telephony/Phone;)V

    .line 2816
    :cond_14
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-eqz v4, :cond_37

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v4, v4, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v5, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v4, v5, :cond_34

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v4, v4, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v5, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v4, v5, :cond_37

    .line 2821
    :cond_34
    sget-object v3, Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;->SUCCESS:Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;

    .line 2857
    :goto_36
    return-object v3

    .line 2830
    :cond_37
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v4, v3, :cond_78

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_78

    move v0, v3

    .line 2837
    .local v0, hasPendingMmiCodes:Z
    :goto_4c
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v4}, Lcom/android/phone/InCallUiState;->isProgressIndicationActive()Z

    move-result v1

    .line 2839
    .local v1, showProgressIndication:Z
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v4

    if-nez v4, :cond_70

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v4

    if-nez v4, :cond_70

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v4

    if-nez v4, :cond_70

    if-nez v0, :cond_70

    if-eqz v1, :cond_7a

    .line 2843
    :cond_70
    iput-boolean v3, p0, Lcom/android/phone/InCallScreen;->mHideImmediately:Z

    .line 2845
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 2846
    sget-object v3, Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;->SUCCESS:Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;

    goto :goto_36

    .line 2830
    .end local v0           #hasPendingMmiCodes:Z
    .end local v1           #showProgressIndication:Z
    :cond_78
    const/4 v0, 0x0

    goto :goto_4c

    .line 2851
    .restart local v0       #hasPendingMmiCodes:Z
    .restart local v1       #showProgressIndication:Z
    :cond_7a
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/phone/PhoneApp;->mWakeUpScreen:Z

    if-eqz v3, :cond_8e

    iget-boolean v3, p0, Lcom/android/phone/InCallScreen;->mRemoteCallEnd:Z

    if-eqz v3, :cond_8e

    .line 2852
    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 2853
    sget-object v3, Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;->SUCCESS:Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;

    goto :goto_36

    .line 2856
    :cond_8e
    const-string v3, "InCallScreen"

    const-string v4, "syncWithPhoneState: phone is idle (shouldn\'t be here)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    sget-object v3, Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;->PHONE_NOT_IN_USE:Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;

    goto :goto_36
.end method

.method private unregisterForLineControllInfo()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 1378
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mRegisteredForLineControlInfo:Z

    if-eqz v0, :cond_35

    .line 1379
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 1380
    .local v6, phoneType:I
    const/4 v0, 0x2

    if-ne v6, v0, :cond_36

    .line 1382
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    .line 1384
    .local v4, objs:[Ljava/lang/Object;
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    aput-object v0, v4, v7

    .line 1386
    array-length v0, v4

    new-array v5, v0, [Ljava/lang/Class;

    .line 1387
    .local v5, clazzs:[Ljava/lang/Class;
    const-class v0, Landroid/os/Handler;

    aput-object v0, v5, v7

    .line 1389
    const-class v0, Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unregisterForLineControlInfo"

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/InCallScreen;->invokeReflectedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 1392
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_33

    const-string v0, "unRegistering for Line Control Info."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1397
    .end local v4           #objs:[Ljava/lang/Object;
    .end local v5           #clazzs:[Ljava/lang/Class;
    :cond_33
    :goto_33
    iput-boolean v7, p0, Lcom/android/phone/InCallScreen;->mRegisteredForLineControlInfo:Z

    .line 1400
    .end local v6           #phoneType:I
    :cond_35
    return-void

    .line 1394
    .restart local v6       #phoneType:I
    :cond_36
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_33

    const-string v0, "current phone is not CDMA!"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_33
.end method

.method private unregisterForPhoneStates()V
    .registers 3

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 1337
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 1338
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 1339
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 1340
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 1341
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPostDialCharacter(Landroid/os/Handler;)V

    .line 1342
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 1343
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 1344
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 1345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mRegisteredForPhoneStates:Z

    .line 1346
    return-void
.end method

.method private updateDialpadVisibility()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 4409
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_15

    .line 4410
    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->hideDialpadInternal(Z)V

    .line 4420
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearDigits()V

    .line 4430
    :cond_15
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 4433
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mHideImmediately:Z

    if-eqz v0, :cond_27

    .line 4434
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4435
    iput-boolean v2, p0, Lcom/android/phone/InCallScreen;->mHideImmediately:Z

    .line 4449
    :cond_26
    :goto_26
    return-void

    .line 4437
    :cond_27
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-static {v0, v3}, Lcom/android/phone/CallCard$Fade;->hide(Landroid/view/View;I)V

    goto :goto_26

    .line 4443
    :cond_2d
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v0, v1, :cond_41

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v1, :cond_26

    .line 4446
    :cond_41
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/android/phone/CallCard$Fade;->show(Landroid/view/View;)V

    goto :goto_26
.end method

.method private updateInCallTouchUi()V
    .registers 3

    .prologue
    .line 4580
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_b

    .line 4581
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallTouchUi;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 4583
    :cond_b
    return-void
.end method

.method private updateManageConferencePanelIfNecessary()V
    .registers 7

    .prologue
    .line 4354
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v0

    .line 4355
    .local v0, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-nez v0, :cond_3a

    .line 4358
    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 4359
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->syncWithPhoneState()Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;

    move-result-object v2

    .line 4360
    .local v2, status:Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;
    sget-object v3, Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;->SUCCESS:Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;

    if-eq v2, v3, :cond_39

    .line 4361
    const-string v3, "InCallScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- syncWithPhoneState failed! status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4364
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_36

    const-string v3, "updateManageConferencePanelIfNecessary: endInCallScreenSession... 1"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4365
    :cond_36
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 4394
    .end local v2           #status:Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;
    :cond_39
    :goto_39
    return-void

    .line 4371
    :cond_3a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 4372
    .local v1, numConnections:I
    const/4 v3, 0x1

    if-gt v1, v3, :cond_73

    .line 4375
    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 4376
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->syncWithPhoneState()Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;

    move-result-object v2

    .line 4377
    .restart local v2       #status:Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;
    sget-object v3, Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;->SUCCESS:Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;

    if-eq v2, v3, :cond_39

    .line 4378
    const-string v3, "InCallScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- syncWithPhoneState failed! status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4381
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_6f

    const-string v3, "updateManageConferencePanelIfNecessary: endInCallScreenSession... 2"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4382
    :cond_6f
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    goto :goto_39

    .line 4390
    .end local v2           #status:Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;
    :cond_73
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v3}, Lcom/android/phone/ManageConferenceUtils;->getNumCallersInConference()I

    move-result v3

    if-eq v1, v3, :cond_39

    .line 4392
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v3, v0}, Lcom/android/phone/ManageConferenceUtils;->updateManageConferencePanel(Ljava/util/List;)V

    goto :goto_39
.end method

.method private updateProgressIndication()V
    .registers 5

    .prologue
    const v3, 0x7f0c01d5

    .line 3886
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3887
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissProgressIndication()V

    .line 3918
    :goto_e
    return-void

    .line 3893
    :cond_f
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 3894
    .local v0, inCallUiState:Lcom/android/phone/InCallUiState;
    sget-object v1, Lcom/android/phone/InCallScreen$20;->$SwitchMap$com$android$phone$InCallUiState$ProgressIndicationType:[I

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->getProgressIndication()Lcom/android/phone/InCallUiState$ProgressIndicationType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/InCallUiState$ProgressIndicationType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_54

    .line 3913
    const-string v1, "InCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateProgressIndication: unexpected value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->getProgressIndication()Lcom/android/phone/InCallUiState$ProgressIndicationType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3915
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissProgressIndication()V

    goto :goto_e

    .line 3897
    :pswitch_42
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissProgressIndication()V

    goto :goto_e

    .line 3901
    :pswitch_46
    const v1, 0x7f0c01d6

    invoke-direct {p0, v3, v1}, Lcom/android/phone/InCallScreen;->showProgressIndication(II)V

    goto :goto_e

    .line 3907
    :pswitch_4d
    const v1, 0x7f0c01d7

    invoke-direct {p0, v3, v1}, Lcom/android/phone/InCallScreen;->showProgressIndication(II)V

    goto :goto_e

    .line 3894
    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_42
        :pswitch_46
        :pswitch_4d
    .end packed-switch
.end method

.method private updateProviderOverlay()V
    .registers 13

    .prologue
    const/16 v11, 0x79

    const/4 v10, 0x0

    .line 3485
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v7, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 3489
    .local v1, inCallUiState:Lcom/android/phone/InCallUiState;
    const v7, 0x7f070070

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 3491
    .local v4, overlay:Landroid/view/ViewGroup;
    iget-boolean v7, v1, Lcom/android/phone/InCallUiState;->providerOverlayVisible:Z

    if-eqz v7, :cond_5b

    .line 3492
    const v7, 0x7f0c022c

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 3493
    .local v5, template:Ljava/lang/CharSequence;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/CharSequence;

    iget-object v8, v1, Lcom/android/phone/InCallUiState;->providerLabel:Ljava/lang/CharSequence;

    aput-object v8, v7, v10

    const/4 v8, 0x1

    iget-object v9, v1, Lcom/android/phone/InCallUiState;->providerAddress:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v5, v7}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 3497
    .local v6, text:Ljava/lang/CharSequence;
    const v7, 0x7f070072

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 3498
    .local v2, message:Landroid/widget/TextView;
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3500
    const v7, 0x7f070071

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3501
    .local v0, image:Landroid/widget/ImageView;
    iget-object v7, v1, Lcom/android/phone/InCallUiState;->providerIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3503
    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3507
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 3508
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v7, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 3509
    .local v3, msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x1388

    invoke-virtual {v7, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3513
    .end local v0           #image:Landroid/widget/ImageView;
    .end local v2           #message:Landroid/widget/TextView;
    .end local v3           #msg:Landroid/os/Message;
    .end local v5           #template:Ljava/lang/CharSequence;
    .end local v6           #text:Ljava/lang/CharSequence;
    :goto_5a
    return-void

    .line 3511
    :cond_5b
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_5a
.end method

.method private updateScreen()V
    .registers 11

    .prologue
    .line 2679
    sget-boolean v7, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v7, :cond_9

    const-string v7, "updateScreen()..."

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2680
    :cond_9
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v4, v7, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    .line 2694
    .local v4, inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/phone/PhoneApp;->mWakeUpScreen:Z

    if-nez v7, :cond_25

    .line 2695
    iget-boolean v7, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v7, :cond_25

    .line 2696
    sget-boolean v7, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v7, :cond_24

    const-string v7, "- updateScreen: not the foreground Activity! Bailing out..."

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2790
    :cond_24
    :goto_24
    return-void

    .line 2703
    :cond_25
    sget-object v7, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v4, v7, :cond_49

    .line 2704
    sget-boolean v7, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v7, :cond_32

    const-string v7, "- updateScreen: OTA call state NORMAL..."

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2705
    :cond_32
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v7, :cond_24

    .line 2706
    sget-boolean v7, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v7, :cond_41

    const-string v7, "- updateScreen: mApp.otaUtils is not null, call otaShowProperScreen"

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2707
    :cond_41
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v7}, Lcom/android/phone/OtaUtils;->otaShowProperScreen()V

    goto :goto_24

    .line 2710
    :cond_49
    sget-object v7, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v4, v7, :cond_a5

    .line 2711
    sget-boolean v7, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v7, :cond_56

    const-string v7, "- updateScreen: OTA call ended state ..."

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2713
    :cond_56
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 2714
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v7, v7, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v8, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v7, v8, :cond_85

    .line 2716
    sget-boolean v7, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v7, :cond_6e

    const-string v7, "- updateScreen: OTA_STATUS_ACTIVATION"

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2717
    :cond_6e
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v7, :cond_24

    .line 2718
    sget-boolean v7, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v7, :cond_7d

    const-string v7, "- updateScreen: mApp.otaUtils is not null, call otaShowActivationScreen"

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2720
    :cond_7d
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v7}, Lcom/android/phone/OtaUtils;->otaShowActivateScreen()V

    goto :goto_24

    .line 2723
    :cond_85
    sget-boolean v7, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v7, :cond_8e

    const-string v7, "- updateScreen: OTA Call end state for Dialogs"

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2724
    :cond_8e
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v7, :cond_24

    .line 2725
    sget-boolean v7, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v7, :cond_9d

    const-string v7, "- updateScreen: Show OTA Success Failure dialog"

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2726
    :cond_9d
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v7}, Lcom/android/phone/OtaUtils;->otaShowSuccessFailure()V

    goto :goto_24

    .line 2730
    :cond_a5
    sget-object v7, Lcom/android/phone/InCallUiState$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v4, v7, :cond_b7

    .line 2731
    sget-boolean v7, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v7, :cond_b2

    const-string v7, "- updateScreen: manage conference mode (NOT updating in-call UI)..."

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2732
    :cond_b2
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateManageConferencePanelIfNecessary()V

    goto/16 :goto_24

    .line 2734
    :cond_b7
    sget-object v7, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v4, v7, :cond_c4

    .line 2735
    sget-boolean v7, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v7, :cond_c4

    const-string v7, "- updateScreen: call ended state..."

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2741
    :cond_c4
    sget-boolean v7, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v7, :cond_cd

    const-string v7, "- updateScreen: updating the in-call UI..."

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2745
    :cond_cd
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 2746
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7, v8}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 2747
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateDialpadVisibility()V

    .line 2748
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateProviderOverlay()V

    .line 2749
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateProgressIndication()V

    .line 2752
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v7

    if-eqz v7, :cond_ed

    .line 2753
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    goto/16 :goto_24

    .line 2758
    :cond_ed
    const/4 v6, 0x0

    .line 2759
    .local v6, postDialStr:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v1

    .line 2760
    .local v1, fgConnections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 2761
    .local v5, phoneType:I
    const/4 v7, 0x2

    if-eq v5, v7, :cond_104

    const/4 v7, 0x4

    if-ne v5, v7, :cond_150

    .line 2763
    :cond_104
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 2764
    .local v2, fgLatestConnection:Lcom/android/internal/telephony/Connection;
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v7}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v7

    sget-object v8, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v7, v8, :cond_134

    .line 2766
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_11a
    :goto_11a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_24

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 2767
    .local v0, cn:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_11a

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v7, v8, :cond_11a

    .line 2769
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->cancelPostDial()V

    goto :goto_11a

    .line 2772
    .end local v0           #cn:Lcom/android/internal/telephony/Connection;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_134
    if-eqz v2, :cond_24

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v7, v8, :cond_24

    .line 2774
    sget-boolean v7, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v7, :cond_147

    const-string v7, "show the Wait dialog for CDMA"

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2775
    :cond_147
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v6

    .line 2776
    invoke-direct {p0, v2, v6}, Lcom/android/phone/InCallScreen;->showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto/16 :goto_24

    .line 2778
    .end local v2           #fgLatestConnection:Lcom/android/internal/telephony/Connection;
    :cond_150
    const/4 v7, 0x1

    if-eq v5, v7, :cond_156

    const/4 v7, 0x3

    if-ne v5, v7, :cond_178

    .line 2780
    :cond_156
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_15a
    :goto_15a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_24

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 2781
    .restart local v0       #cn:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_15a

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v7, v8, :cond_15a

    .line 2782
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v6

    .line 2783
    invoke-direct {p0, v0, v6}, Lcom/android/phone/InCallScreen;->showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_15a

    .line 2787
    .end local v0           #cn:Lcom/android/internal/telephony/Connection;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_178
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected phone type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private voiceRecordClick()V
    .registers 6

    .prologue
    .line 5412
    const-string v2, "InCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "voiceRecordClick()->isRecording="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v4}, Landroid/media/voicerecorder/BaseVoiceRecorder;->isRecording()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5414
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v2}, Landroid/media/voicerecorder/BaseVoiceRecorder;->isRecording()Z

    move-result v2

    if-nez v2, :cond_64

    .line 5415
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_31

    const-string v2, "InCallScreen"

    const-string v3, "voiceRecordClick: to start..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5420
    :cond_31
    :try_start_31
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->setupPathFileName()Ljava/lang/String;

    move-result-object v1

    .line 5421
    .local v1, resultPath:Ljava/lang/String;
    const-string v2, "InCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "voiceRecordClick()->resultPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5422
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v2, v1}, Landroid/media/voicerecorder/BaseVoiceRecorder;->start(Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/RuntimeException; {:try_start_31 .. :try_end_52} :catch_53

    .line 5432
    .end local v1           #resultPath:Ljava/lang/String;
    :goto_52
    return-void

    .line 5423
    :catch_53
    move-exception v0

    .line 5424
    .local v0, e:Ljava/lang/RuntimeException;
    const v2, 0x7f0c0304

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_52

    .line 5428
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_64
    const-string v2, "InCallScreen"

    const-string v3, "voiceRecordClick()->stop recording"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5429
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_76

    const-string v2, "InCallScreen"

    const-string v3, "voiceRecordClick: to stop..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5430
    :cond_76
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/media/voicerecorder/BaseVoiceRecorder;->stop(I)V

    goto :goto_52
.end method


# virtual methods
.method protected bailOutAfterErrorDialog()V
    .registers 3

    .prologue
    .line 3775
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_15

    .line 3776
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_d

    const-string v1, "bailOutAfterErrorDialog: DISMISSING mGenericErrorDialog."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3777
    :cond_d
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 3778
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 3780
    :cond_15
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_1e

    const-string v1, "bailOutAfterErrorDialog(): end InCallScreen session..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3794
    :cond_1e
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 3795
    .local v0, inCallUiState:Lcom/android/phone/InCallUiState;
    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->clearPendingCallStatusCode()V

    .line 3803
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->endInCallScreenSession(Z)V

    .line 3804
    return-void
.end method

.method connectBluetoothAudio()V
    .registers 3

    .prologue
    .line 4811
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_9

    .line 4812
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOn()V

    .line 4820
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    .line 4821
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionRequestTime:J

    .line 4822
    return-void
.end method

.method protected delayedCleanupAfterDisconnect(Lcom/android/internal/telephony/Phone;)V
    .registers 10
    .parameter "phone"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2963
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delayedCleanupAfterDisconnect()...  Phone state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2975
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 2983
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v6

    if-nez v6, :cond_33

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v6}, Lcom/android/phone/InCallUiState;->isProgressIndicationActive()Z

    move-result v6

    if-eqz v6, :cond_3f

    :cond_33
    move v3, v5

    .line 2985
    .local v3, stayHere:Z
    :goto_34
    if-eqz v3, :cond_41

    .line 2987
    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->setEndButton(Z)V

    .line 2989
    const-string v4, "- delayedCleanupAfterDisconnect: staying on the InCallScreen..."

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3073
    :goto_3e
    return-void

    .end local v3           #stayHere:Z
    :cond_3f
    move v3, v4

    .line 2983
    goto :goto_34

    .line 2992
    .restart local v3       #stayHere:Z
    :cond_41
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_4a

    const-string v6, "- delayedCleanupAfterDisconnect: phone is idle..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2996
    :cond_4a
    iget-boolean v6, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-eqz v6, :cond_87

    .line 2997
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_57

    const-string v6, "- delayedCleanupAfterDisconnect: finishing InCallScreen..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3029
    :cond_57
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "hwfeature_endtocall_log"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v5, :cond_87

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mLastDisconnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v4, v5, :cond_87

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mLastDisconnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v4, v5, :cond_87

    invoke-virtual {p0, p1}, Lcom/android/phone/InCallScreen;->isPhoneStateRestricted(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-nez v4, :cond_87

    sget-boolean v4, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-eqz v4, :cond_87

    .line 3035
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->createPhoneEndIntentUsingCallOrigin()Landroid/content/Intent;

    move-result-object v1

    .line 3036
    .local v1, intent:Landroid/content/Intent;
    const/high16 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3042
    :try_start_84
    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V
    :try_end_87
    .catch Landroid/content/ActivityNotFoundException; {:try_start_84 .. :try_end_87} :catch_9c

    .line 3061
    .end local v1           #intent:Landroid/content/Intent;
    :cond_87
    :goto_87
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 3064
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getMMIDialog()Landroid/app/AlertDialog;

    move-result-object v2

    .line 3065
    .local v2, mmiDialog:Landroid/app/AlertDialog;
    if-eqz v2, :cond_95

    .line 3067
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 3071
    :cond_95
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/phone/PhoneApp;->setLatestActiveCallOrigin(Ljava/lang/String;)V

    goto :goto_3e

    .line 3043
    .end local v2           #mmiDialog:Landroid/app/AlertDialog;
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_9c
    move-exception v0

    .line 3050
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "InCallScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delayedCleanupAfterDisconnect: transition to call log failed; intent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87
.end method

.method disconnectBluetoothAudio()V
    .registers 2

    .prologue
    .line 4826
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_9

    .line 4827
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOff()V

    .line 4829
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    .line 4830
    return-void
.end method

.method protected dismissAllDialogs()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3813
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_a

    const-string v0, "dismissAllDialogs()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3820
    :cond_a
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_15

    .line 3822
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3823
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 3825
    :cond_15
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_20

    .line 3827
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3828
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    .line 3830
    :cond_20
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2b

    .line 3832
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3833
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 3835
    :cond_2b
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_36

    .line 3837
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3838
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 3840
    :cond_36
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_41

    .line 3842
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3843
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 3845
    :cond_41
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4c

    .line 3847
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3848
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 3850
    :cond_4c
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_57

    .line 3852
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3853
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    .line 3855
    :cond_57
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v0, v1, :cond_6b

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v1, :cond_78

    :cond_6b
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_78

    .line 3858
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->dismissAllOtaDialogs()V

    .line 3860
    :cond_78
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_8c

    .line 3861
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_85

    const-string v0, "- DISMISSING mPausePromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3862
    :cond_85
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3863
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 3865
    :cond_8c
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_a0

    .line 3866
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_99

    const-string v0, "- DISMISSING mExitingECMDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3867
    :cond_99
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3868
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    .line 3870
    :cond_a0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 5055
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 5056
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 5057
    const/4 v0, 0x1

    return v0
.end method

.method public endInCallScreenSession()V
    .registers 3

    .prologue
    .line 1268
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endInCallScreenSession()... phone state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1270
    :cond_20
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_2f

    .line 1271
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession(Z)V

    .line 1275
    :goto_2e
    return-void

    .line 1273
    :cond_2f
    const-string v0, "InCallScreen"

    const-string v1, "endInCallScreenSession(): Call in progress"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method

.method public finish()V
    .registers 2

    .prologue
    .line 1256
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "finish()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1257
    :cond_9
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->moveTaskToBack(Z)Z

    .line 1258
    return-void
.end method

.method getInCallTouchUi()Lcom/android/phone/InCallTouchUi;
    .registers 2

    .prologue
    .line 4589
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    return-object v0
.end method

.method public getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;
    .registers 2

    .prologue
    .line 5019
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallControlState:Lcom/android/phone/InCallControlState;

    invoke-virtual {v0}, Lcom/android/phone/InCallControlState;->update()V

    .line 5020
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallControlState:Lcom/android/phone/InCallControlState;

    return-object v0
.end method

.method handleOnscreenButtonClick(I)V
    .registers 5
    .parameter "id"

    .prologue
    .line 3401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnscreenButtonClick(id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3403
    sparse-switch p1, :sswitch_data_7a

    .line 3450
    const-string v0, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOnscreenButtonClick: unexpected ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3455
    :goto_37
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 3473
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 3474
    return-void

    .line 3406
    :sswitch_40
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    goto :goto_37

    .line 3409
    :sswitch_44
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->hangupRingingCall()V

    goto :goto_37

    .line 3412
    :sswitch_48
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalRespondViaSms()V

    goto :goto_37

    .line 3417
    :sswitch_4c
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onHoldClick()V

    goto :goto_37

    .line 3420
    :sswitch_50
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSwapCalls()V

    goto :goto_37

    .line 3423
    :sswitch_54
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalHangup()V

    goto :goto_37

    .line 3427
    :sswitch_58
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalHangup()V

    goto :goto_37

    .line 3431
    :sswitch_5c
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onShowHideDialpad()V

    goto :goto_37

    .line 3434
    :sswitch_60
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onMuteClick()V

    goto :goto_37

    .line 3437
    :sswitch_64
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->startNewCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_37

    .line 3441
    :sswitch_6a
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_37

    .line 3445
    :sswitch_70
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 3446
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    goto :goto_37

    .line 3403
    nop

    :sswitch_data_7a
    .sparse-switch
        0x7f070008 -> :sswitch_40
        0x7f070009 -> :sswitch_44
        0x7f07000a -> :sswitch_48
        0x7f070079 -> :sswitch_70
        0x7f07007c -> :sswitch_6a
        0x7f07007f -> :sswitch_54
        0x7f070080 -> :sswitch_5c
        0x7f070082 -> :sswitch_60
        0x7f070083 -> :sswitch_4c
        0x7f070084 -> :sswitch_50
        0x7f070086 -> :sswitch_64
        0x7f070087 -> :sswitch_6a
        0x7f0700a9 -> :sswitch_58
    .end sparse-switch
.end method

.method public handleOtaCallEnd()V
    .registers 3

    .prologue
    .line 4876
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "handleOtaCallEnd entering"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4877
    :cond_9
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v0, v1, :cond_23

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v0, v1, :cond_42

    :cond_23
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v0, :cond_42

    .line 4883
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_3a

    const-string v0, "handleOtaCallEnd - Set OTA Call End stater"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4884
    :cond_3a
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 4885
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 4887
    :cond_42
    return-void
.end method

.method hangupRingingCall()V
    .registers 2

    .prologue
    .line 4057
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "hangupRingingCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4061
    :cond_9
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 4062
    return-void
.end method

.method protected initInCallScreen()V
    .registers 5

    .prologue
    .line 1578
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x8000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1580
    const v1, 0x7f07006b

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    .line 1583
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 1584
    const v1, 0x7f070073

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallCard;

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    .line 1589
    :goto_2a
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v1, p0}, Lcom/android/phone/CallCard;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1592
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initInCallTouchUi()V

    .line 1596
    new-instance v1, Lcom/android/phone/InCallControlState;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {v1, v2}, Lcom/android/phone/InCallControlState;-><init>(Lcom/android/internal/telephony/CallManager;)V

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallControlState:Lcom/android/phone/InCallControlState;

    .line 1597
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallControlState:Lcom/android/phone/InCallControlState;

    invoke-virtual {v1, p0}, Lcom/android/phone/InCallControlState;->setInCallInstance(Lcom/android/phone/InCallScreen;)V

    .line 1600
    new-instance v1, Lcom/android/phone/ManageConferenceUtils;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {v1, v2}, Lcom/android/phone/ManageConferenceUtils;-><init>(Lcom/android/internal/telephony/CallManager;)V

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    .line 1601
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v1, p0}, Lcom/android/phone/ManageConferenceUtils;->SetInCallInstance(Lcom/android/phone/InCallScreen;)V

    .line 1606
    const v1, 0x7f070076

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1607
    .local v0, stub:Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 1608
    const v1, 0x7f070052

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/DTMFTwelveKeyDialerView;

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    .line 1611
    invoke-static {p0}, Lcom/android/phone/InCallScreen;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 1612
    const v1, 0x7f070056

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/InCallContactPhoto;

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->dtmfphoto:Lcom/android/phone/InCallContactPhoto;

    .line 1613
    const v1, 0x7f07005a

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mDialPadView_LeftNumber:Landroid/widget/TextView;

    .line 1617
    :cond_81
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_9d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- Found dialerView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1621
    :cond_9d
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    if-nez v1, :cond_ad

    .line 1622
    const-string v1, "InCallScreen"

    const-string v2, "onCreate: couldn\'t find dialerView"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1626
    :cond_ad
    new-instance v1, Lcom/android/phone/DTMFTwelveKeyDialer;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-direct {v1, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;-><init>(Lcom/android/phone/DTMFTwelveKeyDialerView;)V

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    .line 1627
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1630
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mPowerManager:Landroid/os/PowerManager;

    .line 1631
    return-void

    .line 1586
    .end local v0           #stub:Landroid/view/ViewStub;
    :cond_c6
    const v1, 0x7f07006c

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallCard;

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    goto/16 :goto_2a
.end method

.method protected internalResolveIntent(Landroid/content/Intent;)V
    .registers 9
    .parameter "intent"

    .prologue
    .line 1465
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    .line 1566
    :cond_8
    :goto_8
    return-void

    .line 1468
    :cond_9
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getVoiceSubscription()I

    move-result v3

    .line 1469
    .local v3, subscription:I
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4, v3}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1470
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1471
    .local v0, action:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "internalResolveIntent: action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1491
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 1502
    const-string v4, "com.android.phone.ShowDialpad"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1507
    const-string v4, "com.android.phone.ShowDialpad"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1512
    .local v2, showDialpad:Z
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-boolean v2, v4, Lcom/android/phone/InCallUiState;->showDialpad:Z

    goto :goto_8

    .line 1520
    .end local v2           #showDialpad:Z
    :cond_4d
    const-string v4, "com.android.phone.DISPLAY_ACTIVATION_SCREEN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_98

    .line 1526
    invoke-static {v1}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-nez v4, :cond_74

    .line 1527
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received ACTION_DISPLAY_ACTIVATION_SCREEN intent on non-OTASP-capable device: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1532
    :cond_74
    sget-object v4, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 1533
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v4, v4, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    if-nez v4, :cond_8

    .line 1535
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    .line 1536
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v5, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v5, v4, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    goto/16 :goto_8

    .line 1543
    :cond_98
    const-string v4, "com.android.phone.PERFORM_CDMA_PROVISIONING"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 1547
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected ACTION_PERFORM_CDMA_PROVISIONING received by InCallScreen: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1550
    :cond_b9
    const-string v4, "android.intent.action.CALL"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c9

    const-string v4, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e2

    .line 1555
    :cond_c9
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected CALL action received by InCallScreen: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1557
    :cond_e2
    const-string v4, "com.android.phone.InCallScreen.UNDEFINED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f3

    .line 1560
    const-string v4, "InCallScreen"

    const-string v5, "internalResolveIntent: got launched with ACTION_UNDEFINED"

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1563
    :cond_f3
    const-string v4, "InCallScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "internalResolveIntent: unexpected intent action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8
.end method

.method isBluetoothAudioConnected()Z
    .registers 3

    .prologue
    .line 4722
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-nez v1, :cond_6

    .line 4724
    const/4 v0, 0x0

    .line 4728
    :goto_5
    return v0

    .line 4726
    :cond_6
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v0

    .line 4728
    .local v0, isAudioOn:Z
    goto :goto_5
.end method

.method isBluetoothAudioConnectedOrPending()Z
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4742
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 4766
    :cond_8
    :goto_8
    return v2

    .line 4750
    :cond_9
    iget-boolean v4, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    if-eqz v4, :cond_1f

    .line 4751
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionRequestTime:J

    sub-long v0, v4, v6

    .line 4753
    .local v0, timeSinceRequest:J
    const-wide/16 v4, 0x1388

    cmp-long v4, v0, v4

    if-ltz v4, :cond_8

    .line 4760
    iput-boolean v3, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    move v2, v3

    .line 4761
    goto :goto_8

    .end local v0           #timeSinceRequest:J
    :cond_1f
    move v2, v3

    .line 4766
    goto :goto_8
.end method

.method isBluetoothAvailable()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 4678
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-nez v4, :cond_7

    move v2, v3

    .line 4715
    :cond_6
    :goto_6
    return v2

    .line 4699
    :cond_7
    const/4 v2, 0x0

    .line 4700
    .local v2, isConnected:Z
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v4, :cond_6

    .line 4701
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 4703
    .local v1, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 4704
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 4705
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    const/4 v2, 0x1

    goto :goto_6
.end method

.method isDialerOpened()Z
    .registers 2

    .prologue
    .line 4455
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method isForegroundActivity()Z
    .registers 2

    .prologue
    .line 1300
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method isForegroundActivityForProximity()Z
    .registers 2

    .prologue
    .line 1304
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivityForProximity:Z

    return v0
.end method

.method isKeyEventAcceptableDTMF(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 1791
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->isKeyEventAcceptable(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method isManageConferenceMode()Z
    .registers 3

    .prologue
    .line 4340
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isOtaCallInActiveState()Z
    .registers 3

    .prologue
    .line 4860
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v0, v1, :cond_1a

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v0, v1, :cond_1c

    .line 4864
    :cond_1a
    const/4 v0, 0x1

    .line 4866
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public isOtaCallInEndState()Z
    .registers 3

    .prologue
    .line 4890
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isPhoneStateRestricted()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 4643
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getServiceState()I

    move-result v0

    .line 4644
    .local v0, serviceState:I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_18

    if-eq v0, v1, :cond_18

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_18
    :goto_18
    return v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public isPhoneStateRestricted(Lcom/android/internal/telephony/Phone;)Z
    .registers 5
    .parameter "phone"

    .prologue
    const/4 v1, 0x1

    .line 5150
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 5151
    .local v0, serviceState:I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_1c

    if-eq v0, v1, :cond_1c

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_1c
    :goto_1c
    return v1

    :cond_1d
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method okToShowDialpad()Z
    .registers 2

    .prologue
    .line 4551
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->okToDialDTMFTones()Z

    move-result v0

    return v0
.end method

.method okToShowInCallTouchUi()Z
    .registers 3

    .prologue
    .line 4628
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v1, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 1665
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "onBackPressed()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1672
    :cond_9
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1677
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1a

    const-string v0, "BACK key while ringing: ignored"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1700
    :cond_1a
    :goto_1a
    return-void

    .line 1686
    :cond_1b
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1687
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->hideDialpadInternal(Z)V

    goto :goto_1a

    .line 1691
    :cond_28
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v1, :cond_3b

    .line 1693
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 1694
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    goto :goto_1a

    .line 1699
    :cond_3b
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_1a
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "view"

    .prologue
    .line 3088
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 3091
    .local v0, id:I
    packed-switch v0, :pswitch_data_7a

    .line 3105
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v1, v1, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v1, v2, :cond_1b

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v1, v1, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v1, v2, :cond_4d

    :cond_1b
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v1, :cond_4d

    .line 3108
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v1, v0}, Lcom/android/phone/OtaUtils;->onClickHandler(I)V

    .line 3120
    :goto_28
    const v2, 0x1129f

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_76

    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_39
    aput-object v1, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3124
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 3125
    return-void

    .line 3095
    .restart local p1
    :pswitch_44
    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 3096
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    goto :goto_28

    .line 3114
    :cond_4d
    const-string v1, "InCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: unexpected click from ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (View = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 3120
    :cond_76
    const-string v1, ""

    goto :goto_39

    .line 3091
    nop

    :pswitch_data_7a
    .packed-switch 0x7f0700a0
        :pswitch_44
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5071
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_1c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigurationChanged: newConfig = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5081
    :cond_1c
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5091
    iget v4, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-ne v4, v2, :cond_7b

    move v0, v2

    .line 5092
    .local v0, isKeyboardOpen:Z
    :goto_24
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_3e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  - isKeyboardOpen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5093
    :cond_3e
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7d

    move v1, v2

    .line 5094
    .local v1, isLandscape:Z
    :goto_44
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_5e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  - isLandscape = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5095
    :cond_5e
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_7a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  - uiMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5097
    :cond_7a
    return-void

    .end local v0           #isKeyboardOpen:Z
    .end local v1           #isLandscape:Z
    :cond_7b
    move v0, v3

    .line 5091
    goto :goto_24

    .restart local v0       #isKeyboardOpen:Z
    :cond_7d
    move v1, v3

    .line 5093
    goto :goto_44
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "icicle"

    .prologue
    const/4 v8, 0x1

    .line 620
    const-string v5, "InCallScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate()...  this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenOnCreate()V

    .line 622
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 625
    invoke-static {p0}, Lcom/android/phone/InCallScreen;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 626
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->setRequestedOrientation(I)V

    .line 633
    :cond_29
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "hw_vibrate_on"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v8, v5, :cond_38

    .line 634
    iput-boolean v8, p0, Lcom/android/phone/InCallScreen;->mHwVibrate:Z

    .line 639
    :cond_38
    sget-boolean v5, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v5, :cond_47

    .line 645
    const-string v5, "InCallScreen"

    const-string v6, "onCreate() reached on non-voice-capable device"

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 733
    :cond_46
    :goto_46
    return-void

    .line 650
    :cond_47
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    .line 651
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5, p0}, Lcom/android/phone/PhoneApp;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 653
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "subscription"

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->getDefaultSubscription()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 655
    .local v4, subscription:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate Subscription: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 656
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5, v4}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 659
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    const/high16 v0, 0x8

    .line 660
    .local v0, flags:I
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5, v4}, Lcom/android/phone/PhoneApp;->getPhoneState(I)Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    .line 661
    .local v3, ps:Lcom/android/internal/telephony/Phone$State;
    sget-object v5, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v5, :cond_8d

    .line 667
    const/high16 v5, 0x40

    or-int/2addr v0, v5

    .line 669
    :cond_8d
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Window;->addFlags(I)V

    .line 673
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 674
    .local v1, params:Landroid/view/WindowManager$LayoutParams;
    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 675
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 678
    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 681
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 682
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- onCreate: phone state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 684
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 687
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v5, :cond_e7

    .line 691
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallScreen;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 692
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v5, v6, v7, v8}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 697
    :cond_e7
    invoke-virtual {p0, v8}, Lcom/android/phone/InCallScreen;->requestWindowFeature(I)Z

    .line 699
    const-string v5, "storage"

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    iput-object v5, p0, Lcom/android/phone/InCallScreen;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 700
    const-string v5, "InCallScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate()->CAN_VOICE_RECORD = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/phone/InCallScreen;->CAN_VOICE_RECORD:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    sget-boolean v5, Lcom/android/phone/InCallScreen;->CAN_VOICE_RECORD:Z

    if-eqz v5, :cond_115

    .line 702
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initVoiceRecord()V

    .line 706
    :cond_115
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_14e

    .line 707
    const v5, 0x7f040016

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->setContentView(I)V

    .line 712
    :goto_125
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->initInCallScreen()V

    .line 714
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->registerForPhoneStates()V

    .line 716
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->registerForLineControlInfo()V

    .line 726
    if-nez p1, :cond_140

    .line 727
    sget-boolean v5, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v5, :cond_139

    const-string v5, "onCreate(): this is our very first launch, checking intent..."

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 728
    :cond_139
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->internalResolveIntent(Landroid/content/Intent;)V

    .line 731
    :cond_140
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenCreated()V

    .line 732
    sget-boolean v5, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v5, :cond_46

    const-string v5, "onCreate(): exit"

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_46

    .line 709
    :cond_14e
    const v5, 0x7f040015

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->setContentView(I)V

    goto :goto_125
.end method

.method protected onDestroy()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1179
    const-string v0, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy()...  this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1183
    sget-boolean v0, Lcom/android/phone/InCallScreen;->CAN_VOICE_RECORD:Z

    if-eqz v0, :cond_2d

    .line 1184
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSdReceiver:Lcom/android/phone/InCallScreen$SdReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1185
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v0}, Landroid/media/voicerecorder/BaseVoiceRecorder;->unregisterForNotifications()V

    .line 1186
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    .line 1190
    :cond_2d
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mFastShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1194
    iput-boolean v4, p0, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    .line 1196
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneApp;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1200
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v0, :cond_42

    .line 1201
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0, v3}, Lcom/android/phone/CallCard;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1203
    :cond_42
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_4b

    .line 1204
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {v0, v3}, Lcom/android/phone/InCallTouchUi;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1206
    :cond_4b
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager;

    if-eqz v0, :cond_54

    .line 1207
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager;

    invoke-virtual {v0, v3}, Lcom/android/phone/RespondViaSmsManager;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1210
    :cond_54
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearInCallScreenReference()V

    .line 1211
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    .line 1213
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->unregisterForPhoneStates()V

    .line 1215
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->unregisterForLineControllInfo()V

    .line 1220
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_6e

    .line 1221
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v4, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 1222
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 1227
    :cond_6e
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 1231
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_7e

    .line 1232
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->clearUiWidgets()V

    .line 1234
    :cond_7e
    return-void
.end method

.method onDialerClose()V
    .registers 3

    .prologue
    .line 4489
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "onDialerClose()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4492
    :cond_9
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v0, v1, :cond_2d

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v0, v1, :cond_2d

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v0, v1, :cond_3a

    .line 4497
    :cond_2d
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_3a

    .line 4498
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->otaShowProperScreen()V

    .line 4503
    :cond_3a
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 4507
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateDialpadVisibility()V

    .line 4510
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 4511
    return-void
.end method

.method onDialerOpen()V
    .registers 3

    .prologue
    .line 4463
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "onDialerOpen()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4466
    :cond_9
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 4469
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateDialpadVisibility()V

    .line 4472
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 4477
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v0, v1, :cond_28

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v1, :cond_35

    :cond_28
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_35

    .line 4480
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->hideOtaScreen()V

    .line 4482
    :cond_35
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1831
    sparse-switch p1, :sswitch_data_3e

    .line 1910
    :cond_4
    :sswitch_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_38

    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallScreen;->handleDialerKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1914
    :cond_10
    :goto_10
    :sswitch_10
    return v1

    .line 1833
    :sswitch_11
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->handleCallKey()Z

    move-result v0

    .line 1834
    .local v0, handled:Z
    if-nez v0, :cond_10

    .line 1835
    const-string v2, "InCallScreen"

    const-string v3, "InCallScreen should always handle KEYCODE_CALL in onKeyDown"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1855
    .end local v0           #handled:Z
    :sswitch_1f
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_4

    .line 1866
    const-string v2, "InCallScreen"

    const-string v3, "VOLUME key: incoming call is ringing! (PhoneWindowManager should have handled this key.)"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSilenceRinger()V

    goto :goto_10

    .line 1879
    :sswitch_34
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onMuteClick()V

    goto :goto_10

    .line 1914
    :cond_38
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_10

    .line 1831
    nop

    :sswitch_data_3e
    .sparse-switch
        0x5 -> :sswitch_11
        0x18 -> :sswitch_1f
        0x19 -> :sswitch_1f
        0x1b -> :sswitch_10
        0x46 -> :sswitch_4
        0x4c -> :sswitch_4
        0x5b -> :sswitch_34
        0xa4 -> :sswitch_1f
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1818
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, p2}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1824
    :cond_d
    :goto_d
    return v0

    .line 1820
    :cond_e
    const/4 v1, 0x5

    if-eq p1, v1, :cond_d

    .line 1824
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_d
.end method

.method protected onMMIInitiate(Landroid/os/AsyncResult;)V
    .registers 7
    .parameter "r"

    .prologue
    .line 2368
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 2375
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    iget-boolean v3, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v3, :cond_9

    .line 2396
    :goto_8
    return-void

    .line 2384
    :cond_9
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 2386
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/MmiCode;

    .line 2391
    .local v1, mmiCode:Lcom/android/internal/telephony/MmiCode;
    const v3, 0x7f07001d

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2393
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x35

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2394
    .local v0, message:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-static {p0, v1, v0, v3}, Lcom/android/phone/PhoneUtils;->displayMMIInitiate(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    goto :goto_8
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 1445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent: intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phone state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1455
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallScreen;->setIntent(Landroid/content/Intent;)V

    .line 1461
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallScreen;->internalResolveIntent(Landroid/content/Intent;)V

    .line 1462
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    .line 1017
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1018
    .local v0, id:I
    const-string v1, "InCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOptionsItemSelected->itemId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    packed-switch v0, :pswitch_data_2a

    .line 1025
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_23
    return v1

    .line 1021
    :pswitch_24
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->voiceRecordClick()V

    .line 1022
    const/4 v1, 0x1

    goto :goto_23

    .line 1019
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_24
    .end packed-switch
.end method

.method protected onPause()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1033
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "onPause()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1034
    :cond_b
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1036
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1037
    iput-boolean v2, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivityForProximity:Z

    .line 1039
    :cond_18
    iput-boolean v2, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    .line 1044
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-boolean v2, v0, Lcom/android/phone/InCallUiState;->providerOverlayVisible:Z

    .line 1045
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateProviderOverlay()V

    .line 1049
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->setBeginningCall(Z)V

    .line 1053
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v0}, Lcom/android/phone/ManageConferenceUtils;->stopConferenceTime()V

    .line 1057
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    .line 1061
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopDialerSession()V

    .line 1064
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v0, :cond_41

    .line 1065
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->onPause()V

    .line 1091
    :cond_41
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_5d

    .line 1093
    const-string v0, "DELAYED_CLEANUP_AFTER_DISCONNECT detected, moving UI to background."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1094
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 1097
    :cond_5d
    const v0, 0x1129e

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1101
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 1104
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v0, v4}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableExpandedView(Z)V

    .line 1106
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 1111
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v0, v4}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    .line 1116
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1123
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/InCallScreen$4;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen$4;-><init>(Lcom/android/phone/InCallScreen;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1131
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 1136
    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->updateKeyguardPolicy(Z)V

    .line 1138
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "mnu"

    .prologue
    const v4, 0x7f0c02f8

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 991
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 992
    invoke-interface {p1, v1, v3, v1, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 994
    .local v0, menuItem:Landroid/view/MenuItem;
    sget-boolean v1, Lcom/android/phone/InCallScreen;->CAN_VOICE_RECORD:Z

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v1, v1, Lcom/android/phone/InCallControlState;->canVoiceRecord:Z

    if-eqz v1, :cond_55

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->okToShowInCallTouchUi()Z

    move-result v1

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v1, v1, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-nez v1, :cond_55

    .line 996
    const-string v1, "InCallScreen"

    const-string v2, "onPrepareOptionsMenu()->can record voice"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    if-eqz v1, :cond_49

    .line 998
    const-string v1, "InCallScreen"

    const-string v2, "onPrepareOptionsMenu()->tell if it is recording"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v1}, Landroid/media/voicerecorder/BaseVoiceRecorder;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 1000
    const-string v1, "InCallScreen"

    const-string v2, "onPrepareOptionsMenu()->start recording"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    const v1, 0x7f0c02fa

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1012
    :cond_49
    :goto_49
    return v3

    .line 1003
    :cond_4a
    const-string v1, "InCallScreen"

    const-string v2, "onPrepareOptionsMenu()->stop recording"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_49

    .line 1008
    :cond_55
    const-string v1, "InCallScreen"

    const-string v2, "onPrepareOptionsMenu()->can not record voice"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1010
    const/4 v0, 0x0

    goto :goto_49
.end method

.method protected onResume()V
    .registers 13

    .prologue
    const/16 v11, 0x70

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 761
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_d

    const-string v6, "onResume()..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 762
    :cond_d
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 764
    iput-boolean v10, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    .line 765
    iput-boolean v10, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivityForProximity:Z

    .line 768
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getPhoneInCall()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 771
    .local v4, phone:Lcom/android/internal/telephony/Phone;
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v6, :cond_23

    .line 772
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v6}, Lcom/android/phone/CallCard;->refreshTime()V

    .line 775
    :cond_23
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v6, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 781
    .local v2, inCallUiState:Lcom/android/phone/InCallUiState;
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6, v10}, Lcom/android/phone/PhoneApp;->setIgnoreTouchUserActivity(Z)V

    .line 785
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v6, v6, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v6, v9}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableExpandedView(Z)V

    .line 788
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v6}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 791
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6, v7}, Lcom/android/phone/InCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 794
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mFastShutdownReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6, v7}, Lcom/android/phone/InCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 798
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v6}, Lcom/android/phone/DTMFTwelveKeyDialer;->startDialerSession()V

    .line 802
    iget-boolean v6, v2, Lcom/android/phone/InCallUiState;->showDialpad:Z

    if-eqz v6, :cond_10d

    .line 803
    invoke-direct {p0, v9}, Lcom/android/phone/InCallScreen;->showDialpadInternal(Z)V

    .line 817
    :goto_60
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager;

    if-eqz v6, :cond_69

    .line 818
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager;

    invoke-virtual {v6}, Lcom/android/phone/RespondViaSmsManager;->dismissPopup()V

    .line 835
    :cond_69
    const/4 v1, 0x0

    .line 836
    .local v1, handledStartupError:Z
    invoke-virtual {v2}, Lcom/android/phone/InCallUiState;->hasPendingCallStatusCode()Z

    move-result v6

    if-eqz v6, :cond_112

    .line 837
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_79

    const-string v6, "- onResume: need to show status indication!"

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 838
    :cond_79
    invoke-virtual {v2}, Lcom/android/phone/InCallUiState;->getPendingCallStatusCode()Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->showStatusIndication(Lcom/android/phone/Constants$CallStatusCode;)V

    .line 843
    const/4 v1, 0x1

    .line 851
    :goto_81
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    .line 853
    .local v0, bluetoothConnected:Z
    if-eqz v0, :cond_119

    .line 854
    const/4 v6, 0x6

    invoke-virtual {p0, v6}, Lcom/android/phone/InCallScreen;->setVolumeControlStream(I)V

    .line 859
    :goto_8b
    invoke-virtual {p0, v10}, Lcom/android/phone/InCallScreen;->takeKeyEvents(Z)V

    .line 862
    const/4 v3, 0x0

    .line 863
    .local v3, inOtaCall:Z
    invoke-static {v4}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-eqz v6, :cond_99

    .line 864
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->checkOtaspStateOnResume()Z

    move-result v3

    .line 866
    :cond_99
    if-nez v3, :cond_a0

    .line 868
    sget-object v6, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {p0, v6}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 875
    :cond_a0
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 878
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->syncWithPhoneState()Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;

    move-result-object v5

    .line 883
    .local v5, status:Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;
    sget-object v6, Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;->SUCCESS:Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;

    if-eq v5, v6, :cond_12c

    .line 884
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_c7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- onResume: syncWithPhoneState failed! status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 892
    :cond_c7
    if-eqz v1, :cond_11e

    .line 897
    const-string v6, "InCallScreen"

    const-string v7, "  ==> syncWithPhoneState failed, but staying here anyway."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    :cond_d0
    const v6, 0x1129d

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 941
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v6, v7, :cond_14f

    .line 958
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 959
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 973
    :goto_ea
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 977
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->getRestoreMuteOnInCallResume()Z

    move-result v6

    if-eqz v6, :cond_ff

    .line 979
    invoke-static {}, Lcom/android/phone/PhoneUtils;->restoreMuteState()Ljava/lang/Boolean;

    .line 980
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6, v9}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 983
    :cond_ff
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v6

    const-class v7, Lcom/android/phone/InCallScreen;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Profiler;->profileViewCreate(Landroid/view/Window;Ljava/lang/String;)V

    .line 985
    :goto_10c
    return-void

    .line 805
    .end local v0           #bluetoothConnected:Z
    .end local v1           #handledStartupError:Z
    .end local v3           #inOtaCall:Z
    .end local v5           #status:Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;
    :cond_10d
    invoke-direct {p0, v9}, Lcom/android/phone/InCallScreen;->hideDialpadInternal(Z)V

    goto/16 :goto_60

    .line 847
    .restart local v1       #handledStartupError:Z
    :cond_112
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v6}, Lcom/android/phone/DTMFTwelveKeyDialer;->startDialerSession()V

    goto/16 :goto_81

    .line 856
    .restart local v0       #bluetoothConnected:Z
    :cond_119
    invoke-virtual {p0, v9}, Lcom/android/phone/InCallScreen;->setVolumeControlStream(I)V

    goto/16 :goto_8b

    .line 912
    .restart local v3       #inOtaCall:Z
    .restart local v5       #status:Lcom/android/phone/InCallScreen$SyncWithPhoneStateStatus;
    :cond_11e
    const-string v6, "InCallScreen"

    const-string v7, "  ==> syncWithPhoneState failed; bailing out!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 921
    invoke-direct {p0, v10}, Lcom/android/phone/InCallScreen;->endInCallScreenSession(Z)V

    goto :goto_10c

    .line 924
    :cond_12c
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v6}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-eqz v6, :cond_d0

    .line 925
    iget-object v6, v2, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v7, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v6, v7, :cond_140

    iget-object v6, v2, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v7, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v6, v7, :cond_d0

    .line 927
    :cond_140
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    if-eqz v6, :cond_14b

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 928
    :cond_14b
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    goto :goto_10c

    .line 971
    :cond_14f
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6, v9}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    goto :goto_ea
.end method

.method protected onStop()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1142
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_a

    const-string v1, "onStop()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1143
    :cond_a
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1145
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->stopTimer()V

    .line 1148
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v1, :cond_19

    .line 1149
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v1}, Lcom/android/phone/CallCard;->resetElapsedTime()V

    .line 1153
    :cond_19
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 1154
    .local v0, state:Lcom/android/internal/telephony/Phone$State;
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_39

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1156
    :cond_39
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_7e

    .line 1160
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v1, :cond_7e

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v1, :cond_7e

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v1, v2, :cond_7e

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v1, v2, :cond_7e

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v1, :cond_7e

    .line 1168
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_6e

    const-string v1, "- onStop: calling finish() to clear activity history..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1169
    :cond_6e
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->moveTaskToBack(Z)Z

    .line 1170
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v1, :cond_7e

    .line 1171
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v1, v3}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    .line 1175
    :cond_7e
    return-void
.end method

.method onSuppServiceFailed(Landroid/os/AsyncResult;)V
    .registers 7
    .parameter "r"

    .prologue
    .line 1922
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Phone$SuppService;

    .line 1923
    .local v1, service:Lcom/android/internal/telephony/Phone$SuppService;
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_1e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSuppServiceFailed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1928
    :cond_1e
    sget-object v2, Lcom/android/phone/InCallScreen$20;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_84

    .line 1969
    const v0, 0x7f0c01cd

    .line 1977
    .local v0, errorMessageResId:I
    :goto_2c
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_41

    .line 1978
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_39

    const-string v2, "- DISMISSING mSuppServiceFailureDialog."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1979
    :cond_39
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1981
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 1984
    :cond_41
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c002d

    new-instance v4, Lcom/android/phone/InCallScreen$5;

    invoke-direct {v4, p0, v0}, Lcom/android/phone/InCallScreen$5;-><init>(Lcom/android/phone/InCallScreen;I)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 1994
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 1996
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1997
    return-void

    .line 1932
    .end local v0           #errorMessageResId:I
    :pswitch_6c
    const v0, 0x7f0c01ce

    .line 1933
    .restart local v0       #errorMessageResId:I
    goto :goto_2c

    .line 1938
    .end local v0           #errorMessageResId:I
    :pswitch_70
    const v0, 0x7f0c01cf

    .line 1939
    .restart local v0       #errorMessageResId:I
    goto :goto_2c

    .line 1945
    .end local v0           #errorMessageResId:I
    :pswitch_74
    const v0, 0x7f0c01d0

    .line 1946
    .restart local v0       #errorMessageResId:I
    goto :goto_2c

    .line 1951
    .end local v0           #errorMessageResId:I
    :pswitch_78
    const v0, 0x7f0c01d1

    .line 1952
    .restart local v0       #errorMessageResId:I
    goto :goto_2c

    .line 1957
    .end local v0           #errorMessageResId:I
    :pswitch_7c
    const v0, 0x7f0c01d2

    .line 1958
    .restart local v0       #errorMessageResId:I
    goto :goto_2c

    .line 1962
    .end local v0           #errorMessageResId:I
    :pswitch_80
    const v0, 0x7f0c01d3

    .line 1963
    .restart local v0       #errorMessageResId:I
    goto :goto_2c

    .line 1928
    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_70
        :pswitch_74
        :pswitch_78
        :pswitch_7c
        :pswitch_80
    .end packed-switch
.end method

.method public onVoiceRecorderEvent(I)V
    .registers 11
    .parameter "event"

    .prologue
    const v8, 0x7f0c0304

    const v7, 0x7f0c0300

    const v6, 0x7f0c02ff

    const/4 v5, 0x0

    .line 5470
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_26

    const-string v2, "InCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The voice record event :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5472
    :cond_26
    sparse-switch p1, :sswitch_data_1b4

    .line 5583
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_34

    const-string v2, "InCallScreen"

    const-string v3, "onVoiceRecorderEvent: unkown error ..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5585
    :cond_34
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 5587
    invoke-virtual {p0, v8}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 5594
    :goto_46
    return-void

    .line 5474
    :sswitch_47
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_52

    const-string v2, "InCallScreen"

    const-string v3, "onVoiceRecorderEvent: start ok..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5477
    :cond_52
    const/16 v2, 0x23

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->startTone(C)V

    .line 5478
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->stopTone()V

    goto :goto_46

    .line 5484
    :sswitch_5b
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_66

    const-string v2, "InCallScreen"

    const-string v3, "onVoiceRecorderEvent: stop ok..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5486
    :cond_66
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 5488
    iget-boolean v2, p0, Lcom/android/phone/InCallScreen;->mEjectSdError:Z

    if-eqz v2, :cond_85

    .line 5489
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v2}, Landroid/media/voicerecorder/BaseVoiceRecorder;->getRecordFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v6, v2}, Lcom/android/phone/InCallScreen;->getToastStringPath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 5492
    iput-boolean v5, p0, Lcom/android/phone/InCallScreen;->mEjectSdError:Z

    goto :goto_46

    .line 5495
    :cond_85
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v2}, Landroid/media/voicerecorder/BaseVoiceRecorder;->getRecordFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5496
    .local v0, file:Ljava/io/File;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->sendBroadcast(Landroid/content/Intent;)V

    .line 5499
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v2}, Landroid/media/voicerecorder/BaseVoiceRecorder;->getRecordFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v7, v2}, Lcom/android/phone/InCallScreen;->getToastStringPath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_46

    .line 5507
    .end local v0           #file:Ljava/io/File;
    :sswitch_b0
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_bb

    const-string v2, "InCallScreen"

    const-string v3, "onVoiceRecorderEvent: start error ..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5509
    :cond_bb
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 5511
    invoke-virtual {p0, v8}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_46

    .line 5518
    :sswitch_cf
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_da

    const-string v2, "InCallScreen"

    const-string v3, "onVoiceRecorderEvent: ENOSPC error ..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5520
    :cond_da
    const-string v2, "vibrator"

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 5521
    .local v1, vibrator:Landroid/os/Vibrator;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 5524
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 5526
    const v2, 0x7f0c02fe

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v3}, Landroid/media/voicerecorder/BaseVoiceRecorder;->getRecordFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/phone/InCallScreen;->getToastStringPath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_46

    .line 5533
    .end local v1           #vibrator:Landroid/os/Vibrator;
    :sswitch_104
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_10f

    const-string v2, "InCallScreen"

    const-string v3, "onVoiceRecorderEvent: EIO error ..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5535
    :cond_10f
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 5537
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v2}, Landroid/media/voicerecorder/BaseVoiceRecorder;->getRecordFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v6, v2}, Lcom/android/phone/InCallScreen;->getToastStringPath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_46

    .line 5544
    :sswitch_129
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_134

    const-string v2, "InCallScreen"

    const-string v3, "onVoiceRecorderEvent: read error ..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5546
    :cond_134
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 5548
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v2}, Landroid/media/voicerecorder/BaseVoiceRecorder;->getRecordFilePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15c

    .line 5549
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v2}, Landroid/media/voicerecorder/BaseVoiceRecorder;->getRecordFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5550
    .restart local v0       #file:Ljava/io/File;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->sendBroadcast(Landroid/content/Intent;)V

    .line 5554
    .end local v0           #file:Ljava/io/File;
    :cond_15c
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v2}, Landroid/media/voicerecorder/BaseVoiceRecorder;->getRecordFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v7, v2}, Lcom/android/phone/InCallScreen;->getToastStringPath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_46

    .line 5561
    :sswitch_16f
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_17a

    const-string v2, "InCallScreen"

    const-string v3, "onVoiceRecorderEvent: create file error ..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5563
    :cond_17a
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 5565
    const v2, 0x7f0c0302

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_46

    .line 5572
    :sswitch_191
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_19c

    const-string v2, "InCallScreen"

    const-string v3, "onVoiceRecorderEvent: open dev error ..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5574
    :cond_19c
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 5576
    const v2, 0x7f0c0301

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_46

    .line 5472
    nop

    :sswitch_data_1b4
    .sparse-switch
        0x5 -> :sswitch_104
        0x1c -> :sswitch_cf
        0x101 -> :sswitch_16f
        0x102 -> :sswitch_191
        0x103 -> :sswitch_b0
        0x104 -> :sswitch_129
        0x121 -> :sswitch_47
        0x122 -> :sswitch_5b
    .end sparse-switch
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .parameter "hasFocus"

    .prologue
    .line 1807
    if-nez p1, :cond_c

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_c

    .line 1809
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    .line 1811
    :cond_c
    return-void
.end method

.method protected phoneIsInUse()Z
    .registers 3

    .prologue
    .line 1639
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected registerForPhoneStates()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1316
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mRegisteredForPhoneStates:Z

    if-nez v0, :cond_59

    .line 1317
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1318
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1319
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1325
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1326
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x73

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1327
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1328
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1329
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7b

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1330
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7c

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mRegisteredForPhoneStates:Z

    .line 1333
    :cond_59
    return-void
.end method

.method requestCloseOtaFailureNotice(J)V
    .registers 5
    .parameter "timeout"

    .prologue
    .line 4838
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCloseOtaFailureNotice() with timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4839
    :cond_1a
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x77

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4847
    return-void
.end method

.method requestCloseSpcErrorNotice(J)V
    .registers 5
    .parameter "timeout"

    .prologue
    .line 4855
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCloseSpcErrorNotice() with timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4856
    :cond_1a
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x76

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4857
    return-void
.end method

.method requestUpdateBluetoothIndication()V
    .registers 3

    .prologue
    const/16 v1, 0x72

    .line 4778
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4779
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4780
    return-void
.end method

.method requestUpdateScreen()V
    .registers 3

    .prologue
    const/16 v1, 0x7a

    .line 4604
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "requestUpdateScreen()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4605
    :cond_b
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4606
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4607
    return-void
.end method

.method public resetInCallScreenMode()V
    .registers 2

    .prologue
    .line 5024
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "resetInCallScreenMode: setting mode to UNDEFINED..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5025
    :cond_9
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 5026
    return-void
.end method

.method protected setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V
    .registers 10
    .parameter "newMode"

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 4205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setInCallScreenMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4206
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-object p1, v3, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    .line 4208
    sget-object v3, Lcom/android/phone/InCallScreen$20;->$SwitchMap$com$android$phone$InCallUiState$InCallScreenMode:[I

    invoke-virtual {p1}, Lcom/android/phone/InCallUiState$InCallScreenMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_11a

    .line 4334
    :goto_2b
    return-void

    .line 4210
    :pswitch_2c
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 4211
    const-string v3, "InCallScreen"

    const-string v4, "MANAGE_CONFERENCE: no active conference call!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4213
    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    goto :goto_2b

    .line 4216
    :cond_45
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v2

    .line 4219
    .local v2, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v2, :cond_53

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v7, :cond_71

    .line 4220
    :cond_53
    const-string v3, "InCallScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MANAGE_CONFERENCE: Bogus TRUE from isConferenceCall(); connections = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4224
    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    goto :goto_2b

    .line 4233
    :cond_71
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v3}, Lcom/android/phone/ManageConferenceUtils;->initManageConferencePanel()V

    .line 4235
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v3, v2}, Lcom/android/phone/ManageConferenceUtils;->updateManageConferencePanel(Ljava/util/List;)V

    .line 4239
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v3, v7}, Lcom/android/phone/ManageConferenceUtils;->setPanelVisible(Z)V

    .line 4248
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v0

    .line 4250
    .local v0, callDuration:J
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/ManageConferenceUtils;->startConferenceTime(J)V

    .line 4253
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2b

    .line 4264
    .end local v0           #callDuration:J
    .end local v2           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :pswitch_9e
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v3, v5}, Lcom/android/phone/ManageConferenceUtils;->setPanelVisible(Z)V

    .line 4265
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v3}, Lcom/android/phone/ManageConferenceUtils;->stopConferenceTime()V

    .line 4268
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_2b

    .line 4273
    :pswitch_af
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 4274
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4278
    :goto_ba
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v3, v5}, Lcom/android/phone/ManageConferenceUtils;->setPanelVisible(Z)V

    .line 4279
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v3}, Lcom/android/phone/ManageConferenceUtils;->stopConferenceTime()V

    goto/16 :goto_2b

    .line 4276
    :cond_c6
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_ba

    .line 4283
    :pswitch_cc
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    sget-object v4, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    invoke-virtual {v3, v4}, Lcom/android/phone/OtaUtils;->setCdmaOtaInCallScreenUiState(Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;)V

    .line 4285
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_2b

    .line 4289
    :pswitch_dc
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    sget-object v4, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    invoke-virtual {v3, v4}, Lcom/android/phone/OtaUtils;->setCdmaOtaInCallScreenUiState(Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;)V

    .line 4291
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_2b

    .line 4319
    :pswitch_ec
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.phone.InCallScreen.UNDEFINED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->setIntent(Landroid/content/Intent;)V

    .line 4323
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v3, v4, :cond_114

    .line 4324
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v3, :cond_10d

    .line 4325
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v3, v7}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    .line 4331
    :cond_10d
    :goto_10d
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_2b

    .line 4328
    :cond_114
    const-string v3, "WARNING: Setting mode to UNDEFINED but phone is OFFHOOK, skip cleanOtaScreen."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_10d

    .line 4208
    :pswitch_data_11a
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_9e
        :pswitch_af
        :pswitch_cc
        :pswitch_dc
        :pswitch_ec
    .end packed-switch
.end method

.method setPhone(Lcom/android/internal/telephony/Phone;)V
    .registers 2
    .parameter "phone"

    .prologue
    .line 756
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 757
    return-void
.end method

.method public setupPathFileName()Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v6, 0x0

    const/4 v11, 0x0

    .line 5363
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->storagePath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mStoragePath:Ljava/lang/String;

    .line 5364
    const-string v7, "InCallScreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setupPathFileName()->mStoragePath="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mStoragePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5365
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mStoragePath:Ljava/lang/String;

    if-nez v7, :cond_27

    .line 5405
    :goto_26
    return-object v6

    .line 5369
    :cond_27
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mStoragePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/record"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5371
    .local v3, path:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5372
    .local v2, parent:Ljava/io/File;
    const-string v7, "InCallScreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setupPathFileName()->parent.exists="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5373
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_78

    .line 5375
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_78

    .line 5376
    const v7, 0x7f0c0302

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_26

    .line 5385
    :cond_78
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v6

    if-eqz v6, :cond_164

    const-string v6, "From_"

    :goto_8f
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->getCallName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5389
    .local v5, recoredFile:Ljava/lang/String;
    const-string v6, "InCallScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setupPathFileName()->recoredFile="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5390
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5391
    .local v4, rawFile:Ljava/lang/String;
    const-string v6, "InCallScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setupPathFileName()->rawFile="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5394
    const/4 v0, 0x0

    .line 5395
    .local v0, f:Ljava/io/File;
    const/4 v1, 0x0

    .line 5399
    .local v1, i:I
    :cond_fd
    new-instance v0, Ljava/io/File;

    .end local v0           #f:Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%s.amr"

    const/4 v6, 0x1

    new-array v9, v6, [Ljava/lang/Object;

    if-nez v1, :cond_168

    const-string v6, ""

    :goto_111
    aput-object v6, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5400
    .restart local v0       #f:Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    .line 5401
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_fd

    .line 5402
    const-string v6, "InCallScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setupPathFileName()->f="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5403
    const-string v6, "InCallScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setupPathFileName()->f.absolutePath="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5405
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_26

    .line 5385
    .end local v0           #f:Ljava/io/File;
    .end local v1           #i:I
    .end local v4           #rawFile:Ljava/lang/String;
    .end local v5           #recoredFile:Ljava/lang/String;
    :cond_164
    const-string v6, "To_"

    goto/16 :goto_8f

    .line 5399
    .restart local v1       #i:I
    .restart local v4       #rawFile:Ljava/lang/String;
    .restart local v5       #recoredFile:Ljava/lang/String;
    :cond_168
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_111
.end method

.method public switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V
    .registers 6
    .parameter "newMode"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchInCallAudio: new mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3248
    sget-object v0, Lcom/android/phone/InCallScreen$20;->$SwitchMap$com$android$phone$InCallScreen$InCallAudioMode:[I

    invoke-virtual {p1}, Lcom/android/phone/InCallScreen$InCallAudioMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_8a

    .line 3288
    const-string v0, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchInCallAudio: unexpected mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3295
    :cond_3b
    :goto_3b
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 3296
    return-void

    .line 3250
    :pswitch_3f
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 3252
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 3253
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->disconnectBluetoothAudio()V

    .line 3255
    :cond_54
    invoke-static {p0, v2, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_3b

    .line 3261
    :pswitch_58
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 3269
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 3270
    invoke-static {p0, v3, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 3272
    :cond_6d
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->connectBluetoothAudio()V

    goto :goto_3b

    .line 3279
    :pswitch_71
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 3280
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->disconnectBluetoothAudio()V

    .line 3282
    :cond_80
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 3283
    invoke-static {p0, v3, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_3b

    .line 3248
    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_58
        :pswitch_71
    .end packed-switch
.end method

.method public toggleBluetooth()V
    .registers 3

    .prologue
    .line 3204
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3206
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3207
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->disconnectBluetoothAudio()V

    .line 3231
    :goto_f
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 3232
    return-void

    .line 3216
    :cond_13
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3217
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 3220
    :cond_1e
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->connectBluetoothAudio()V

    goto :goto_f

    .line 3225
    :cond_22
    const-string v0, "InCallScreen"

    const-string v1, "toggleBluetooth(): bluetooth is unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public toggleSpeaker()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 3168
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_36

    move v0, v1

    .line 3169
    .local v0, newSpeakerState:Z
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toggleSpeaker(): newSpeakerState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3171
    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 3172
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->disconnectBluetoothAudio()V

    .line 3174
    :cond_2f
    invoke-static {p0, v0, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 3179
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 3180
    return-void

    .line 3168
    .end local v0           #newSpeakerState:Z
    :cond_36
    const/4 v0, 0x0

    goto :goto_8
.end method

.method updateAfterRadioTechnologyChange()V
    .registers 3

    .prologue
    .line 1425
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "InCallScreen"

    const-string v1, "updateAfterRadioTechnologyChange()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    :cond_b
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->resetInCallScreenMode()V

    .line 1432
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->unregisterForPhoneStates()V

    .line 1435
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->registerForPhoneStates()V

    .line 1440
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    .line 1441
    return-void
.end method

.method updateIncomingCallWidgetHint(II)V
    .registers 5
    .parameter "hintTextResId"
    .parameter "hintColorResId"

    .prologue
    .line 5039
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v0, :cond_10

    .line 5040
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/CallCard;->setIncomingCallWidgetHint(II)V

    .line 5041
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 5051
    :cond_10
    return-void
.end method

.method updateKeyguardPolicy(Z)V
    .registers 4
    .parameter "dismissKeyguard"

    .prologue
    const/high16 v1, 0x40

    .line 1308
    if-eqz p1, :cond_c

    .line 1309
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1313
    :goto_b
    return-void

    .line 1311
    :cond_c
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_b
.end method
