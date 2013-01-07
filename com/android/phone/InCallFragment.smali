.class public Lcom/android/phone/InCallFragment;
.super Landroid/app/Fragment;
.source "InCallFragment.java"

# interfaces
.implements Landroid/media/voicerecorder/BaseVoiceRecorder$OnVoiceRecorderListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InCallFragment$17;,
        Lcom/android/phone/InCallFragment$SubChangeListener;,
        Lcom/android/phone/InCallFragment$SdReceiver;,
        Lcom/android/phone/InCallFragment$InCallFragmentListener;,
        Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;
    }
.end annotation


# static fields
.field private static final ADD_VOICEMAIL_NUMBER:I = 0x6a

.field static final AUTO_RETRY_OFF:I = 0x0

.field static final AUTO_RETRY_ON:I = 0x1

.field private static final CALL_ENDED_LONG_DELAY:I = 0x7d0

.field private static final CALL_ENDED_SHORT_DELAY:I = 0xc8

#the value of this static final field might be set in the static constructor
.field public static final CAN_VOICE_RECORD:Z = false

.field private static final DBG:Z = false

.field private static final DELAYED_CLEANUP_AFTER_DISCONNECT:I = 0x6c

.field private static final DONT_ADD_VOICEMAIL_NUMBER:I = 0x6b

.field private static final EVENT_HEADSET_PLUG_STATE_CHANGED:I = 0x67

.field private static final EVENT_HIDE_PROVIDER_OVERLAY:I = 0x79

.field private static final EVENT_LINE_CONTROL_INFO:I = 0x7d

.field private static final EVENT_PAUSE_DIALOG_COMPLETE:I = 0x78

.field public static final FRAGMENT_0:Ljava/lang/String; = "fragment0"

.field public static final FRAGMENT_1:Ljava/lang/String; = "fragment1"

.field private static final HW_VIBRATE:I = 0x1e

.field private static final LOG_TAG:Ljava/lang/String; = "InCallFragment"

.field public static final MAX_FRAGMENTS:I = 0x2

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

.field private static final REQUEST_INCALL_BUTTONS:I = 0xb

.field private static final REQUEST_UPDATE_BLUETOOTH_INDICATION:I = 0x72

.field private static final REQUEST_UPDATE_SCREEN:I = 0x7a

.field private static final RE_START_TONE:I = 0x3e9

.field private static final SUPP_SERVICE_FAILED:I = 0x6e

.field private static final VDBG:Z = true

.field private static final WILD_PROMPT_CHAR_ENTERED:I = 0x69

.field private static mAutoSetMute:Z

.field private static mUserSetMute:Z


# instance fields
.field dtmfphoto:Lcom/android/phone/InCallContactPhoto;

.field private isAssociatedWithActivecall:Z

.field private wasRinging:Z

.field private mActiveCall:Landroid/widget/Button;

.field private mApp:Lcom/android/phone/PhoneApp;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallCard:Lcom/android/phone/CallCard_DSDA;

.field private mCallLostDialog:Landroid/app/AlertDialog;

.field private mCallTimeView:Landroid/widget/TextView;

.field private mCallTypeImage:Landroid/widget/ImageView;

.field private mCallTypeView:Landroid/widget/TextView;

.field mCallingViaIcon:Landroid/widget/ImageView;

.field mCallingViaMessage:Landroid/widget/TextView;

.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field private mDialPadViewLeft_Banner:Landroid/view/ViewGroup;

.field private mDialPadView_LeftName:Landroid/widget/TextView;

.field private mDialPadView_LeftNumber:Landroid/widget/TextView;

.field private mDialPadView_SocialStatus:Landroid/widget/TextView;

.field protected mDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

.field private mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

.field private mEjectSdError:Z

.field private mEndButton:Landroid/widget/ImageButton;

.field private mExitingECMDialog:Landroid/app/AlertDialog;

.field protected mGenericErrorDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mHangUpDialingCallHint:Landroid/widget/TextView;

.field private mHideImmediately:Z

.field private mHwVibrate:Z

.field private mInCallControlState:Lcom/android/phone/InCallControlState_DSDA;

.field private mInCallControls:Landroid/view/View;

.field protected mInCallPanel:Landroid/view/ViewGroup;

.field private mInCallTouchUi:Lcom/android/phone/InCallTouchUi_DSDA;

.field private mIsEmergencyNumber:Z

.field private mIsRecording:Z

.field protected mLastDisconnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

.field private mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

.field private mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils_DSDA;

.field private mMissingVoicemailDialog:Landroid/app/AlertDialog;

.field protected mMmiStartedDialog:Landroid/app/Dialog;

.field private mParent:Lcom/android/phone/InCallScreen_DSDA;

.field public mParentView:Landroid/view/View;

.field private mPauseInProgress:Z

.field private mPausePromptDialog:Landroid/app/AlertDialog;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPostDialStrAfterPause:Ljava/lang/String;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field mProviderOverLay:Landroid/view/ViewGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

.field private mRegisteredForLineControlInfo:Z

.field private mRegisteredForPhoneStates:Z

.field private mRemoteCallEnd:Z

.field private mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager_DSDA;

.field private mSdReceiver:Lcom/android/phone/InCallFragment$SdReceiver;

.field private mSubChangeListener:Lcom/android/phone/MSimPhoneApp$SubscriptionChangeListener;

.field private mSubscription:I

.field private mSuppServiceFailureDialog:Landroid/app/AlertDialog;

.field private mTabContainer:Landroid/widget/RelativeLayout;

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
    .line 223
    const-string v0, "ro.config.hw_voicerecord"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/InCallFragment;->CAN_VOICE_RECORD:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 433
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->dtmfphoto:Lcom/android/phone/InCallContactPhoto;

    .line 134
    iput-boolean v1, p0, Lcom/android/phone/InCallFragment;->mIsEmergencyNumber:Z

    .line 171
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    .line 177
    iput-boolean v1, p0, Lcom/android/phone/InCallFragment;->isAssociatedWithActivecall:Z

    iput-boolean v1, p0, Lcom/android/phone/InCallFragment;->wasRinging:Z

    .line 185
    iput-boolean v1, p0, Lcom/android/phone/InCallFragment;->mHideImmediately:Z

    .line 240
    new-instance v0, Lcom/android/phone/InCallFragment$SdReceiver;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallFragment$SdReceiver;-><init>(Lcom/android/phone/InCallFragment;)V

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mSdReceiver:Lcom/android/phone/InCallFragment$SdReceiver;

    .line 241
    iput-boolean v1, p0, Lcom/android/phone/InCallFragment;->mEjectSdError:Z

    .line 250
    iput-boolean v1, p0, Lcom/android/phone/InCallFragment;->mRemoteCallEnd:Z

    .line 256
    iput-boolean v1, p0, Lcom/android/phone/InCallFragment;->mHwVibrate:Z

    .line 257
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mVibrator:Landroid/os/Vibrator;

    .line 362
    iput-boolean v1, p0, Lcom/android/phone/InCallFragment;->mPauseInProgress:Z

    .line 1930
    new-instance v0, Lcom/android/phone/InCallFragment$6;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallFragment$6;-><init>(Lcom/android/phone/InCallFragment;)V

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    .line 3758
    new-instance v0, Lcom/android/phone/InCallFragment$16;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallFragment$16;-><init>(Lcom/android/phone/InCallFragment;)V

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 434
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/InCallFragment;)Lcom/android/phone/PhoneApp;
    .registers 2
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/InCallFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->addVoiceMailNumberPanel()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/InCallFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->dontAddVoiceMailNumber()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/InCallFragment;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mPausePromptDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/phone/InCallFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/phone/InCallFragment;->mPausePromptDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/phone/InCallFragment;Landroid/os/AsyncResult;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/phone/InCallFragment;->onNewRingingConnection(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/InCallFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->reStartTone()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/InCallFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateProviderOverlay()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/InCallFragment;)Lcom/android/phone/InCallTouchUi_DSDA;
    .registers 2
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi_DSDA;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/phone/InCallFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/phone/InCallFragment;->mHwVibrate:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/phone/InCallFragment;)Landroid/os/Vibrator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/phone/InCallFragment;)Lcom/android/internal/telephony/CallManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/InCallFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateActiveCallButtonState()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/phone/InCallFragment;)Lcom/android/phone/CallCard_DSDA;
    .registers 2
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/phone/InCallFragment;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/phone/InCallFragment;->updateInCallTouchUiButtons(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/phone/InCallFragment;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/phone/InCallFragment;Lcom/android/internal/telephony/Phone;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/phone/InCallFragment;->onMMICancel(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/phone/InCallFragment;)Lcom/android/phone/InCallFragment$InCallFragmentListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/phone/InCallFragment;)Landroid/media/voicerecorder/BaseVoiceRecorder;
    .registers 2
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/phone/InCallFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/phone/InCallFragment;->mEjectSdError:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/phone/InCallFragment;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/InCallFragment;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/InCallFragment;)Lcom/android/phone/InCallScreen_DSDA;
    .registers 2
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/InCallFragment;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/InCallFragment;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mWildPromptText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/InCallFragment;Landroid/widget/EditText;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/phone/InCallFragment;->mWildPromptText:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/phone/InCallFragment;Landroid/os/AsyncResult;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/phone/InCallFragment;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/InCallFragment;Landroid/os/AsyncResult;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/phone/InCallFragment;->onDisconnect(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/InCallFragment;Landroid/os/AsyncResult;C)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallFragment;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V

    return-void
.end method

.method private addVoiceMailNumberPanel()V
    .registers 5

    .prologue
    .line 3324
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_c

    .line 3325
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 3326
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 3329
    :cond_c
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/phone/InCallFragment$InCallFragmentListener;->onCloseFragment(IZ)V

    .line 3334
    :cond_18
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3335
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    const-class v2, Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3336
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallFragment;->startActivity(Landroid/content/Intent;)V

    .line 3337
    return-void
.end method

.method private checkOtaspStateOnResume()Z
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 3577
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-nez v3, :cond_9

    move v1, v2

    .line 3683
    :cond_8
    :goto_8
    return v1

    .line 3582
    :cond_9
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-nez v3, :cond_1d

    .line 3586
    :cond_15
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "checkOtaspStateOnResume: app.cdmaOta* objects(s) not initialized"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3594
    :cond_1d
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v3}, Lcom/android/phone/OtaUtils;->getCdmaOtaInCallScreenUiState()Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    move-result-object v0

    .line 3601
    .local v0, cdmaOtaInCallScreenState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;
    sget-object v3, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-eq v0, v3, :cond_2d

    sget-object v3, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v0, v3, :cond_58

    :cond_2d
    const/4 v1, 0x1

    .line 3605
    .local v1, otaspUiActive:Z
    :goto_2e
    if-eqz v1, :cond_64

    .line 3612
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    check-cast v2, Lcom/android/phone/OtaUtils_DSDA;

    check-cast v2, Lcom/android/phone/OtaUtils_DSDA;

    invoke-virtual {v2, p0}, Lcom/android/phone/OtaUtils_DSDA;->setInCallScreenInstance(Lcom/android/phone/InCallFragment;)V

    .line 3613
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    check-cast v2, Lcom/android/phone/OtaUtils_DSDA;

    check-cast v2, Lcom/android/phone/OtaUtils_DSDA;

    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mInCallPanel:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi_DSDA;

    iget-object v6, p0, Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/phone/OtaUtils_DSDA;->updateUiWidgets(Lcom/android/phone/InCallScreen_DSDA;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/android/phone/CallCard;)V

    .line 3617
    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v0, v2, :cond_5a

    .line 3619
    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v2}, Lcom/android/phone/InCallFragment;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    goto :goto_8

    .end local v1           #otaspUiActive:Z
    :cond_58
    move v1, v2

    .line 3601
    goto :goto_2e

    .line 3620
    .restart local v1       #otaspUiActive:Z
    :cond_5a
    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v0, v2, :cond_8

    .line 3623
    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v2}, Lcom/android/phone/InCallFragment;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    goto :goto_8

    .line 3639
    :cond_64
    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallFragment;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 3641
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v3, :cond_8

    .line 3642
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v3, v2}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    goto :goto_8
.end method

.method private createWildPromptView()Landroid/view/View;
    .registers 11

    .prologue
    const/4 v9, -0x2

    const/high16 v8, 0x4160

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x5

    .line 1511
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1512
    .local v3, result:Landroid/widget/LinearLayout;
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1513
    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1515
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v0, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1519
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1520
    .local v2, promptMsg:Landroid/widget/TextView;
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1521
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1522
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c003c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1524
    invoke-virtual {v3, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1526
    new-instance v4, Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-direct {v4, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/phone/InCallFragment;->mWildPromptText:Landroid/widget/EditText;

    .line 1527
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mWildPromptText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 1528
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mWildPromptText:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1529
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1530
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1531
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 1532
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mWildPromptText:Landroid/widget/EditText;

    const v5, 0x1080018

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1534
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v1, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1537
    .local v1, lp2:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, 0x3

    invoke-virtual {v1, v6, v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1539
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1541
    return-object v3
.end method

.method private dismissProgressIndication()V
    .registers 2

    .prologue
    .line 1887
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    .line 1888
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1889
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1891
    :cond_c
    return-void
.end method

.method private dontAddVoiceMailNumber()V
    .registers 4

    .prologue
    .line 3340
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    .line 3341
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 3345
    :cond_c
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/phone/InCallFragment$InCallFragmentListener;->onCloseFragment(IZ)V

    .line 3346
    :cond_18
    return-void
.end method

.method private getCallName()Ljava/lang/String;
    .registers 6

    .prologue
    .line 2298
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getmCallCard()Lcom/android/phone/CallCard;

    move-result-object v3

    const v4, 0x7f070013

    invoke-virtual {v3, v4}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 2299
    .local v1, name:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getmCallCard()Lcom/android/phone/CallCard;

    move-result-object v3

    const v4, 0x7f070016

    invoke-virtual {v3, v4}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 2304
    .local v2, phoneNum:Ljava/lang/CharSequence;
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v3, v4, :cond_46

    .line 2307
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v4, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 2308
    .local v0, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_46

    .line 2309
    const v3, 0x7f0c0028

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2321
    .end local v0           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :goto_45
    return-object v3

    .line 2313
    :cond_46
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_57

    invoke-static {v1}, Lcom/android/phone/InCallFragment;->isValidFileName(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 2314
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_45

    .line 2317
    :cond_57
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_62

    .line 2318
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_45

    .line 2321
    :cond_62
    const v3, 0x7f0c0004

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_45
.end method

.method private getToastStringPath(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "stringId"
    .parameter "path"

    .prologue
    .line 2427
    if-nez p2, :cond_a

    .line 2428
    const v0, 0x7f0c0303

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2431
    :goto_9
    return-object v0

    :cond_a
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/InCallFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method private handleMissingVoiceMailNumber()V
    .registers 9

    .prologue
    const/4 v7, 0x2

    .line 3277
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 3278
    .local v1, msg:Landroid/os/Message;
    const/16 v4, 0x6b

    iput v4, v1, Landroid/os/Message;->what:I

    .line 3280
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 3281
    .local v2, msg2:Landroid/os/Message;
    const/16 v4, 0x6a

    iput v4, v2, Landroid/os/Message;->what:I

    .line 3284
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 3285
    .local v3, phoneType:I
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3286
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0c003d

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3287
    if-ne v3, v7, :cond_66

    .line 3288
    const v4, 0x7f0c003f

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 3292
    :goto_30
    const v4, 0x7f0c002d

    new-instance v5, Lcom/android/phone/InCallFragment$9;

    invoke-direct {v5, p0, v1}, Lcom/android/phone/InCallFragment$9;-><init>(Lcom/android/phone/InCallFragment;Landroid/os/Message;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0040

    new-instance v6, Lcom/android/phone/InCallFragment$8;

    invoke-direct {v6, p0, v2}, Lcom/android/phone/InCallFragment$8;-><init>(Lcom/android/phone/InCallFragment;Landroid/os/Message;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/phone/InCallFragment$7;

    invoke-direct {v5, p0, v1}, Lcom/android/phone/InCallFragment$7;-><init>(Lcom/android/phone/InCallFragment;Landroid/os/Message;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/InCallFragment;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 3317
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/Window;->addFlags(I)V

    .line 3320
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 3321
    return-void

    .line 3290
    :cond_66
    const v4, 0x7f0c003e

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_30
.end method

.method private handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    .registers 10
    .parameter "r"
    .parameter "ch"

    .prologue
    .line 4601
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 4607
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_16

    .line 4609
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 4610
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    iget v4, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v5

    if-eq v4, v5, :cond_17

    .line 4682
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_16
    :goto_16
    return-void

    .line 4615
    .restart local v1       #phone:Lcom/android/internal/telephony/Phone;
    :cond_17
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/Connection$PostDialState;

    .line 4618
    .local v3, state:Lcom/android/internal/telephony/Connection$PostDialState;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handlePostOnDialChar: state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ch = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 4623
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->isRemoving()Z

    move-result v4

    if-nez v4, :cond_16

    .line 4625
    sget-object v4, Lcom/android/phone/InCallFragment$17;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_b2

    goto :goto_16

    .line 4627
    :pswitch_53
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    invoke-virtual {v4}, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;->stopLocalToneIfNeeded()V

    .line 4628
    iget-boolean v4, p0, Lcom/android/phone/InCallFragment;->mPauseInProgress:Z

    if-eqz v4, :cond_61

    .line 4634
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mPostDialStrAfterPause:Ljava/lang/String;

    invoke-direct {p0, v0, v4}, Lcom/android/phone/InCallFragment;->showPausePromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    .line 4636
    :cond_61
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/phone/InCallFragment;->mPauseInProgress:Z

    .line 4637
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    invoke-virtual {v4, p2}, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;->startLocalToneIfNeeded(C)V

    goto :goto_16

    .line 4649
    :pswitch_6a
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    invoke-virtual {v4}, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;->stopLocalToneIfNeeded()V

    .line 4650
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v2

    .line 4651
    .local v2, postDialStr:Ljava/lang/String;
    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallFragment;->showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_16

    .line 4656
    .end local v2           #postDialStr:Ljava/lang/String;
    :pswitch_77
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    invoke-virtual {v4}, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;->stopLocalToneIfNeeded()V

    .line 4657
    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->showWildPromptDialog(Lcom/android/internal/telephony/Connection;)V

    goto :goto_16

    .line 4661
    :pswitch_80
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    invoke-virtual {v4}, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;->stopLocalToneIfNeeded()V

    .line 4664
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_16

    iget-boolean v4, p0, Lcom/android/phone/InCallFragment;->mHwVibrate:Z

    if-eqz v4, :cond_16

    .line 4665
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v5, 0x1e

    invoke-virtual {v4, v5, v6}, Landroid/os/Vibrator;->vibrate(J)V

    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->voiceRecordStart()V

    goto/16 :goto_16

    .line 4672
    :pswitch_a1
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    invoke-virtual {v4}, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;->stopLocalToneIfNeeded()V

    .line 4673
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/InCallFragment;->mPostDialStrAfterPause:Ljava/lang/String;

    .line 4674
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/phone/InCallFragment;->mPauseInProgress:Z

    goto/16 :goto_16

    .line 4625
    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_53
        :pswitch_6a
        :pswitch_77
        :pswitch_80
        :pswitch_a1
    .end packed-switch
.end method

.method private static final hideVG(Landroid/view/ViewGroup;)V
    .registers 2
    .parameter "vg"

    .prologue
    .line 4967
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4968
    return-void
.end method

.method private initChildControls()V
    .registers 3

    .prologue
    .line 954
    new-instance v0, Lcom/android/phone/InCallControlState_DSDA;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {v0, v1}, Lcom/android/phone/InCallControlState_DSDA;-><init>(Lcom/android/internal/telephony/CallManager;)V

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallControlState:Lcom/android/phone/InCallControlState_DSDA;

    .line 955
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallControlState:Lcom/android/phone/InCallControlState_DSDA;

    invoke-virtual {v0, p0}, Lcom/android/phone/InCallControlState_DSDA;->setInCallInstance(Lcom/android/phone/InCallFragment;)V

    .line 958
    new-instance v0, Lcom/android/phone/ManageConferenceUtils_DSDA;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {v0, v1}, Lcom/android/phone/ManageConferenceUtils_DSDA;-><init>(Lcom/android/internal/telephony/CallManager;)V

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils_DSDA;

    .line 959
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils_DSDA;

    invoke-virtual {v0, p0}, Lcom/android/phone/ManageConferenceUtils_DSDA;->SetInCallInstance(Lcom/android/phone/InCallFragment;)V

    .line 960
    return-void
.end method

.method private initInCallFragment(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 845
    const-string v1, "initInCallFragment()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 848
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x8000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 851
    iput-object p1, p0, Lcom/android/phone/InCallFragment;->mParentView:Landroid/view/View;

    .line 854
    const v1, 0x7f07006b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mInCallPanel:Landroid/view/ViewGroup;

    .line 857
    const v1, 0x7f070073

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallCard_DSDA;

    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;

    .line 859
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - mCallCard = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 860
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;

    invoke-virtual {v1, p0}, Lcom/android/phone/CallCard_DSDA;->setInCallScreenInstance(Lcom/android/phone/InCallFragment;)V

    .line 863
    invoke-direct {p0, p1}, Lcom/android/phone/InCallFragment;->initInCallTouchUi(Landroid/view/View;)V

    .line 867
    const v1, 0x7f070076

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 868
    .local v0, stub:Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 869
    const v1, 0x7f070052

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/DTMFTwelveKeyDialerView;

    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    .line 872
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-static {v1}, Lcom/android/phone/InCallFragment;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 873
    const v1, 0x7f070056

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/InCallContactPhoto;

    iput-object v1, p0, Lcom/android/phone/InCallFragment;->dtmfphoto:Lcom/android/phone/InCallContactPhoto;

    .line 874
    const v1, 0x7f07005a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mDialPadView_LeftNumber:Landroid/widget/TextView;

    .line 881
    :cond_80
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    if-nez v1, :cond_90

    .line 882
    const-string v1, "InCallFragment"

    const-string v2, "onCreate: couldn\'t find dialerView"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 885
    :cond_90
    new-instance v1, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-direct {v1, v2}, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;-><init>(Lcom/android/phone/DTMFTwelveKeyDialerView;)V

    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    .line 887
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    invoke-virtual {v1, p0}, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;->setInCallScreenInstance(Lcom/android/phone/InCallFragment;)V

    .line 890
    const v1, 0x7f070070

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mProviderOverLay:Landroid/view/ViewGroup;

    .line 891
    const v1, 0x7f070072

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mCallingViaMessage:Landroid/widget/TextView;

    .line 892
    const v1, 0x7f070071

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mCallingViaIcon:Landroid/widget/ImageView;

    .line 897
    const v1, 0x7f070029

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mActiveCall:Landroid/widget/Button;

    .line 898
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_dc

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f5

    .line 900
    :cond_dc
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mActiveCall:Landroid/widget/Button;

    new-instance v2, Lcom/android/phone/InCallFragment$1;

    invoke-direct {v2, p0}, Lcom/android/phone/InCallFragment$1;-><init>(Lcom/android/phone/InCallFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 938
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateActiveCallButtonState()V

    .line 948
    :goto_e9
    const v1, 0x7f07002a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mHangUpDialingCallHint:Landroid/widget/TextView;

    .line 950
    return-void

    .line 941
    :cond_f5
    const-string v1, "InCallFragment"

    const-string v2, "Call is neither CDMA nor GSM hence the active call button is hidden"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mActiveCall:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_e9
.end method

.method private initInCallTouchUi(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 1152
    const v0, 0x7f07006d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InCallTouchUi_DSDA;

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi_DSDA;

    .line 1153
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi_DSDA;

    invoke-virtual {v0, p0}, Lcom/android/phone/InCallTouchUi_DSDA;->setInCallScreenInstance(Lcom/android/phone/InCallFragment;)V

    .line 1155
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi_DSDA;

    const v1, 0x7f070075

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallTouchUi_DSDA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallControls:Landroid/view/View;

    .line 1156
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallControls:Landroid/view/View;

    const v1, 0x7f07007f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mEndButton:Landroid/widget/ImageButton;

    .line 1161
    new-instance v0, Lcom/android/phone/RespondViaSmsManager_DSDA;

    invoke-direct {v0}, Lcom/android/phone/RespondViaSmsManager_DSDA;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager_DSDA;

    .line 1162
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager_DSDA;

    invoke-virtual {v0, p0}, Lcom/android/phone/RespondViaSmsManager_DSDA;->setInCallScreenInstance(Lcom/android/phone/InCallFragment;)V

    .line 1163
    return-void
.end method

.method private initVoiceRecord()V
    .registers 6

    .prologue
    .line 2265
    const-string v1, "InCallFragment"

    const-string v2, "initVoiceRecord() method"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget v3, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1, v2, v3, v4}, Landroid/media/voicerecorder/VoiceRecorderFactory;->createVoiceRecorder_DSDA(Lcom/android/internal/telephony/CallManager;Lcom/android/phone/InCallScreen_DSDA;ILcom/android/internal/telephony/Phone;)Landroid/media/voicerecorder/BaseVoiceRecorder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    .line 2271
    const-string v1, "InCallFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initVoiceRecord()->mRecorder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v1}, Landroid/media/voicerecorder/BaseVoiceRecorder;->registerForNotifications()V

    .line 2273
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v1, p0}, Landroid/media/voicerecorder/BaseVoiceRecorder;->setOnVoiceRecorderListener(Landroid/media/voicerecorder/BaseVoiceRecorder$OnVoiceRecorderListener;)V

    .line 2275
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd_hh_mm_ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 2277
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2278
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2279
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mSdReceiver:Lcom/android/phone/InCallFragment$SdReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/InCallScreen_DSDA;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2280
    return-void
.end method

.method private internalAnswerCall()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 2861
    const-string v6, "internalAnswerCall()..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 2865
    iget-object v6, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v7, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v6, v7}, Lcom/android/phone/PhoneUtils;->hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v2

    .line 2867
    .local v2, hasRingingCall:Z
    if-eqz v2, :cond_4b

    .line 2868
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2869
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    iget-object v6, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v7, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v6, v7}, Lcom/android/phone/PhoneUtils;->getFirstRingingCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 2870
    .local v5, ringing:Lcom/android/internal/telephony/Call;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 2871
    .local v4, phoneType:I
    const/4 v6, 0x2

    if-ne v4, v6, :cond_50

    .line 2875
    iget-object v6, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v7, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v6, v7}, Lcom/android/phone/PhoneUtils;->hasActiveSIPCall(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 2886
    iget-object v6, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v6, v5}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    .line 2939
    :goto_30
    iget-object v6, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/phone/PhoneApp;->setLatestActiveCallOrigin(Ljava/lang/String;)V

    .line 2941
    invoke-virtual {p0, v8}, Lcom/android/phone/InCallFragment;->setEndButton(Z)V

    .line 2945
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateActiveCallButtonState()V

    .line 2950
    iget v6, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    iget-object v7, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->getmRingingSubscription()I

    move-result v7

    if-ne v6, v7, :cond_4b

    .line 2951
    iget-object v6, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->resetmRingingSubscription()V

    .line 2957
    .end local v3           #phone:Lcom/android/internal/telephony/Phone;
    .end local v4           #phoneType:I
    .end local v5           #ringing:Lcom/android/internal/telephony/Call;
    :cond_4b
    return-void

    .line 2888
    .restart local v3       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v4       #phoneType:I
    .restart local v5       #ringing:Lcom/android/internal/telephony/Call;
    :cond_4c
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_30

    .line 2890
    :cond_50
    const/4 v6, 0x3

    if-ne v4, v6, :cond_67

    .line 2893
    iget-object v6, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v7, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v6, v7}, Lcom/android/phone/PhoneUtils;->hasActiveCDMACall(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 2905
    iget-object v6, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v6, v5}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto :goto_30

    .line 2907
    :cond_63
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_30

    .line 2909
    :cond_67
    if-eq v4, v8, :cond_6c

    const/4 v6, 0x4

    if-ne v4, v6, :cond_8a

    .line 2915
    :cond_6c
    iget-object v6, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v7, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v6, v7}, Lcom/android/phone/PhoneUtils;->hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v0

    .line 2916
    .local v0, hasActiveCall:Z
    iget-object v6, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v7, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v6, v7}, Lcom/android/phone/PhoneUtils;->hasHoldCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v1

    .line 2918
    .local v1, hasHoldingCall:Z
    if-eqz v0, :cond_86

    if-eqz v1, :cond_86

    .line 2923
    iget-object v6, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v6, v5}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto :goto_30

    .line 2930
    :cond_86
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_30

    .line 2934
    .end local v0           #hasActiveCall:Z
    .end local v1           #hasHoldingCall:Z
    :cond_8a
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
    .line 2803
    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->getState(I)Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 2804
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

    invoke-direct {p0, v1}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 2809
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;I)Z

    .line 2824
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_2e

    .line 2826
    const-string v1, "InCallFragment"

    const-string v2, "internalHangup(): phone is already IDLE!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2850
    :cond_2e
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget-boolean v1, v1, Lcom/android/phone/InCallScreen_DSDA;->mIsForegroundActivity:Z

    if-eqz v1, :cond_38

    .line 2851
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallFragment;->setEndButton(Z)V

    .line 2854
    :cond_38
    return-void
.end method

.method private internalRespondViaSms()V
    .registers 4

    .prologue
    .line 2964
    const-string v1, "internalRespondViaSms()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 2965
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    .line 2967
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getmRespondViaSmsManager()Lcom/android/phone/RespondViaSmsManager_DSDA;

    move-result-object v1

    if-nez v1, :cond_16

    .line 2968
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "got internalRespondViaSms(), but mRespondViaSmsManager was never initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2975
    :cond_16
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->getFirstRingingCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2977
    .local v0, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getmRespondViaSmsManager()Lcom/android/phone/RespondViaSmsManager_DSDA;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/RespondViaSmsManager_DSDA;->showRespondViaSmsPopup(Lcom/android/internal/telephony/Call;)V

    .line 2982
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen_DSDA;->internalSilenceRinger()V

    .line 2984
    return-void
.end method

.method private internalSwapCalls()V
    .registers 4

    .prologue
    .line 3038
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v1

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    if-eq v1, v2, :cond_d

    .line 3069
    :cond_c
    :goto_c
    return-void

    .line 3046
    :cond_d
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallFragment;->hideDialpadInternal(Z)V

    .line 3053
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getmDialer()Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearDigits()V

    .line 3058
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->getFirstActiveBgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 3063
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    .line 3064
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    .line 3065
    .local v0, bthf:Lcom/android/phone/BluetoothHandsfree;
    if-eqz v0, :cond_c

    .line 3066
    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->cdmaSwapSecondCallState()V

    goto :goto_c
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
    .line 4756
    .local p5, ctypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 4774
    :cond_4
    :goto_4
    return-void

    .line 4761
    :cond_5
    :try_start_5
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 4762
    .local v3, targetClass:Ljava/lang/Class;
    invoke-virtual {v3, p2, p5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 4764
    .local v1, nMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_4

    .line 4765
    invoke-virtual {v1, p3, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 4766
    .local v2, o:Ljava/lang/Object;
    const-string v4, "InCallFragment"

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

    .line 4769
    .end local v1           #nMethod:Ljava/lang/reflect/Method;
    .end local v2           #o:Ljava/lang/Object;
    .end local v3           #targetClass:Ljava/lang/Class;
    :catch_2c
    move-exception v0

    .line 4770
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "InCallFragment"

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

.method private isFragmentAssociatedWithActiveCall()Z
    .registers 3

    .prologue
    .line 2185
    iget v0, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_b

    .line 2186
    :cond_9
    const/4 v0, 0x0

    .line 2189
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 4970
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
    .line 2288
    const-string v0, "^[^\\\\/:*?<>\"|]+$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 1140
    const-string v0, "InCallFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    return-void
.end method

.method static newInstance(I)Lcom/android/phone/InCallFragment;
    .registers 4
    .parameter "subscription"

    .prologue
    .line 422
    new-instance v1, Lcom/android/phone/InCallFragment;

    invoke-direct {v1}, Lcom/android/phone/InCallFragment;-><init>()V

    .line 425
    .local v1, f:Lcom/android/phone/InCallFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 426
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "subscription"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 427
    invoke-virtual {v1, v0}, Lcom/android/phone/InCallFragment;->setArguments(Landroid/os/Bundle;)V

    .line 429
    return-object v1
.end method

.method private okToShowHint()Z
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1323
    iget v6, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    if-nez v6, :cond_2a

    move v1, v4

    .line 1324
    .local v1, altSub:I
    :goto_7
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v7, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v6, v7}, Lcom/android/phone/PhoneUtils;->hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v3

    .line 1325
    .local v3, isRinging:Z
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hasDialingCallImpl(I)Z

    move-result v2

    .line 1327
    .local v2, hasAltDialing:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v6, v1}, Lcom/android/phone/PhoneUtils;->hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v0

    .line 1328
    .local v0, altIsRinging:Z
    if-eqz v2, :cond_25

    if-nez v3, :cond_29

    :cond_25
    if-eqz v3, :cond_2c

    if-eqz v0, :cond_2c

    :cond_29
    :goto_29
    return v4

    .end local v0           #altIsRinging:Z
    .end local v1           #altSub:I
    .end local v2           #hasAltDialing:Z
    .end local v3           #isRinging:Z
    :cond_2a
    move v1, v5

    .line 1323
    goto :goto_7

    .restart local v0       #altIsRinging:Z
    .restart local v1       #altSub:I
    .restart local v2       #hasAltDialing:Z
    .restart local v3       #isRinging:Z
    :cond_2c
    move v4, v5

    .line 1328
    goto :goto_29
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .registers 35
    .parameter "r"

    .prologue
    .line 3997
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/Connection;

    .line 3999
    .local v7, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v16

    .line 4000
    .local v16, duration:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1f

    .line 4001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;

    move-object/from16 v29, v0

    const-wide/16 v30, 0x3e8

    div-long v30, v16, v30

    invoke-virtual/range {v29 .. v31}, Lcom/android/phone/CallCard_DSDA;->setElapsedTime(J)V

    .line 4004
    :cond_1f
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v11

    .line 4005
    .local v11, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v24

    .line 4008
    .local v24, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v26

    .line 4010
    .local v26, sub:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/InCallFragment;->mSubscription:I

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, v26

    if-eq v0, v1, :cond_3f

    .line 4012
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallFragment;->updateActiveCallButtonState()V

    .line 4382
    :cond_3e
    :goto_3e
    return-void

    .line 4017
    :cond_3f
    sget-boolean v29, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v29, :cond_91

    if-eqz v7, :cond_91

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v29

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_91

    .line 4018
    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v27

    .line 4019
    .local v27, subscription:I
    invoke-static/range {v27 .. v27}, Lcom/android/phone/PhoneUtils;->getAlternateSub(I)I

    move-result v4

    .line 4020
    .local v4, altSub:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 4021
    .local v3, altPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v29

    if-nez v29, :cond_15d

    const/16 v20, 0x1

    .line 4022
    .local v20, hasActivefgCall:Z
    :goto_6f
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v29

    if-nez v29, :cond_161

    const/16 v18, 0x1

    .line 4023
    .local v18, hasActiveBgCall:Z
    :goto_7b
    if-eqz v20, :cond_91

    if-nez v18, :cond_91

    .line 4024
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/android/phone/PhoneApp;->setmActiveSubscription(I)V

    .line 4025
    const-string v29, "CDMA disconnect, setmActiveSubscription : GSM"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 4029
    .end local v3           #altPhone:Lcom/android/internal/telephony/Phone;
    .end local v4           #altSub:I
    .end local v18           #hasActiveBgCall:Z
    .end local v20           #hasActivefgCall:Z
    .end local v27           #subscription:I
    :cond_91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/phone/MSimInCallUiState;

    .line 4035
    .local v22, mUIState:Lcom/android/phone/MSimInCallUiState;
    sget-object v29, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v11, v0, :cond_165

    const/16 v29, 0x1

    :goto_a7
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallFragment;->mRemoteCallEnd:Z

    .line 4040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/InCallScreen_DSDA;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "hide_call_lost_dialog"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_e4

    .line 4041
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v23

    .line 4042
    .local v23, o:Ljava/lang/Object;
    const/4 v12, 0x0

    .line 4043
    .local v12, ci:Lcom/android/internal/telephony/CallerInfo;
    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/android/internal/telephony/CallerInfo;

    move/from16 v29, v0

    if-eqz v29, :cond_169

    move-object/from16 v12, v23

    .line 4044
    check-cast v12, Lcom/android/internal/telephony/CallerInfo;

    .line 4048
    .end local v23           #o:Ljava/lang/Object;
    :cond_d8
    :goto_d8
    if-eqz v12, :cond_179

    .line 4049
    invoke-virtual {v12}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallFragment;->mIsEmergencyNumber:Z

    .line 4056
    .end local v12           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_e4
    :goto_e4
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallFragment;->phoneIsInUse()Z

    move-result v29

    if-nez v29, :cond_183

    const/4 v15, 0x1

    .line 4057
    .local v15, currentlyIdle:Z
    :goto_eb
    const/4 v5, 0x0

    .line 4058
    .local v5, autoretrySetting:I
    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v29

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_186

    const/16 v25, 0x1

    .line 4059
    .local v25, phoneIsCdma:Z
    :goto_fa
    if-eqz v25, :cond_11d

    .line 4063
    if-eqz v15, :cond_18a

    .line 4064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "call_auto_retry"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 4066
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Lcom/android/phone/PhoneApp;->setCDMACallReallyConnected(Z)V

    .line 4077
    :cond_11d
    :goto_11d
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    move-object/from16 v29, v0

    aget-object v29, v29, v26

    sget-object v30, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_1a1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1a1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    move/from16 v29, v0

    if-nez v29, :cond_1a1

    .line 4081
    sget-object v29, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/phone/InCallFragment;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 4087
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallFragment;->updateScreen()V

    goto/16 :goto_3e

    .line 4021
    .end local v5           #autoretrySetting:I
    .end local v15           #currentlyIdle:Z
    .end local v22           #mUIState:Lcom/android/phone/MSimInCallUiState;
    .end local v25           #phoneIsCdma:Z
    .restart local v3       #altPhone:Lcom/android/internal/telephony/Phone;
    .restart local v4       #altSub:I
    .restart local v27       #subscription:I
    :cond_15d
    const/16 v20, 0x0

    goto/16 :goto_6f

    .line 4022
    .restart local v20       #hasActivefgCall:Z
    :cond_161
    const/16 v18, 0x0

    goto/16 :goto_7b

    .line 4035
    .end local v3           #altPhone:Lcom/android/internal/telephony/Phone;
    .end local v4           #altSub:I
    .end local v20           #hasActivefgCall:Z
    .end local v27           #subscription:I
    .restart local v22       #mUIState:Lcom/android/phone/MSimInCallUiState;
    :cond_165
    const/16 v29, 0x0

    goto/16 :goto_a7

    .line 4045
    .restart local v12       #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v23       #o:Ljava/lang/Object;
    :cond_169
    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move/from16 v29, v0

    if-eqz v29, :cond_d8

    .line 4046
    check-cast v23, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v23           #o:Ljava/lang/Object;
    move-object/from16 v0, v23

    iget-object v12, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto/16 :goto_d8

    .line 4051
    :cond_179
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallFragment;->mIsEmergencyNumber:Z

    goto/16 :goto_e4

    .line 4056
    .end local v12           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_183
    const/4 v15, 0x0

    goto/16 :goto_eb

    .line 4058
    .restart local v5       #autoretrySetting:I
    .restart local v15       #currentlyIdle:Z
    :cond_186
    const/16 v25, 0x0

    goto/16 :goto_fa

    .line 4068
    .restart local v25       #phoneIsCdma:Z
    :cond_18a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/InCallFragment;->mSubscription:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneUtils;->hasCallOnSubscription(I)Z

    move-result v29

    if-nez v29, :cond_11d

    .line 4070
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Lcom/android/phone/PhoneApp;->setCDMACallReallyConnected(Z)V

    goto/16 :goto_11d

    .line 4089
    :cond_1a1
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    move-object/from16 v29, v0

    aget-object v29, v29, v26

    sget-object v30, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1d3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    move/from16 v29, v0

    if-nez v29, :cond_3e

    .line 4102
    :cond_1d3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;->clearDigits()V

    .line 4107
    sget-object v29, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v11, v0, :cond_2da

    .line 4111
    invoke-static {}, Lcom/android/phone/CallNotifier;->getSuppSvcNotification()Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    move-result-object v28

    .line 4112
    .local v28, suppSvcNotification:Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    if-eqz v28, :cond_217

    .line 4113
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_217

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    move/from16 v29, v0

    const/16 v30, 0xa

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_217

    .line 4115
    const v29, 0x7f0c002a

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallFragment;->showGenericErrorDialog(IZ)V

    .line 4116
    invoke-static {}, Lcom/android/phone/CallNotifier;->clearSuppSvcNotification()V

    goto/16 :goto_3e

    .line 4122
    :cond_217
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/InCallFragment;->mSubscription:I

    move/from16 v29, v0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/phone/PhoneApp;->getmRingingSubscription()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_232

    .line 4123
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/PhoneApp;->resetmRingingSubscription()V

    .line 4152
    .end local v28           #suppSvcNotification:Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    :cond_232
    if-eqz v25, :cond_265

    .line 4153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/CallNotifier;->getPreviousCdmaCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    .line 4154
    .local v10, callState:Lcom/android/internal/telephony/Call$State;
    sget-object v29, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v29

    if-ne v10, v0, :cond_38a

    sget-object v29, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v11, v0, :cond_38a

    sget-object v29, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v11, v0, :cond_38a

    sget-object v29, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v11, v0, :cond_38a

    sget-object v29, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v11, v0, :cond_38a

    .line 4159
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallFragment;->showCallLostDialog()V

    .line 4194
    .end local v10           #callState:Lcom/android/internal/telephony/Call$State;
    :cond_265
    :goto_265
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    .line 4195
    .local v8, call:Lcom/android/internal/telephony/Call;
    if-eqz v8, :cond_2b4

    .line 4204
    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v14

    .line 4205
    .local v14, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v14, :cond_2b4

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_2b4

    .line 4206
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, i$:Ljava/util/Iterator;
    :cond_281
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_2b4

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/Connection;

    .line 4207
    .local v13, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v13}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v29

    sget-object v30, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_281

    .line 4216
    const-string v29, "- Still-active conf call; clearing DISCONNECTED..."

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 4217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 4218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 4237
    .end local v13           #conn:Lcom/android/internal/telephony/Connection;
    .end local v14           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v21           #i$:Ljava/util/Iterator;
    :cond_2b4
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/phone/InCallFragment;->mLastDisconnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 4241
    sget-object v29, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v11, v0, :cond_2c4

    sget-object v29, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v11, v0, :cond_3e4

    :cond_2c4
    if-eqz v15, :cond_3e4

    const/4 v6, 0x1

    .line 4263
    .local v6, bailOutImmediately:Z
    :goto_2c7
    if-eqz v6, :cond_3e7

    .line 4270
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallFragment;->delayedCleanupAfterDisconnect(Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_3e

    .line 4126
    .end local v6           #bailOutImmediately:Z
    .end local v8           #call:Lcom/android/internal/telephony/Call;
    :cond_2da
    sget-object v29, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v11, v0, :cond_2f0

    .line 4127
    const v29, 0x7f0c0017

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallFragment;->showGenericErrorDialog(IZ)V

    goto/16 :goto_3e

    .line 4129
    :cond_2f0
    sget-object v29, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v11, v0, :cond_306

    .line 4130
    const v29, 0x7f0c0016

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallFragment;->showGenericErrorDialog(IZ)V

    goto/16 :goto_3e

    .line 4132
    :cond_306
    sget-object v29, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v11, v0, :cond_31c

    .line 4133
    const v29, 0x7f0c001b

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallFragment;->showGenericErrorDialog(IZ)V

    goto/16 :goto_3e

    .line 4135
    :cond_31c
    sget-object v29, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v11, v0, :cond_332

    .line 4136
    const v29, 0x7f0c001c

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallFragment;->showGenericErrorDialog(IZ)V

    goto/16 :goto_3e

    .line 4138
    :cond_332
    sget-object v29, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v11, v0, :cond_348

    .line 4139
    const v29, 0x7f0c001d

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallFragment;->showGenericErrorDialog(IZ)V

    goto/16 :goto_3e

    .line 4141
    :cond_348
    sget-object v29, Lcom/android/internal/telephony/Connection$DisconnectCause;->DIAL_MODIFIED_TO_USSD:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v11, v0, :cond_35e

    .line 4142
    const v29, 0x7f0c0018

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallFragment;->showGenericErrorDialog(IZ)V

    goto/16 :goto_3e

    .line 4144
    :cond_35e
    sget-object v29, Lcom/android/internal/telephony/Connection$DisconnectCause;->DIAL_MODIFIED_TO_SS:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v11, v0, :cond_374

    .line 4145
    const v29, 0x7f0c0019

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallFragment;->showGenericErrorDialog(IZ)V

    goto/16 :goto_3e

    .line 4147
    :cond_374
    sget-object v29, Lcom/android/internal/telephony/Connection$DisconnectCause;->DIAL_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v11, v0, :cond_232

    .line 4148
    const v29, 0x7f0c001a

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallFragment;->showGenericErrorDialog(IZ)V

    goto/16 :goto_3e

    .line 4160
    .restart local v10       #callState:Lcom/android/internal/telephony/Call$State;
    :cond_38a
    sget-object v29, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v29

    if-eq v10, v0, :cond_396

    sget-object v29, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v29

    if-ne v10, v0, :cond_265

    :cond_396
    sget-object v29, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v11, v0, :cond_265

    sget-object v29, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v11, v0, :cond_265

    sget-object v29, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v11, v0, :cond_265

    sget-object v29, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-eq v11, v0, :cond_265

    .line 4166
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/MSimInCallUiState;->mSimNeedToShowCallLostDialog:[Z

    move-object/from16 v29, v0

    aget-boolean v29, v29, v26

    if-eqz v29, :cond_3c7

    .line 4168
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallFragment;->showCallLostDialog()V

    .line 4169
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/MSimInCallUiState;->mSimNeedToShowCallLostDialog:[Z

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-boolean v30, v29, v26

    goto/16 :goto_265

    .line 4171
    :cond_3c7
    if-nez v5, :cond_3d8

    .line 4173
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallFragment;->showCallLostDialog()V

    .line 4174
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/MSimInCallUiState;->mSimNeedToShowCallLostDialog:[Z

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-boolean v30, v29, v26

    goto/16 :goto_265

    .line 4178
    :cond_3d8
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/MSimInCallUiState;->mSimNeedToShowCallLostDialog:[Z

    move-object/from16 v29, v0

    const/16 v30, 0x1

    aput-boolean v30, v29, v26

    goto/16 :goto_265

    .line 4241
    .end local v10           #callState:Lcom/android/internal/telephony/Call$State;
    .restart local v8       #call:Lcom/android/internal/telephony/Call;
    :cond_3e4
    const/4 v6, 0x0

    goto/16 :goto_2c7

    .line 4279
    .restart local v6       #bailOutImmediately:Z
    :cond_3e7
    if-eqz v15, :cond_416

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/InCallFragment;->mSubscription:I

    move/from16 v30, v0

    invoke-static/range {v29 .. v30}, Lcom/android/phone/PhoneUtils;->hasDisconnectedFgCall(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v29

    if-nez v29, :cond_40d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/InCallFragment;->mSubscription:I

    move/from16 v30, v0

    invoke-static/range {v29 .. v30}, Lcom/android/phone/PhoneUtils;->hasDisconnectedBgCall(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v29

    if-eqz v29, :cond_416

    .line 4283
    :cond_40d
    sget-object v29, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/phone/InCallFragment;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 4290
    :cond_416
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallFragment;->updateScreen()V

    .line 4295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/InCallFragment;->mSubscription:I

    move/from16 v30, v0

    invoke-static/range {v29 .. v30}, Lcom/android/phone/PhoneUtils;->hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v19

    .line 4297
    .local v19, hasActiveCall:Z
    if-nez v19, :cond_488

    .line 4302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mWaitPromptDialog:Landroid/app/AlertDialog;

    move-object/from16 v29, v0

    if-eqz v29, :cond_44d

    .line 4303
    const-string v29, "- DISMISSING mWaitPromptDialog."

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 4304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mWaitPromptDialog:Landroid/app/AlertDialog;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/app/AlertDialog;->dismiss()V

    .line 4305
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallFragment;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 4307
    :cond_44d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mWildPromptDialog:Landroid/app/AlertDialog;

    move-object/from16 v29, v0

    if-eqz v29, :cond_46f

    .line 4308
    const-string v29, "- DISMISSING mWildPromptDialog."

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 4309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mWildPromptDialog:Landroid/app/AlertDialog;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/app/AlertDialog;->dismiss()V

    .line 4310
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallFragment;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 4312
    :cond_46f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mPausePromptDialog:Landroid/app/AlertDialog;

    move-object/from16 v29, v0

    if-eqz v29, :cond_488

    .line 4314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mPausePromptDialog:Landroid/app/AlertDialog;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/app/AlertDialog;->dismiss()V

    .line 4315
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallFragment;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 4320
    :cond_488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/InCallFragment;->mSubscription:I

    move/from16 v30, v0

    invoke-static/range {v29 .. v30}, Lcom/android/phone/PhoneUtils;->unHoldOrUnMuteCall(Lcom/android/internal/telephony/CallManager;I)V

    .line 4324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/InCallScreen_DSDA;->refreshTabs()V

    .line 4337
    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v29

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_4e8

    .line 4338
    if-nez v15, :cond_4e8

    .line 4342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 4352
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v29

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_3e

    .line 4353
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/InCallFragment;->mSubscription:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/android/phone/PhoneApp;->setmActiveSubscription(I)V

    .line 4354
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallFragment;->requestUpdateInCallTouchUi(Z)V

    .line 4355
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallFragment;->setEndButton(Z)V

    goto/16 :goto_3e

    .line 4369
    :cond_4e8
    sget-object v29, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v29

    if-ne v11, v0, :cond_523

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/InCallFragment;->mIsRecording:Z

    move/from16 v29, v0

    if-nez v29, :cond_523

    const/16 v9, 0xc8

    .line 4373
    .local v9, callEndedDisplayDelay:I
    :goto_4f8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    move-object/from16 v29, v0

    const/16 v30, 0x6c

    invoke-virtual/range {v29 .. v30}, Landroid/os/Handler;->removeMessages(I)V

    .line 4374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    move-object/from16 v30, v0

    const/16 v31, 0x6c

    move-object/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v30

    int-to-long v0, v9

    move-wide/from16 v31, v0

    invoke-virtual/range {v29 .. v32}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_3e

    .line 4369
    .end local v9           #callEndedDisplayDelay:I
    :cond_523
    const/16 v9, 0x7d0

    goto :goto_4f8
.end method

.method private onHoldClick()V
    .registers 9

    .prologue
    const/4 v6, 0x1

    .line 2989
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v5

    iget v7, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    if-eq v5, v7, :cond_e

    .line 3029
    :goto_d
    return-void

    .line 2994
    :cond_e
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mInCallControlState:Lcom/android/phone/InCallControlState_DSDA;

    invoke-virtual {v5}, Lcom/android/phone/InCallControlState_DSDA;->getUserHold()Z

    move-result v4

    .line 2995
    .local v4, userHold:Z
    iget-object v7, p0, Lcom/android/phone/InCallFragment;->mInCallControlState:Lcom/android/phone/InCallControlState_DSDA;

    if-nez v4, :cond_61

    move v5, v6

    :goto_19
    invoke-virtual {v7, v5}, Lcom/android/phone/InCallControlState_DSDA;->setUserHold(Z)V

    .line 2999
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v7, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v5, v7}, Lcom/android/phone/PhoneUtils;->hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v0

    .line 3000
    .local v0, hasActiveCall:Z
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v7, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v5, v7}, Lcom/android/phone/PhoneUtils;->hasHoldCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v1

    .line 3001
    .local v1, hasHoldingCall:Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onHoldClick: hasActiveCall = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", hasHoldingCall = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 3005
    if-eqz v0, :cond_63

    if-nez v1, :cond_63

    .line 3007
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v7, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v5, v7}, Lcom/android/phone/PhoneUtils;->getFirstActiveBgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 3009
    const/4 v3, 0x1

    .line 3010
    .local v3, newHoldState:Z
    const/4 v2, 0x1

    .line 3027
    .local v2, holdButtonEnabled:Z
    :goto_5d
    invoke-virtual {p0, v6}, Lcom/android/phone/InCallFragment;->hideDialpadInternal(Z)V

    goto :goto_d

    .line 2995
    .end local v0           #hasActiveCall:Z
    .end local v1           #hasHoldingCall:Z
    .end local v2           #holdButtonEnabled:Z
    .end local v3           #newHoldState:Z
    :cond_61
    const/4 v5, 0x0

    goto :goto_19

    .line 3011
    .restart local v0       #hasActiveCall:Z
    .restart local v1       #hasHoldingCall:Z
    :cond_63
    if-nez v0, :cond_75

    if-eqz v1, :cond_75

    .line 3013
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v7, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v5, v7}, Lcom/android/phone/PhoneUtils;->getFirstActiveBgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 3015
    const/4 v3, 0x0

    .line 3016
    .restart local v3       #newHoldState:Z
    const/4 v2, 0x1

    .restart local v2       #holdButtonEnabled:Z
    goto :goto_5d

    .line 3019
    .end local v2           #holdButtonEnabled:Z
    .end local v3           #newHoldState:Z
    :cond_75
    const/4 v3, 0x0

    .line 3020
    .restart local v3       #newHoldState:Z
    const/4 v2, 0x0

    .restart local v2       #holdButtonEnabled:Z
    goto :goto_5d
.end method

.method private onMMICancel(Lcom/android/internal/telephony/Phone;)V
    .registers 5
    .parameter "phone"

    .prologue
    .line 2236
    const-string v0, "onMMICancel()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 2239
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    .line 2251
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/phone/InCallFragment$InCallFragmentListener;->onCloseFragment(IZ)V

    .line 2252
    :cond_14
    return-void
.end method

.method private onNewRingingConnection(Landroid/os/AsyncResult;)V
    .registers 6
    .parameter "r"

    .prologue
    .line 4783
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateActiveCallButtonState()V

    .line 4785
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 4787
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_1a

    .line 4788
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 4789
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v3

    if-eq v2, v3, :cond_1a

    .line 4814
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_19
    :goto_19
    return-void

    .line 4811
    :cond_1a
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager_DSDA;

    if-eqz v2, :cond_19

    .line 4812
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager_DSDA;

    invoke-virtual {v2}, Lcom/android/phone/RespondViaSmsManager_DSDA;->dismissPopup()V

    goto :goto_19
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .registers 9
    .parameter "r"

    .prologue
    const/4 v6, 0x0

    .line 3900
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    if-nez v4, :cond_6

    .line 3978
    :cond_5
    :goto_5
    return-void

    .line 3904
    :cond_6
    iget v4, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->getState(I)Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    .line 3908
    .local v2, state:Lcom/android/internal/telephony/Phone$State;
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 3910
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    iget v4, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v5

    if-eq v4, v5, :cond_1c

    .line 3912
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateActiveCallButtonState()V

    goto :goto_5

    .line 3920
    :cond_1c
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isGsmCallRemoteAnswered()Z

    move-result v4

    if-eqz v4, :cond_16e

    .line 3921
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/phone/PhoneApp;->setGsmCallRemoteAnswered(Z)V

    .line 3922
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v4

    iget v5, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    if-eq v4, v5, :cond_6e

    .line 3923
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-virtual {v4, v5}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/android/phone/PhoneUtils;->switchCallModes(Lcom/android/internal/telephony/Phone;Z)V

    .line 3924
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-virtual {v4, v5}, Lcom/android/phone/PhoneApp;->setmActiveSubscription(I)V

    .line 3926
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget v5, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-virtual {v4, v5}, Lcom/android/phone/InCallScreen_DSDA;->getFragmentForSubscription(I)Lcom/android/phone/InCallFragment;

    move-result-object v0

    .line 3927
    .local v0, fragment:Lcom/android/phone/InCallFragment;
    if-eqz v0, :cond_6e

    .line 3928
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallFragment;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/phone/InCallScreen_DSDA;->getMatchingTabToaFragment(Ljava/lang/String;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    .line 3929
    .local v3, tab:Landroid/app/ActionBar$Tab;
    if-eqz v3, :cond_6e

    .line 3931
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen_DSDA;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 3944
    .end local v0           #fragment:Lcom/android/phone/InCallFragment;
    .end local v3           #tab:Landroid/app/ActionBar$Tab;
    goto :cond_6e

    :cond_16e
    iget v4, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->getState(I)Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v4, :cond_6e

    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v4, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v2, v4}, Lcom/android/phone/PhoneUtils;->hasActiveCDMACall(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v4

    if-nez v4, :cond_26e

    iget-boolean v4, p0, Lcom/android/phone/InCallFragment;->wasRinging:Z

    if-eqz v4, :cond_6e

    :cond_26e
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v4}, Landroid/media/voicerecorder/BaseVoiceRecorder;->isRecording()Z

    move-result v4

    if-nez v4, :cond_6e

    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->voiceRecordStart()V

    :cond_6e
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/phone/PhoneApp;->mWakeUpScreen:Z

    if-nez v4, :cond_7e

    .line 3945
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3962
    :cond_7e
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->requestUpdateScreen()V

    .line 3968
    sget-object v4, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v4, :cond_28a

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/phone/InCallFragment;->wasRinging:Z

    goto :cond_8a

    .line 3969
    :cond_28a
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 3974
    :cond_8a
    sget-boolean v4, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen_DSDA;->isForegroundActivity()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3975
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen_DSDA;->refreshTabs()V

    goto/16 :goto_5
.end method

.method private onShowHideDialpad()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 3075
    const-string v0, "onShowHideDialpad()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 3076
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getmDialer()Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3077
    invoke-virtual {p0, v1}, Lcom/android/phone/InCallFragment;->hideDialpadInternal(Z)V

    .line 3081
    :goto_13
    return-void

    .line 3079
    :cond_14
    invoke-direct {p0, v1}, Lcom/android/phone/InCallFragment;->showDialpadInternal(Z)V

    goto :goto_13
.end method

.method private reStartTone()V
    .registers 3

    .prologue
    .line 2451
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v1}, Landroid/media/voicerecorder/BaseVoiceRecorder;->getState()I

    move-result v1

    if-ne v0, v1, :cond_11

    .line 2453
    const/16 v0, 0x23

    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->startTone(C)V

    .line 2455
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->stopTone()V

    .line 2459
    :cond_11
    return-void
.end method

.method private registerForLineControlInfo()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    const/4 v7, 0x1

    .line 4703
    iget-boolean v0, p0, Lcom/android/phone/InCallFragment;->mRegisteredForLineControlInfo:Z

    if-nez v0, :cond_40

    .line 4704
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 4705
    .local v6, phoneType:I
    if-ne v6, v1, :cond_3e

    .line 4706
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/Object;

    .line 4707
    .local v4, objs:[Ljava/lang/Object;
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    aput-object v0, v4, v2

    .line 4708
    const/16 v0, 0x7d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    .line 4709
    const/4 v0, 0x0

    aput-object v0, v4, v1

    .line 4711
    array-length v0, v4

    new-array v5, v0, [Ljava/lang/Class;

    .line 4712
    .local v5, clazzs:[Ljava/lang/Class;
    const-class v0, Landroid/os/Handler;

    aput-object v0, v5, v2

    .line 4713
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v5, v7

    .line 4715
    const-class v0, Ljava/lang/Object;

    aput-object v0, v5, v1

    .line 4718
    const-class v0, Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "registerForLineControlInfo"

    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/InCallFragment;->invokeReflectedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 4724
    .end local v4           #objs:[Ljava/lang/Object;
    .end local v5           #clazzs:[Ljava/lang/Class;
    :cond_3e
    iput-boolean v7, p0, Lcom/android/phone/InCallFragment;->mRegisteredForLineControlInfo:Z

    .line 4726
    .end local v6           #phoneType:I
    :cond_40
    return-void
.end method

.method private setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V
    .registers 12
    .parameter "newMode"

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 1612
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v4, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v3, Lcom/android/phone/MSimInCallUiState;

    .line 1613
    .local v3, mUIState:Lcom/android/phone/MSimInCallUiState;
    iget-object v4, v3, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    iget v5, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    aput-object p1, v4, v5

    .line 1618
    sget-object v4, Lcom/android/phone/InCallFragment$17;->$SwitchMap$com$android$phone$InCallUiState$InCallScreenMode:[I

    invoke-virtual {p1}, Lcom/android/phone/InCallUiState$InCallScreenMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_114

    .line 1745
    :goto_1b
    return-void

    .line 1620
    :pswitch_1c
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v5, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v4, v5}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-nez v4, :cond_37

    .line 1621
    const-string v4, "InCallFragment"

    const-string v5, "MANAGE_CONFERENCE: no active conference call!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    sget-object v4, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v4}, Lcom/android/phone/InCallFragment;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    goto :goto_1b

    .line 1626
    :cond_37
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v5, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v4, v5}, Lcom/android/phone/PhoneUtils;->getFgCallConnections(Lcom/android/internal/telephony/CallManager;I)Ljava/util/List;

    move-result-object v2

    .line 1629
    .local v2, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v2, :cond_47

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v9, :cond_65

    .line 1630
    :cond_47
    const-string v4, "InCallFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MANAGE_CONFERENCE: Bogus TRUE from isConferenceCall(); connections = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    sget-object v4, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v4}, Lcom/android/phone/InCallFragment;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    goto :goto_1b

    .line 1643
    :cond_65
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils_DSDA;

    invoke-virtual {v4}, Lcom/android/phone/ManageConferenceUtils_DSDA;->initManageConferencePanel()V

    .line 1645
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils_DSDA;

    invoke-virtual {v4, v2}, Lcom/android/phone/ManageConferenceUtils_DSDA;->updateManageConferencePanel(Ljava/util/List;)V

    .line 1649
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils_DSDA;

    invoke-virtual {v4, v9}, Lcom/android/phone/ManageConferenceUtils_DSDA;->setPanelVisible(Z)V

    .line 1658
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v5, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v4, v5}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v0

    .line 1660
    .local v0, callDuration:J
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils_DSDA;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Lcom/android/phone/ManageConferenceUtils_DSDA;->startConferenceTime(J)V

    .line 1663
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1b

    .line 1674
    .end local v0           #callDuration:J
    .end local v2           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :pswitch_94
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils_DSDA;

    invoke-virtual {v4, v7}, Lcom/android/phone/ManageConferenceUtils_DSDA;->setPanelVisible(Z)V

    .line 1675
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils_DSDA;

    invoke-virtual {v4}, Lcom/android/phone/ManageConferenceUtils_DSDA;->stopConferenceTime()V

    .line 1678
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_1b

    .line 1683
    :pswitch_a5
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->isDialerOpened()Z

    move-result v4

    if-eqz v4, :cond_bc

    .line 1684
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1688
    :goto_b0
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils_DSDA;

    invoke-virtual {v4, v7}, Lcom/android/phone/ManageConferenceUtils_DSDA;->setPanelVisible(Z)V

    .line 1689
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils_DSDA;

    invoke-virtual {v4}, Lcom/android/phone/ManageConferenceUtils_DSDA;->stopConferenceTime()V

    goto/16 :goto_1b

    .line 1686
    :cond_bc
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_b0

    .line 1693
    :pswitch_c2
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    sget-object v5, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    invoke-virtual {v4, v5}, Lcom/android/phone/OtaUtils;->setCdmaOtaInCallScreenUiState(Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;)V

    .line 1695
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_1b

    .line 1699
    :pswitch_d2
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    sget-object v5, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    invoke-virtual {v4, v5}, Lcom/android/phone/OtaUtils;->setCdmaOtaInCallScreenUiState(Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;)V

    .line 1701
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_1b

    .line 1729
    :pswitch_e2
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    const-string v6, "com.android.phone.InCallScreen.UNDEFINED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/phone/InCallScreen_DSDA;->setIntent(Landroid/content/Intent;)V

    .line 1733
    iget v4, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->getState(I)Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v4, v5, :cond_10e

    .line 1734
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v4, :cond_107

    .line 1735
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v4, v9}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    .line 1741
    :cond_107
    :goto_107
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_1b

    .line 1738
    :cond_10e
    const-string v4, "WARNING: Setting mode to UNDEFINED but phone is OFFHOOK, skip cleanOtaScreen."

    invoke-direct {p0, v4}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    goto :goto_107

    .line 1618
    :pswitch_data_114
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_94
        :pswitch_a5
        :pswitch_c2
        :pswitch_d2
        :pswitch_e2
    .end packed-switch
.end method

.method private showCallLostDialog()V
    .registers 4

    .prologue
    .line 4397
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_f

    .line 4421
    :cond_e
    :goto_e
    return-void

    .line 4403
    :cond_f
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hide_call_lost_dialog"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2d

    .line 4404
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-boolean v0, p0, Lcom/android/phone/InCallFragment;->mIsEmergencyNumber:Z

    if-nez v0, :cond_e

    .line 4411
    :cond_2d
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallLostDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_e

    .line 4416
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0029

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mCallLostDialog:Landroid/app/AlertDialog;

    .line 4420
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallLostDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_e
.end method

.method private showDialpadInternal(Z)V
    .registers 10
    .parameter "animate"

    .prologue
    const v7, 0x7f070058

    .line 1045
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-static {v5}, Lcom/android/phone/InCallFragment;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 1046
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1047
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen_DSDA;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1048
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1049
    .local v4, screenWidth:I
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1051
    .local v3, screenHeight:I
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    const v6, 0x7f070056

    invoke-virtual {v5, v6}, Lcom/android/phone/InCallScreen_DSDA;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/phone/InCallContactPhoto;

    iput-object v5, p0, Lcom/android/phone/InCallFragment;->dtmfphoto:Lcom/android/phone/InCallContactPhoto;

    .line 1052
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->dtmfphoto:Lcom/android/phone/InCallContactPhoto;

    if-eqz v5, :cond_62

    .line 1053
    if-le v4, v3, :cond_62

    .line 1054
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;

    iget-object v6, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5, v6}, Lcom/android/phone/CallCard_DSDA;->getCallerinfo(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 1056
    .local v1, info:Lcom/android/internal/telephony/CallerInfo;
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 1057
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v5, v7}, Lcom/android/phone/InCallScreen_DSDA;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/phone/InCallFragment;->mDialPadView_LeftName:Landroid/widget/TextView;

    .line 1058
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mDialPadView_LeftName:Landroid/widget/TextView;

    const v6, 0x7f0c0028

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1059
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->dtmfphoto:Lcom/android/phone/InCallContactPhoto;

    const v6, 0x7f02006b

    invoke-static {v5, v6}, Lcom/android/phone/InCallFragment;->showImage(Landroid/widget/ImageView;I)V

    .line 1092
    .end local v0           #dm:Landroid/util/DisplayMetrics;
    .end local v1           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v3           #screenHeight:I
    .end local v4           #screenWidth:I
    :cond_62
    :goto_62
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    invoke-virtual {v5, p1}, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;->openDialer(Z)V

    .line 1096
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v5, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v2, Lcom/android/phone/MSimInCallUiState;

    .line 1097
    .local v2, mUIState:Lcom/android/phone/MSimInCallUiState;
    iget-object v5, v2, Lcom/android/phone/MSimInCallUiState;->mSimShowDialpad:[Z

    iget v6, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 1100
    return-void

    .line 1062
    .end local v2           #mUIState:Lcom/android/phone/MSimInCallUiState;
    .restart local v0       #dm:Landroid/util/DisplayMetrics;
    .restart local v1       #info:Lcom/android/internal/telephony/CallerInfo;
    .restart local v3       #screenHeight:I
    .restart local v4       #screenWidth:I
    :cond_75
    if-eqz v1, :cond_86

    iget-boolean v5, v1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v5, :cond_86

    .line 1063
    iget-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_eb

    .line 1064
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->dtmfphoto:Lcom/android/phone/InCallContactPhoto;

    iget-object v6, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-static {v5, v6}, Lcom/android/phone/InCallFragment;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 1070
    :cond_86
    :goto_86
    if-eqz v1, :cond_62

    .line 1071
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v5, v7}, Lcom/android/phone/InCallScreen_DSDA;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/phone/InCallFragment;->mDialPadView_LeftName:Landroid/widget/TextView;

    .line 1072
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mDialPadView_LeftName:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1074
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    const v6, 0x7f07005a

    invoke-virtual {v5, v6}, Lcom/android/phone/InCallScreen_DSDA;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/phone/InCallFragment;->mDialPadView_LeftNumber:Landroid/widget/TextView;

    .line 1075
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mDialPadView_LeftNumber:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1077
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    const v6, 0x7f07005e

    invoke-virtual {v5, v6}, Lcom/android/phone/InCallScreen_DSDA;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/phone/InCallFragment;->mDialPadView_SocialStatus:Landroid/widget/TextView;

    .line 1078
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mDialPadView_SocialStatus:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1080
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    const v6, 0x7f070057

    invoke-virtual {v5, v6}, Lcom/android/phone/InCallScreen_DSDA;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/phone/InCallFragment;->mDialPadViewLeft_Banner:Landroid/view/ViewGroup;

    .line 1081
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mDialPadView_LeftNumber:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/phone/InCallFragment;->mDialPadViewLeft_Banner:Landroid/view/ViewGroup;

    invoke-static {v5, v6, v7}, Lcom/android/phone/InCallFragment;->showText(Landroid/widget/TextView;Ljava/lang/String;Landroid/view/ViewGroup;)V

    .line 1082
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mDialPadView_LeftName:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/phone/InCallFragment;->mDialPadViewLeft_Banner:Landroid/view/ViewGroup;

    invoke-static {v5, v6, v7}, Lcom/android/phone/InCallFragment;->showText(Landroid/widget/TextView;Ljava/lang/String;Landroid/view/ViewGroup;)V

    .line 1083
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mDialPadView_SocialStatus:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/phone/InCallFragment;->mDialPadViewLeft_Banner:Landroid/view/ViewGroup;

    invoke-static {v5, v6, v7}, Lcom/android/phone/InCallFragment;->showText(Landroid/widget/TextView;Ljava/lang/String;Landroid/view/ViewGroup;)V

    goto/16 :goto_62

    .line 1066
    :cond_eb
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->dtmfphoto:Lcom/android/phone/InCallContactPhoto;

    const v6, 0x7f02006f

    invoke-static {v5, v6}, Lcom/android/phone/InCallFragment;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_86
.end method

.method private showExitingECMDialog()V
    .registers 6

    .prologue
    .line 3472
    const-string v3, "InCallFragment"

    const-string v4, "showExitingECMDialog()..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3474
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mExitingECMDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_13

    .line 3476
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 3477
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/InCallFragment;->mExitingECMDialog:Landroid/app/AlertDialog;

    .line 3484
    :cond_13
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v3, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v2, Lcom/android/phone/MSimInCallUiState;

    .line 3485
    .local v2, inCallUiState:Lcom/android/phone/MSimInCallUiState;
    new-instance v1, Lcom/android/phone/InCallFragment$14;

    invoke-direct {v1, p0, v2}, Lcom/android/phone/InCallFragment$14;-><init>(Lcom/android/phone/InCallFragment;Lcom/android/phone/MSimInCallUiState;)V

    .line 3489
    .local v1, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/phone/InCallFragment$15;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/InCallFragment$15;-><init>(Lcom/android/phone/InCallFragment;Lcom/android/phone/MSimInCallUiState;)V

    .line 3495
    .local v0, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

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

    iput-object v3, p0, Lcom/android/phone/InCallFragment;->mExitingECMDialog:Landroid/app/AlertDialog;

    .line 3500
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 3502
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 3503
    return-void
.end method

.method private showGenericErrorDialog(IZ)V
    .registers 10
    .parameter "resid"
    .parameter "isStartupError"

    .prologue
    .line 3353
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 3359
    .local v2, msg:Ljava/lang/CharSequence;
    if-eqz p2, :cond_40

    .line 3360
    new-instance v1, Lcom/android/phone/InCallFragment$10;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallFragment$10;-><init>(Lcom/android/phone/InCallFragment;)V

    .line 3364
    .local v1, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/phone/InCallFragment$11;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallFragment$11;-><init>(Lcom/android/phone/InCallFragment;)V

    .line 3383
    .local v0, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    :goto_14
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c002d

    invoke-virtual {v5, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallFragment;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 3391
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 3394
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 3395
    return-void

    .line 3369
    .end local v0           #cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    .end local v1           #clickListener:Landroid/content/DialogInterface$OnClickListener;
    :cond_40
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getVoiceSubscription()I

    move-result v4

    .line 3370
    .local v4, sub:I
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5, v4}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 3371
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    new-instance v1, Lcom/android/phone/InCallFragment$12;

    invoke-direct {v1, p0, v3}, Lcom/android/phone/InCallFragment$12;-><init>(Lcom/android/phone/InCallFragment;Lcom/android/internal/telephony/Phone;)V

    .line 3375
    .restart local v1       #clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/phone/InCallFragment$13;

    invoke-direct {v0, p0, v3}, Lcom/android/phone/InCallFragment$13;-><init>(Lcom/android/phone/InCallFragment;Lcom/android/internal/telephony/Phone;)V

    .restart local v0       #cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    goto :goto_14
.end method

.method private static final showImage(Landroid/widget/ImageView;I)V
    .registers 3
    .parameter "view"
    .parameter "resource"

    .prologue
    .line 4953
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4954
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4955
    return-void
.end method

.method private static final showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "view"
    .parameter "drawable"

    .prologue
    .line 4949
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4950
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4951
    return-void
.end method

.method private showPausePromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .registers 9
    .parameter "c"
    .parameter "postDialStrAfterPause"

    .prologue
    .line 1405
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1406
    .local v2, r:Landroid/content/res/Resources;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1407
    .local v0, buf:Ljava/lang/StringBuilder;
    const v3, 0x7f0c0038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1408
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1410
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mPausePromptDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_22

    .line 1412
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 1413
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/InCallFragment;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 1416
    :cond_22
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/InCallFragment;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 1419
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1421
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x78

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 1422
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1423
    return-void
.end method

.method private showProgressIndication(II)V
    .registers 3
    .parameter "titleResId"
    .parameter "messageResId"

    .prologue
    .line 2182
    return-void
.end method

.method private showStatusIndication(Lcom/android/phone/Constants$CallStatusCode;)V
    .registers 5
    .parameter "status"

    .prologue
    const/4 v2, 0x1

    .line 3163
    sget-object v0, Lcom/android/phone/InCallFragment$17;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    invoke-virtual {p1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_70

    .line 3253
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

    .line 3167
    :pswitch_25
    const-string v0, "InCallFragment"

    const-string v1, "showStatusIndication: nothing to display"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3272
    :cond_2c
    :goto_2c
    :pswitch_2c
    return-void

    .line 3179
    :pswitch_2d
    const v0, 0x7f0c01c5

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallFragment;->showGenericErrorDialog(IZ)V

    goto :goto_2c

    .line 3187
    :pswitch_34
    const v0, 0x7f0c01c6

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallFragment;->showGenericErrorDialog(IZ)V

    goto :goto_2c

    .line 3193
    :pswitch_3b
    const v0, 0x7f0c01c7

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallFragment;->showGenericErrorDialog(IZ)V

    goto :goto_2c

    .line 3201
    :pswitch_42
    const v0, 0x7f0c01c8

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallFragment;->showGenericErrorDialog(IZ)V

    goto :goto_2c

    .line 3215
    :pswitch_49
    iget v0, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getState(I)Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_2c

    .line 3216
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    const v1, 0x7f0c01cb

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2c

    .line 3227
    :pswitch_61
    const v0, 0x7f0c01ca

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallFragment;->showGenericErrorDialog(IZ)V

    goto :goto_2c

    .line 3234
    :pswitch_68
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->handleMissingVoiceMailNumber()V

    goto :goto_2c

    .line 3249
    :pswitch_6c
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->showExitingECMDialog()V

    goto :goto_2c

    .line 3163
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
    .line 4962
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4963
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4964
    return-void
.end method

.method private static final showText(Landroid/widget/TextView;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .registers 4
    .parameter "view"
    .parameter "resource"
    .parameter "vg"

    .prologue
    const/4 v0, 0x0

    .line 4957
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4958
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4959
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4960
    return-void
.end method

.method private showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .registers 9
    .parameter "c"
    .parameter "postDialStr"

    .prologue
    .line 1432
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1433
    .local v2, r:Landroid/content/res/Resources;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1434
    .local v0, buf:Ljava/lang/StringBuilder;
    const v3, 0x7f0c0037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1435
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1437
    const/4 v1, 0x0

    .line 1438
    .local v1, firstTimeShow:Z
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-nez v3, :cond_29

    .line 1440
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/InCallFragment;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 1441
    const/4 v1, 0x1

    .line 1444
    :cond_29
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1445
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mWaitPromptDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    const v5, 0x7f0c003a

    invoke-virtual {v4, v5}, Lcom/android/phone/InCallScreen_DSDA;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/phone/InCallFragment$2;

    invoke-direct {v5, p0, p1}, Lcom/android/phone/InCallFragment$2;-><init>(Lcom/android/phone/InCallFragment;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1453
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mWaitPromptDialog:Landroid/app/AlertDialog;

    const v4, 0x7f0c003b

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/phone/InCallFragment$3;

    invoke-direct {v5, p0, p1}, Lcom/android/phone/InCallFragment$3;-><init>(Lcom/android/phone/InCallFragment;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1460
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mWaitPromptDialog:Landroid/app/AlertDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1461
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 1464
    if-eqz v1, :cond_6d

    .line 1465
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1467
    :cond_6d
    return-void
.end method

.method private showWildPromptDialog(Lcom/android/internal/telephony/Connection;)V
    .registers 6
    .parameter "c"

    .prologue
    .line 1470
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->createWildPromptView()Landroid/view/View;

    move-result-object v0

    .line 1472
    .local v0, v:Landroid/view/View;
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mWildPromptDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_15

    .line 1473
    const-string v1, "- DISMISSING mWildPromptDialog."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 1474
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1475
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 1478
    :cond_15
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0039

    new-instance v3, Lcom/android/phone/InCallFragment$5;

    invoke-direct {v3, p0, p1}, Lcom/android/phone/InCallFragment$5;-><init>(Lcom/android/phone/InCallFragment;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/InCallFragment$4;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/InCallFragment$4;-><init>(Lcom/android/phone/InCallFragment;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 1503
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1505
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1507
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1508
    return-void
.end method

.method private startTone(C)V
    .registers 5
    .parameter "c"

    .prologue
    .line 2387
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2388
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 2389
    .local v1, phoneType:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1b

    .line 2390
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getmDialer()Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->startTone(C)V

    .line 2395
    :goto_1a
    return-void

    .line 2392
    :cond_1b
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/CallManager;->startDtmf(C)Z

    goto :goto_1a
.end method

.method private stopTimer()V
    .registers 2

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/CallCard_DSDA;->stopTimer()V

    .line 1137
    :cond_9
    return-void
.end method

.method private stopTone()V
    .registers 7

    .prologue
    .line 2403
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 2404
    .local v1, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 2406
    .local v2, phoneType:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_30

    .line 2408
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen_DSDA;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dtmf_tone_type"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2410
    .local v0, ToneType:I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2f

    .line 2411
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->stopDtmf()V

    .line 2412
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getmDialer()Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneIfNeeded()V

    .line 2417
    .end local v0           #ToneType:I
    :cond_2f
    :goto_2f
    return-void

    .line 2415
    :cond_30
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->stopDtmf()V

    goto :goto_2f
.end method

.method private syncWithPhoneState()Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 977
    const/4 v3, 0x0

    .line 982
    .local v3, updateSuccessful:Z
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v5, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v1, Lcom/android/phone/MSimInCallUiState;

    .line 988
    .local v1, mUIState:Lcom/android/phone/MSimInCallUiState;
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-eqz v5, :cond_2b

    iget-object v5, v1, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    iget v6, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    aget-object v5, v5, v6

    sget-object v6, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v5, v6, :cond_28

    iget-object v5, v1, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    iget v6, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    aget-object v5, v5, v6

    sget-object v6, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v5, v6, :cond_2b

    .line 993
    :cond_28
    sget-object v4, Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;->SUCCESS:Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;

    .line 1038
    :goto_2a
    return-object v4

    .line 1002
    :cond_2b
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-ne v5, v4, :cond_75

    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_75

    move v0, v4

    .line 1009
    .local v0, hasPendingMmiCodes:Z
    :goto_40
    iget v5, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-virtual {v1, v5}, Lcom/android/phone/MSimInCallUiState;->isProgressIndicationActive(I)Z

    move-result v2

    .line 1014
    .local v2, showProgressIndication:Z
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v6, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v5, v6}, Lcom/android/phone/PhoneUtils;->hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v5

    if-nez v5, :cond_68

    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v6, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v5, v6}, Lcom/android/phone/PhoneUtils;->hasHoldCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v5

    if-nez v5, :cond_68

    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v6, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v5, v6}, Lcom/android/phone/PhoneUtils;->hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v5

    if-nez v5, :cond_68

    if-nez v0, :cond_68

    if-eqz v2, :cond_77

    .line 1017
    :cond_68
    const-string v5, "syncWithPhoneState: it\'s ok to be here; update the screen..."

    invoke-direct {p0, v5}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 1019
    iput-boolean v4, p0, Lcom/android/phone/InCallFragment;->mHideImmediately:Z

    .line 1023
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->updateScreen()V

    .line 1024
    sget-object v4, Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;->SUCCESS:Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;

    goto :goto_2a

    .line 1002
    .end local v0           #hasPendingMmiCodes:Z
    .end local v2           #showProgressIndication:Z
    :cond_75
    const/4 v0, 0x0

    goto :goto_40

    .line 1031
    .restart local v0       #hasPendingMmiCodes:Z
    .restart local v2       #showProgressIndication:Z
    :cond_77
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-boolean v4, v4, Lcom/android/phone/PhoneApp;->mWakeUpScreen:Z

    if-eqz v4, :cond_89

    iget-boolean v4, p0, Lcom/android/phone/InCallFragment;->mRemoteCallEnd:Z

    if-eqz v4, :cond_89

    .line 1032
    sget-object v4, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v4}, Lcom/android/phone/InCallFragment;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 1033
    sget-object v4, Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;->SUCCESS:Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;

    goto :goto_2a

    .line 1037
    :cond_89
    const-string v4, "InCallFragment"

    const-string v5, "syncWithPhoneState: phone is idle (shouldn\'t be here)"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    sget-object v4, Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;->PHONE_NOT_IN_USE:Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;

    goto :goto_2a
.end method

.method private unregisterForLineControllInfo()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 4729
    iget-boolean v0, p0, Lcom/android/phone/InCallFragment;->mRegisteredForLineControlInfo:Z

    if-eqz v0, :cond_2c

    .line 4730
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 4731
    .local v6, phoneType:I
    const/4 v0, 0x2

    if-ne v6, v0, :cond_2a

    .line 4733
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    .line 4735
    .local v4, objs:[Ljava/lang/Object;
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    aput-object v0, v4, v7

    .line 4737
    array-length v0, v4

    new-array v5, v0, [Ljava/lang/Class;

    .line 4738
    .local v5, clazzs:[Ljava/lang/Class;
    const-class v0, Landroid/os/Handler;

    aput-object v0, v5, v7

    .line 4740
    const-class v0, Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unregisterForLineControlInfo"

    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/InCallFragment;->invokeReflectedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 4748
    .end local v4           #objs:[Ljava/lang/Object;
    .end local v5           #clazzs:[Ljava/lang/Class;
    :cond_2a
    iput-boolean v7, p0, Lcom/android/phone/InCallFragment;->mRegisteredForLineControlInfo:Z

    .line 4751
    .end local v6           #phoneType:I
    :cond_2c
    return-void
.end method

.method private unregisterForPhoneStates()V
    .registers 3

    .prologue
    .line 3798
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 3799
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 3800
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 3801
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 3802
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 3803
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPostDialCharacter(Landroid/os/Handler;)V

    .line 3804
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 3805
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 3806
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 3807
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallFragment;->mRegisteredForPhoneStates:Z

    .line 3808
    return-void
.end method

.method private updateActiveCallButtonState()V
    .registers 15

    .prologue
    const/16 v13, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4825
    iget-object v10, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    if-nez v10, :cond_9

    .line 4896
    :cond_8
    :goto_8
    return-void

    .line 4830
    :cond_9
    iget-object v10, p0, Lcom/android/phone/InCallFragment;->mActiveCall:Landroid/widget/Button;

    if-eqz v10, :cond_8

    .line 4834
    iget-object v10, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v0

    .line 4837
    .local v0, activeSub:I
    const/4 v10, -0x1

    if-ne v0, v10, :cond_1c

    .line 4838
    iget-object v8, p0, Lcom/android/phone/InCallFragment;->mActiveCall:Landroid/widget/Button;

    invoke-virtual {v8, v13}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_8

    .line 4843
    :cond_1c
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getAlternateSub(I)I

    move-result v1

    .line 4844
    .local v1, altActiveSub:I
    iget-object v10, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v11, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->getAlternateSub(I)I

    move-result v11

    invoke-static {v10, v11}, Lcom/android/phone/PhoneUtils;->hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v5

    .line 4845
    .local v5, hasAltRingingCall:Z
    if-eqz v5, :cond_34

    .line 4846
    iget-object v8, p0, Lcom/android/phone/InCallFragment;->mActiveCall:Landroid/widget/Button;

    invoke-virtual {v8, v13}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_8

    .line 4852
    :cond_34
    iget-object v10, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v10, v1}, Lcom/android/phone/PhoneUtils;->hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v10

    if-nez v10, :cond_44

    iget-object v10, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v10, v1}, Lcom/android/phone/PhoneUtils;->hasHoldCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v10

    if-eqz v10, :cond_ed

    :cond_44
    move v6, v9

    .line 4855
    .local v6, isCallPresentOnAltSub:Z
    :goto_45
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    .line 4856
    .local v7, phone:Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 4857
    .local v2, altPhone:Lcom/android/internal/telephony/Phone;
    const/4 v4, 0x0

    .line 4858
    .local v4, hasActiveFgCall:Z
    const/4 v3, 0x0

    .line 4859
    .local v3, hasActiveBgCall:Z
    if-nez v0, :cond_f6

    .line 4861
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v10

    if-nez v10, :cond_f0

    move v4, v9

    .line 4862
    :goto_64
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v10

    if-nez v10, :cond_f3

    move v3, v9

    .line 4863
    :goto_6f
    sget-boolean v10, Lcom/android/phone/InCallFragment;->mAutoSetMute:Z

    if-nez v10, :cond_9a

    sget-boolean v10, Lcom/android/phone/InCallFragment;->mUserSetMute:Z

    if-nez v10, :cond_9a

    if-eqz v4, :cond_9a

    if-nez v3, :cond_9a

    .line 4864
    invoke-static {v9, v1}, Lcom/android/phone/PhoneUtils;->setMute(ZI)V

    .line 4865
    sput-boolean v9, Lcom/android/phone/InCallFragment;->mAutoSetMute:Z

    .line 4866
    const-string v10, "InCallFragment"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mAutoSetMute: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-boolean v12, Lcom/android/phone/InCallFragment;->mAutoSetMute:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4886
    :cond_9a
    :goto_9a
    const-string v10, "InCallFragment"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Active subscription is = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4887
    const-string v10, "InCallFragment"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Alternate subscription call present = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4889
    if-eqz v6, :cond_147

    .line 4890
    iget-object v10, p0, Lcom/android/phone/InCallFragment;->mActiveCall:Landroid/widget/Button;

    const v11, 0x7f0c041e

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v12, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v12}, Lcom/android/phone/InCallScreen_DSDA;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v1}, Lcom/android/phone/PhoneUtils;->getSimCardDisplayLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v8

    invoke-virtual {p0, v11, v9}, Lcom/android/phone/InCallFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 4892
    iget-object v9, p0, Lcom/android/phone/InCallFragment;->mActiveCall:Landroid/widget/Button;

    invoke-virtual {v9, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_8

    .end local v2           #altPhone:Lcom/android/internal/telephony/Phone;
    .end local v3           #hasActiveBgCall:Z
    .end local v4           #hasActiveFgCall:Z
    .end local v6           #isCallPresentOnAltSub:Z
    .end local v7           #phone:Lcom/android/internal/telephony/Phone;
    :cond_ed
    move v6, v8

    .line 4852
    goto/16 :goto_45

    .restart local v2       #altPhone:Lcom/android/internal/telephony/Phone;
    .restart local v3       #hasActiveBgCall:Z
    .restart local v4       #hasActiveFgCall:Z
    .restart local v6       #isCallPresentOnAltSub:Z
    .restart local v7       #phone:Lcom/android/internal/telephony/Phone;
    :cond_f0
    move v4, v8

    .line 4861
    goto/16 :goto_64

    :cond_f3
    move v3, v8

    .line 4862
    goto/16 :goto_6f

    .line 4870
    :cond_f6
    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v10

    if-nez v10, :cond_143

    move v4, v9

    .line 4871
    :goto_101
    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v10

    if-nez v10, :cond_145

    move v3, v9

    .line 4872
    :goto_10c
    sget-boolean v10, Lcom/android/phone/InCallFragment;->mAutoSetMute:Z

    if-eqz v10, :cond_9a

    sget-boolean v10, Lcom/android/phone/InCallFragment;->mUserSetMute:Z

    if-nez v10, :cond_9a

    if-eqz v4, :cond_9a

    .line 4873
    invoke-static {v8, v0}, Lcom/android/phone/PhoneUtils;->setMute(ZI)V

    .line 4874
    sput-boolean v8, Lcom/android/phone/InCallFragment;->mAutoSetMute:Z

    .line 4876
    if-eqz v3, :cond_127

    .line 4877
    const-string v10, "InCallFragment"

    const-string v11, "hasActiveBgCall"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4878
    invoke-static {v8, v0}, Lcom/android/phone/PhoneUtils;->setBgMute(ZI)V

    .line 4881
    :cond_127
    const-string v10, "InCallFragment"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mAutoSetMute: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-boolean v12, Lcom/android/phone/InCallFragment;->mAutoSetMute:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9a

    :cond_143
    move v4, v8

    .line 4870
    goto :goto_101

    :cond_145
    move v3, v8

    .line 4871
    goto :goto_10c

    .line 4894
    :cond_147
    iget-object v8, p0, Lcom/android/phone/InCallFragment;->mActiveCall:Landroid/widget/Button;

    invoke-virtual {v8, v13}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_8
.end method

.method private updateDialpadVisibility()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1760
    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->getState(I)Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_15

    .line 1761
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallFragment;->hideDialpadInternal(Z)V

    .line 1771
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;->clearDigits()V

    .line 1781
    :cond_15
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->isDialerOpened()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1782
    const-string v1, "- updateDialpadVisibility: dialpad open, hide mInCallPanel..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 1784
    iget-boolean v1, p0, Lcom/android/phone/InCallFragment;->mHideImmediately:Z

    if-eqz v1, :cond_2c

    .line 1785
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1786
    iput-boolean v3, p0, Lcom/android/phone/InCallFragment;->mHideImmediately:Z

    .line 1803
    :cond_2b
    :goto_2b
    return-void

    .line 1788
    :cond_2c
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-static {v1, v4}, Lcom/android/phone/CallCard$Fade;->hide(Landroid/view/View;I)V

    goto :goto_2b

    .line 1795
    :cond_32
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v0, Lcom/android/phone/MSimInCallUiState;

    .line 1796
    .local v0, mUIState:Lcom/android/phone/MSimInCallUiState;
    iget-object v1, v0, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v1, v2, :cond_4c

    iget-object v1, v0, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v1, v2, :cond_2b

    .line 1798
    :cond_4c
    const-string v1, "- updateDialpadVisibility: dialpad dismissed, show mInCallPanel..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 1799
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/phone/CallCard$Fade;->show(Landroid/view/View;)V

    goto :goto_2b
.end method

.method private updateInCallTouchUi()V
    .registers 4

    .prologue
    .line 1809
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi_DSDA;

    if-eqz v0, :cond_d

    .line 1811
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi_DSDA;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/InCallTouchUi_DSDA;->updateState(Lcom/android/internal/telephony/CallManager;I)V

    .line 1819
    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallFragment;->requestUpdateInCallTouchUi(Z)V

    .line 1822
    return-void
.end method

.method private updateInCallTouchUiButtons(Z)V
    .registers 5
    .parameter "refreshButtonStates"

    .prologue
    .line 5220
    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v2

    if-ne v1, v2, :cond_13

    const/4 v0, 0x1

    .line 5221
    .local v0, isActiveSub:Z
    :goto_d
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi_DSDA;

    invoke-virtual {v1, v0, p1}, Lcom/android/phone/InCallTouchUi_DSDA;->enableOrDisableFunctionalButtons(ZZ)V

    .line 5222
    return-void

    .line 5220
    .end local v0           #isActiveSub:Z
    :cond_13
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private updateManageConferencePanelIfNecessary()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1553
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateManageConferencePanelIfNecessary: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 1555
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v4, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtils;->getFgCallConnections(Lcom/android/internal/telephony/CallManager;I)Ljava/util/List;

    move-result-object v0

    .line 1556
    .local v0, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-nez v0, :cond_63

    .line 1557
    const-string v3, "==> no connections on foreground call!"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 1559
    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallFragment;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 1560
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->syncWithPhoneState()Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;

    move-result-object v2

    .line 1561
    .local v2, status:Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;
    sget-object v3, Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;->SUCCESS:Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;

    if-eq v2, v3, :cond_62

    .line 1562
    const-string v3, "InCallFragment"

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

    .line 1566
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    if-eqz v3, :cond_62

    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    iget v4, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-interface {v3, v4, v6}, Lcom/android/phone/InCallFragment$InCallFragmentListener;->onCloseFragment(IZ)V

    .line 1595
    .end local v2           #status:Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;
    :cond_62
    :goto_62
    return-void

    .line 1572
    :cond_63
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1573
    .local v1, numConnections:I
    const/4 v3, 0x1

    if-gt v1, v3, :cond_a0

    .line 1574
    const-string v3, "==> foreground call no longer a conference!"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 1576
    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallFragment;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 1577
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->syncWithPhoneState()Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;

    move-result-object v2

    .line 1578
    .restart local v2       #status:Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;
    sget-object v3, Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;->SUCCESS:Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;

    if-eq v2, v3, :cond_62

    .line 1579
    const-string v3, "InCallFragment"

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

    .line 1583
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    if-eqz v3, :cond_62

    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    iget v4, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-interface {v3, v4, v6}, Lcom/android/phone/InCallFragment$InCallFragmentListener;->onCloseFragment(IZ)V

    goto :goto_62

    .line 1591
    .end local v2           #status:Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;
    :cond_a0
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils_DSDA;

    invoke-virtual {v3}, Lcom/android/phone/ManageConferenceUtils_DSDA;->getNumCallersInConference()I

    move-result v3

    if-eq v1, v3, :cond_62

    .line 1592
    const-string v3, "==> Conference size has changed; need to rebuild UI!"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 1593
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils_DSDA;

    invoke-virtual {v3, v0}, Lcom/android/phone/ManageConferenceUtils_DSDA;->updateManageConferencePanel(Ljava/util/List;)V

    goto :goto_62
.end method

.method private updateProgressIndication()V
    .registers 5

    .prologue
    const v3, 0x7f0c01d5

    .line 1845
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1846
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->dismissProgressIndication()V

    .line 1880
    :goto_10
    return-void

    .line 1853
    :cond_11
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v0, Lcom/android/phone/MSimInCallUiState;

    .line 1854
    .local v0, inCallUiState:Lcom/android/phone/MSimInCallUiState;
    sget-object v1, Lcom/android/phone/InCallFragment$17;->$SwitchMap$com$android$phone$InCallUiState$ProgressIndicationType:[I

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-virtual {v0, v2}, Lcom/android/phone/MSimInCallUiState;->getProgressIndication(I)Lcom/android/phone/InCallUiState$ProgressIndicationType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/InCallUiState$ProgressIndicationType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_5c

    .line 1874
    const-string v1, "InCallFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateProgressIndication: unexpected value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-virtual {v0, v3}, Lcom/android/phone/MSimInCallUiState;->getProgressIndication(I)Lcom/android/phone/InCallUiState$ProgressIndicationType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->dismissProgressIndication()V

    goto :goto_10

    .line 1857
    :pswitch_4a
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->dismissProgressIndication()V

    goto :goto_10

    .line 1862
    :pswitch_4e
    const v1, 0x7f0c01d6

    invoke-direct {p0, v3, v1}, Lcom/android/phone/InCallFragment;->showProgressIndication(II)V

    goto :goto_10

    .line 1868
    :pswitch_55
    const v1, 0x7f0c01d7

    invoke-direct {p0, v3, v1}, Lcom/android/phone/InCallFragment;->showProgressIndication(II)V

    goto :goto_10

    .line 1854
    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_4e
        :pswitch_55
    .end packed-switch
.end method

.method private updateProviderOverlay()V
    .registers 11

    .prologue
    const/16 v9, 0x79

    const/4 v8, 0x0

    .line 1903
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v4, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v0, Lcom/android/phone/MSimInCallUiState;

    .line 1905
    .local v0, inCallUiState:Lcom/android/phone/MSimInCallUiState;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateProviderOverlay: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v0, Lcom/android/phone/InCallUiState;->providerOverlayVisible:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 1907
    iget-object v4, v0, Lcom/android/phone/MSimInCallUiState;->mSimProviderOverlayVisible:[Z

    iget v5, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_70

    .line 1908
    const v4, 0x7f0c022c

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1909
    .local v2, template:Ljava/lang/CharSequence;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/CharSequence;

    iget-object v5, v0, Lcom/android/phone/MSimInCallUiState;->mSimProviderLabel:[Ljava/lang/CharSequence;

    iget v6, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    aget-object v5, v5, v6

    aput-object v5, v4, v8

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/android/phone/MSimInCallUiState;->mSimProviderAddress:[Ljava/lang/String;

    iget v7, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1913
    .local v3, text:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mCallingViaMessage:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1915
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mCallingViaIcon:Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/android/phone/MSimInCallUiState;->mSimProviderIcon:[Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1917
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mProviderOverLay:Landroid/view/ViewGroup;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1921
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1922
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v4, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 1923
    .local v1, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1928
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #template:Ljava/lang/CharSequence;
    .end local v3           #text:Ljava/lang/CharSequence;
    :goto_6f
    return-void

    .line 1925
    :cond_70
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mProviderOverLay:Landroid/view/ViewGroup;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_6f
.end method

.method private voiceRecordClick()V
    .registers 6

    .prologue
    .line 2359
    const-string v2, "InCallFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "voiceRecordClick()->isRecording="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v4}, Landroid/media/voicerecorder/BaseVoiceRecorder;->isRecording()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v2}, Landroid/media/voicerecorder/BaseVoiceRecorder;->isRecording()Z

    move-result v2

    if-nez v2, :cond_5b

    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->voiceRecordStart()V

    goto :goto_147

    .line 2375
    :cond_5b
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->voiceRecordStop()V

    :goto_147
    return-void
.end method

.method private voiceRecordStop()V
    .registers 6

    .prologue
    .line 2375
    const-string v2, "InCallFragment"

    const-string v3, "voiceRecordClick()->stop recording"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/media/voicerecorder/BaseVoiceRecorder;->stop(I)V

    return-void
.end method

.method private voiceRecordStart()V
    .registers 6

    .prologue
    .line 2367
    :try_start_26
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->setupPathFileName()Ljava/lang/String;

    move-result-object v1

    .line 2368
    .local v1, resultPath:Ljava/lang/String;
    const-string v2, "InCallFragment"

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

    .line 2369
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v2, v1}, Landroid/media/voicerecorder/BaseVoiceRecorder;->start(Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_47} :catch_48

    .line 2379
    .end local v1           #resultPath:Ljava/lang/String;
    :goto_47
    return-void

    .line 2370
    :catch_48
    move-exception v0

    .line 2371
    .local v0, e:Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    const v3, 0x7f0c0304

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_47

    .line 2375
    .end local v0           #e:Ljava/lang/RuntimeException;
.end method


# virtual methods
.method public adjustActiveCallLayout()V
    .registers 4

    .prologue
    .line 4920
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mActiveCall:Landroid/widget/Button;

    if-nez v2, :cond_5

    .line 4929
    :goto_4
    return-void

    .line 4924
    :cond_5
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mActiveCall:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4925
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getmInCallTouchUi()Lcom/android/phone/InCallTouchUi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/InCallTouchUi;->getCompleteTouchUiHeight()I

    move-result v1

    .line 4927
    .local v1, reservedVerticalSpace:I
    add-int/lit8 v2, v1, 0x14

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 4928
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mActiveCall:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4
.end method

.method protected bailOutAfterErrorDialog()V
    .registers 6

    .prologue
    .line 3398
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mGenericErrorDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_c

    .line 3400
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 3401
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/InCallFragment;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 3418
    :cond_c
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 3419
    .local v1, phoneApp:Lcom/android/phone/PhoneApp;
    if-nez v1, :cond_13

    .line 3437
    :cond_12
    :goto_12
    return-void

    .line 3422
    :cond_13
    iget-object v0, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v0, Lcom/android/phone/MSimInCallUiState;

    .line 3424
    .local v0, inCallUiState:Lcom/android/phone/MSimInCallUiState;
    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-virtual {v0, v2}, Lcom/android/phone/MSimInCallUiState;->clearPendingCallStatusCode(I)V

    .line 3433
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->phoneIsInUse()Z

    move-result v2

    if-nez v2, :cond_12

    .line 3434
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    iget v3, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/android/phone/InCallFragment$InCallFragmentListener;->onCloseFragment(IZ)V

    goto :goto_12
.end method

.method protected delayedCleanupAfterDisconnect(Lcom/android/internal/telephony/Phone;)V
    .registers 3
    .parameter "phone"

    .prologue
    .line 4425
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/InCallFragment;->delayedCleanupAfterDisconnect(Lcom/android/internal/telephony/Phone;Z)V

    .line 4426
    return-void
.end method

.method protected delayedCleanupAfterDisconnect(Lcom/android/internal/telephony/Phone;Z)V
    .registers 14
    .parameter "phone"
    .parameter "showToast"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 4429
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delayedCleanupAfterDisconnect()...  Phone state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 4441
    iget-object v7, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 4448
    iget-object v7, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v7, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v2, Lcom/android/phone/MSimInCallUiState;

    .line 4450
    .local v2, mUIState:Lcom/android/phone/MSimInCallUiState;
    const/4 v3, 0x0

    .line 4451
    .local v3, stayHere:Z
    sget-boolean v7, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v7, :cond_4a

    .line 4452
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->phoneIsInUse()Z

    move-result v7

    if-nez v7, :cond_3c

    iget v7, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-virtual {v2, v7}, Lcom/android/phone/MSimInCallUiState;->isProgressIndicationActive(I)Z

    move-result v7

    if-eqz v7, :cond_48

    :cond_3c
    move v3, v6

    .line 4457
    :goto_3d
    if-ne v6, v3, :cond_5a

    .line 4459
    invoke-virtual {p0, v6}, Lcom/android/phone/InCallFragment;->setEndButton(Z)V

    .line 4461
    const-string v5, "- delayedCleanupAfterDisconnect: staying on the InCallScreen..."

    invoke-direct {p0, v5}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 4554
    :goto_47
    return-void

    :cond_48
    move v3, v5

    .line 4452
    goto :goto_3d

    .line 4454
    :cond_4a
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->phoneIsInUse()Z

    move-result v7

    if-nez v7, :cond_56

    invoke-virtual {v2}, Lcom/android/phone/MSimInCallUiState;->isProgressIndicationActive()Z

    move-result v7

    if-eqz v7, :cond_58

    :cond_56
    move v3, v6

    :goto_57
    goto :goto_3d

    :cond_58
    move v3, v5

    goto :goto_57

    .line 4468
    :cond_5a
    iget-object v7, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v7

    if-eqz v7, :cond_ec

    .line 4487
    const-string v7, "- Post-call behavior:"

    invoke-direct {p0, v7}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 4488
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  - mLastDisconnectCause = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/InCallFragment;->mLastDisconnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 4489
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  - isPhoneStateRestricted() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, p1}, Lcom/android/phone/InCallFragment;->isPhoneStateRestricted(Lcom/android/internal/telephony/Phone;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 4501
    iget-object v7, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v7}, Lcom/android/phone/InCallScreen_DSDA;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "hwfeature_endtocall_log"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v6, :cond_ec

    iget-object v7, p0, Lcom/android/phone/InCallFragment;->mLastDisconnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v7, v8, :cond_ec

    iget-object v7, p0, Lcom/android/phone/InCallFragment;->mLastDisconnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v7, v8, :cond_ec

    invoke-virtual {p0, p1}, Lcom/android/phone/InCallFragment;->isPhoneStateRestricted(Lcom/android/internal/telephony/Phone;)Z

    move-result v7

    if-nez v7, :cond_ec

    sget-boolean v7, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-eqz v7, :cond_ec

    iget v7, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    if-nez v7, :cond_125

    move v7, v6

    :goto_c2
    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->hasCallOnSubscription(I)Z

    move-result v7

    if-nez v7, :cond_ec

    .line 4510
    iget-object v7, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->createPhoneEndIntentUsingCallOrigin()Landroid/content/Intent;

    move-result-object v1

    .line 4511
    .local v1, intent:Landroid/content/Intent;
    const/high16 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4513
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- Show Call Log (or Dialtacts) after disconnect. Current intent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 4517
    :try_start_e9
    invoke-virtual {p0, v1}, Lcom/android/phone/InCallFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_ec
    .catch Landroid/content/ActivityNotFoundException; {:try_start_e9 .. :try_end_ec} :catch_127

    .line 4537
    .end local v1           #intent:Landroid/content/Intent;
    :cond_ec
    :goto_ec
    iget-object v7, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    if-eqz v7, :cond_f7

    iget-object v7, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    iget v8, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-interface {v7, v8, v5}, Lcom/android/phone/InCallFragment$InCallFragmentListener;->onCloseFragment(IZ)V

    .line 4540
    :cond_f7
    if-eqz p2, :cond_11d

    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->isVisible()Z

    move-result v7

    if-nez v7, :cond_11d

    .line 4544
    iget-object v7, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget v8, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v7, v8}, Lcom/android/phone/PhoneUtils;->getSimCardDisplayLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 4545
    .local v4, text:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget-object v8, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    const v9, 0x7f0c041f

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v4, v10, v5

    invoke-virtual {v8, v9, v10}, Lcom/android/phone/InCallScreen_DSDA;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 4552
    .end local v4           #text:Ljava/lang/String;
    :cond_11d
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/phone/PhoneApp;->setLatestActiveCallOrigin(Ljava/lang/String;)V

    goto/16 :goto_47

    :cond_125
    move v7, v5

    .line 4501
    goto :goto_c2

    .line 4518
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_127
    move-exception v0

    .line 4525
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v7, "InCallFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "delayedCleanupAfterDisconnect: transition to call log failed; intent = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ec
.end method

.method protected dismissAllDialogs()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1351
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_11

    .line 1352
    const-string v0, "- DISMISSING mMissingVoicemailDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 1353
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1354
    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 1356
    :cond_11
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mGenericErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_21

    .line 1357
    const-string v0, "- DISMISSING mGenericErrorDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 1358
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1359
    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 1361
    :cond_21
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_31

    .line 1362
    const-string v0, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 1363
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1364
    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 1366
    :cond_31
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mWildPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_41

    .line 1367
    const-string v0, "- DISMISSING mWildPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 1368
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1369
    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 1371
    :cond_41
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mExitingECMDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4c

    .line 1373
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1374
    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mExitingECMDialog:Landroid/app/AlertDialog;

    .line 1376
    :cond_4c
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5c

    .line 1377
    const-string v0, "- DISMISSING mSuppServiceFailureDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 1378
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1379
    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 1381
    :cond_5c
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallLostDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6c

    .line 1382
    const-string v0, "- DISMISSING mCallLostDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 1383
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallLostDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1384
    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mCallLostDialog:Landroid/app/AlertDialog;

    .line 1386
    :cond_6c
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mPausePromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_77

    .line 1388
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1389
    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 1392
    :cond_77
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mMmiStartedDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_87

    .line 1393
    const-string v0, "- DISMISSING mMmiStartedDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 1394
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1395
    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mMmiStartedDialog:Landroid/app/Dialog;

    .line 1398
    :cond_87
    return-void
.end method

.method public getManageConferenceGroup(I)Landroid/view/ViewStub;
    .registers 4
    .parameter "id"

    .prologue
    .line 5227
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f07006f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    return-object v0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .registers 2

    .prologue
    .line 2598
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;
    .registers 3

    .prologue
    .line 3560
    const-string v0, "getUpdatedInCallControlState()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 3561
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallControlState:Lcom/android/phone/InCallControlState_DSDA;

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallControlState_DSDA;->update(I)V

    .line 3562
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallControlState:Lcom/android/phone/InCallControlState_DSDA;

    return-object v0
.end method

.method public getUpdatedTabView(Landroid/content/Context;ZZI)Landroid/view/View;
    .registers 18
    .parameter "context"
    .parameter "isSelected"
    .parameter "hasTwoTabs"
    .parameter "sub"

    .prologue
    .line 4976
    iget-object v10, p0, Lcom/android/phone/InCallFragment;->mTabContainer:Landroid/widget/RelativeLayout;

    if-nez v10, :cond_40

    .line 4977
    const-string v10, "layout_inflater"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 4978
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v10, 0x7f040025

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 4980
    .local v9, v:Landroid/view/View;
    const v10, 0x7f0700cd

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    iput-object v10, p0, Lcom/android/phone/InCallFragment;->mTabContainer:Landroid/widget/RelativeLayout;

    .line 4981
    const v10, 0x7f0700ce

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/android/phone/InCallFragment;->mCallTypeImage:Landroid/widget/ImageView;

    .line 4983
    const v10, 0x7f0700cf

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/phone/InCallFragment;->mCallTypeView:Landroid/widget/TextView;

    .line 4984
    const v10, 0x7f0700d0

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/phone/InCallFragment;->mCallTimeView:Landroid/widget/TextView;

    .line 4987
    .end local v5           #inflater:Landroid/view/LayoutInflater;
    .end local v9           #v:Landroid/view/View;
    :cond_40
    iget-object v10, p0, Lcom/android/phone/InCallFragment;->mCallTypeView:Landroid/widget/TextView;

    move/from16 v0, p4

    invoke-static {p1, v0}, Lcom/android/phone/PhoneUtils;->getSimCardDisplayLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4989
    if-nez p3, :cond_5e

    .line 4991
    iget-object v10, p0, Lcom/android/phone/InCallFragment;->mCallTypeImage:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4992
    iget-object v10, p0, Lcom/android/phone/InCallFragment;->mCallTimeView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4993
    iget-object v10, p0, Lcom/android/phone/InCallFragment;->mTabContainer:Landroid/widget/RelativeLayout;

    .line 5045
    :goto_5d
    return-object v10

    .line 4996
    :cond_5e
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    iget-object v2, v10, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 4998
    .local v2, cm:Lcom/android/internal/telephony/CallManager;
    if-nez p4, :cond_8d

    const/4 v1, 0x1

    .line 4999
    .local v1, altSub:I
    :goto_67
    move/from16 v0, p4

    invoke-static {v2, v0}, Lcom/android/phone/PhoneUtils;->hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v8

    .line 5000
    .local v8, isRingingCall:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v10

    move/from16 v0, p4

    if-ne v10, v0, :cond_8f

    const/4 v6, 0x1

    .line 5002
    .local v6, isActiveCall:Z
    :goto_7a
    if-eqz p2, :cond_91

    .line 5005
    iget-object v10, p0, Lcom/android/phone/InCallFragment;->mCallTypeImage:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5006
    iget-object v10, p0, Lcom/android/phone/InCallFragment;->mCallTimeView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5045
    :goto_8a
    iget-object v10, p0, Lcom/android/phone/InCallFragment;->mTabContainer:Landroid/widget/RelativeLayout;

    goto :goto_5d

    .line 4998
    .end local v1           #altSub:I
    .end local v6           #isActiveCall:Z
    .end local v8           #isRingingCall:Z
    :cond_8d
    const/4 v1, 0x0

    goto :goto_67

    .line 5000
    .restart local v1       #altSub:I
    .restart local v8       #isRingingCall:Z
    :cond_8f
    const/4 v6, 0x0

    goto :goto_7a

    .line 5012
    .restart local v6       #isActiveCall:Z
    :cond_91
    iget v10, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->hasDialingCallImpl(I)Z

    move-result v7

    .line 5013
    .local v7, isDialingCall:Z
    if-eqz v8, :cond_b4

    .line 5014
    iget-object v10, p0, Lcom/android/phone/InCallFragment;->mCallTypeImage:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5015
    iget-object v10, p0, Lcom/android/phone/InCallFragment;->mCallTypeImage:Landroid/widget/ImageView;

    iget v11, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    sget-object v12, Lcom/android/phone/PhoneApp$CallState;->RINGING:Lcom/android/phone/PhoneApp$CallState;

    invoke-static {v11, v12}, Lcom/android/phone/PhoneUtils;->getImageResourceForState(ILcom/android/phone/PhoneApp$CallState;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5016
    iget-object v10, p0, Lcom/android/phone/InCallFragment;->mCallTimeView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8a

    .line 5017
    :cond_b4
    if-eqz v7, :cond_d1

    .line 5018
    iget-object v10, p0, Lcom/android/phone/InCallFragment;->mCallTypeImage:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5019
    iget-object v10, p0, Lcom/android/phone/InCallFragment;->mCallTypeImage:Landroid/widget/ImageView;

    iget v11, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    sget-object v12, Lcom/android/phone/PhoneApp$CallState;->DIALING:Lcom/android/phone/PhoneApp$CallState;

    invoke-static {v11, v12}, Lcom/android/phone/PhoneUtils;->getImageResourceForState(ILcom/android/phone/PhoneApp$CallState;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5020
    iget-object v10, p0, Lcom/android/phone/InCallFragment;->mCallTimeView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8a

    .line 5021
    :cond_d1
    if-eqz v6, :cond_10d

    .line 5024
    move/from16 v0, p4

    invoke-static {v2, v0}, Lcom/android/phone/PhoneUtils;->hasHoldCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v4

    .line 5026
    .local v4, hasHoldCall:Z
    move/from16 v0, p4

    invoke-static {v2, v0}, Lcom/android/phone/PhoneUtils;->hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v3

    .line 5027
    .local v3, hasActiveCall:Z
    if-eqz v4, :cond_fe

    if-nez v3, :cond_fe

    .line 5029
    iget-object v10, p0, Lcom/android/phone/InCallFragment;->mCallTypeImage:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5030
    iget-object v10, p0, Lcom/android/phone/InCallFragment;->mCallTypeImage:Landroid/widget/ImageView;

    iget v11, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    sget-object v12, Lcom/android/phone/PhoneApp$CallState;->HOLD:Lcom/android/phone/PhoneApp$CallState;

    invoke-static {v11, v12}, Lcom/android/phone/PhoneUtils;->getImageResourceForState(ILcom/android/phone/PhoneApp$CallState;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5031
    iget-object v10, p0, Lcom/android/phone/InCallFragment;->mCallTimeView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8a

    .line 5033
    :cond_fe
    iget-object v10, p0, Lcom/android/phone/InCallFragment;->mCallTypeImage:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5034
    iget-object v10, p0, Lcom/android/phone/InCallFragment;->mCallTimeView:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8a

    .line 5038
    .end local v3           #hasActiveCall:Z
    .end local v4           #hasHoldCall:Z
    :cond_10d
    iget-object v10, p0, Lcom/android/phone/InCallFragment;->mCallTypeImage:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5039
    iget-object v10, p0, Lcom/android/phone/InCallFragment;->mCallTypeImage:Landroid/widget/ImageView;

    iget v11, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    sget-object v12, Lcom/android/phone/PhoneApp$CallState;->HOLD:Lcom/android/phone/PhoneApp$CallState;

    invoke-static {v11, v12}, Lcom/android/phone/PhoneUtils;->getImageResourceForState(ILcom/android/phone/PhoneApp$CallState;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5040
    iget-object v10, p0, Lcom/android/phone/InCallFragment;->mCallTimeView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8a
.end method

.method public getmCallCard()Lcom/android/phone/CallCard;
    .registers 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;

    return-object v0
.end method

.method public getmDialer()Lcom/android/phone/DTMFTwelveKeyDialer;
    .registers 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    return-object v0
.end method

.method public getmDialerView()Lcom/android/phone/DTMFTwelveKeyDialerView;
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    return-object v0
.end method

.method public getmInCallControlState()Lcom/android/phone/InCallControlState;
    .registers 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallControlState:Lcom/android/phone/InCallControlState_DSDA;

    return-object v0
.end method

.method public getmInCallPanel()Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallPanel:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getmInCallTouchUi()Lcom/android/phone/InCallTouchUi;
    .registers 2

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi_DSDA;

    return-object v0
.end method

.method public getmManageConferenceUtils()Lcom/android/phone/ManageConferenceUtils;
    .registers 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils_DSDA;

    return-object v0
.end method

.method public getmParent()Lcom/android/phone/InCallScreen_DSDA;
    .registers 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    return-object v0
.end method

.method public getmRespondViaSmsManager()Lcom/android/phone/RespondViaSmsManager_DSDA;
    .registers 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager_DSDA;

    return-object v0
.end method

.method public getmSubscription()I
    .registers 2

    .prologue
    .line 389
    iget v0, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    return v0
.end method

.method handleCallKey()Z
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 2721
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v6, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v5, v6}, Lcom/android/phone/PhoneUtils;->hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v3

    .line 2722
    .local v3, hasRingingCall:Z
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v6, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v5, v6}, Lcom/android/phone/PhoneUtils;->hasActiveCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v1

    .line 2723
    .local v1, hasActiveCall:Z
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v6, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v5, v6}, Lcom/android/phone/PhoneUtils;->hasHoldCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v2

    .line 2726
    .local v2, hasHoldingCall:Z
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 2727
    .local v4, phoneType:I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_4a

    .line 2731
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v5}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    .line 2733
    .local v0, currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    if-eqz v3, :cond_34

    .line 2736
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->internalAnswerCall()V

    .line 2799
    .end local v0           #currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_33
    :goto_33
    return v7

    .line 2738
    .restart local v0       #currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_34
    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v5, :cond_42

    if-eqz v1, :cond_42

    .line 2743
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v6, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v5, v6}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;I)V

    goto :goto_33

    .line 2744
    :cond_42
    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v5, :cond_33

    .line 2748
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->internalSwapCalls()V

    goto :goto_33

    .line 2750
    .end local v0           #currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_4a
    if-eq v4, v7, :cond_4f

    const/4 v5, 0x3

    if-ne v4, v5, :cond_78

    .line 2752
    :cond_4f
    if-eqz v3, :cond_5c

    .line 2763
    const-string v5, "InCallFragment"

    const-string v6, "handleCallKey: incoming call is ringing! (PhoneWindowManager should have handled this key.)"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2769
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->internalAnswerCall()V

    goto :goto_33

    .line 2770
    :cond_5c
    if-eqz v1, :cond_64

    if-eqz v2, :cond_64

    .line 2773
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->internalSwapCalls()V

    goto :goto_33

    .line 2774
    :cond_64
    if-eqz v2, :cond_72

    .line 2779
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v6, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v5, v6}, Lcom/android/phone/PhoneUtils;->getFirstActiveBgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_33

    .line 2790
    :cond_72
    const-string v5, "handleCallKey: call in foregound ==> ignoring."

    invoke-direct {p0, v5}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    goto :goto_33

    .line 2794
    :cond_78
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

.method handleOnscreenButtonClick(I)V
    .registers 5
    .parameter "id"

    .prologue
    .line 2633
    sparse-switch p1, :sswitch_data_62

    .line 2685
    const-string v0, "InCallFragment"

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

    .line 2690
    :goto_1b
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 2708
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateInCallTouchUi()V

    .line 2709
    return-void

    .line 2636
    :sswitch_24
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->internalAnswerCall()V

    goto :goto_1b

    .line 2639
    :sswitch_28
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->hangupRingingCall()V

    goto :goto_1b

    .line 2642
    :sswitch_2c
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->internalRespondViaSms()V

    goto :goto_1b

    .line 2647
    :sswitch_30
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->onHoldClick()V

    goto :goto_1b

    .line 2650
    :sswitch_34
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->internalSwapCalls()V

    goto :goto_1b

    .line 2653
    :sswitch_38
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->internalHangup()V

    goto :goto_1b

    .line 2657
    :sswitch_3c
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->internalHangup()V

    goto :goto_1b

    .line 2661
    :sswitch_40
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->onShowHideDialpad()V

    goto :goto_1b

    .line 2664
    :sswitch_44
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->onMuteClick()V

    goto :goto_1b

    .line 2671
    :sswitch_48
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->startNewCall(Lcom/android/internal/telephony/CallManager;I)V

    goto :goto_1b

    .line 2676
    :sswitch_50
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;I)V

    goto :goto_1b

    .line 2680
    :sswitch_58
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 2681
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->requestUpdateScreen()V

    goto :goto_1b

    .line 2633
    nop

    :sswitch_data_62
    .sparse-switch
        0x7f070008 -> :sswitch_24
        0x7f070009 -> :sswitch_28
        0x7f07000a -> :sswitch_2c
        0x7f070079 -> :sswitch_58
        0x7f07007c -> :sswitch_50
        0x7f07007f -> :sswitch_38
        0x7f070080 -> :sswitch_40
        0x7f070082 -> :sswitch_44
        0x7f070083 -> :sswitch_30
        0x7f070084 -> :sswitch_34
        0x7f070086 -> :sswitch_48
        0x7f070087 -> :sswitch_50
        0x7f0700a9 -> :sswitch_3c
    .end sparse-switch
.end method

.method hangupRingingCall()V
    .registers 3

    .prologue
    .line 3718
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    .line 3721
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getFirstRingingCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 3722
    return-void
.end method

.method hideDialpadInternal(Z)V
    .registers 10
    .parameter "animate"

    .prologue
    .line 1105
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-static {v5}, Lcom/android/phone/InCallFragment;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 1106
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1107
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen_DSDA;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1108
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1109
    .local v4, screenWidth:I
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1111
    .local v3, screenHeight:I
    if-le v4, v3, :cond_56

    .line 1112
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;

    iget-object v6, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5, v6}, Lcom/android/phone/CallCard_DSDA;->getCallerinfo(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 1113
    .local v1, info:Lcom/android/internal/telephony/CallerInfo;
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    const v6, 0x7f070056

    invoke-virtual {v5, v6}, Lcom/android/phone/InCallScreen_DSDA;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/phone/InCallContactPhoto;

    iput-object v5, p0, Lcom/android/phone/InCallFragment;->dtmfphoto:Lcom/android/phone/InCallContactPhoto;

    .line 1114
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->dtmfphoto:Lcom/android/phone/InCallContactPhoto;

    if-eqz v5, :cond_40

    .line 1115
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->dtmfphoto:Lcom/android/phone/InCallContactPhoto;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/phone/InCallContactPhoto;->setVisibility(I)V

    .line 1118
    :cond_40
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    const v6, 0x7f070057

    invoke-virtual {v5, v6}, Lcom/android/phone/InCallScreen_DSDA;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/phone/InCallFragment;->mDialPadViewLeft_Banner:Landroid/view/ViewGroup;

    .line 1119
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mDialPadViewLeft_Banner:Landroid/view/ViewGroup;

    if-eqz v5, :cond_56

    .line 1120
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mDialPadViewLeft_Banner:Landroid/view/ViewGroup;

    invoke-static {v5}, Lcom/android/phone/InCallFragment;->hideVG(Landroid/view/ViewGroup;)V

    .line 1125
    .end local v0           #dm:Landroid/util/DisplayMetrics;
    .end local v1           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v3           #screenHeight:I
    .end local v4           #screenWidth:I
    :cond_56
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    invoke-virtual {v5, p1}, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;->closeDialer(Z)V

    .line 1129
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v5, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v2, Lcom/android/phone/MSimInCallUiState;

    .line 1130
    .local v2, mUIState:Lcom/android/phone/MSimInCallUiState;
    iget-object v5, v2, Lcom/android/phone/MSimInCallUiState;->mSimShowDialpad:[Z

    iget v6, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    const/4 v7, 0x0

    aput-boolean v7, v5, v6

    .line 1133
    return-void
.end method

.method isDialerOpened()Z
    .registers 2

    .prologue
    .line 1828
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;->isOpened()Z

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
    .registers 4

    .prologue
    .line 3728
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v0, Lcom/android/phone/MSimInCallUiState;

    .line 3729
    .local v0, mUIState:Lcom/android/phone/MSimInCallUiState;
    iget-object v1, v0, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v1, v2, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public isPhoneStateRestricted()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 4585
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getServiceState()I

    move-result v0

    .line 4586
    .local v0, serviceState:I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_18

    if-eq v0, v1, :cond_18

    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

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

    .line 4568
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 4569
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

.method okToShowInCallTouchUi()Z
    .registers 4

    .prologue
    .line 2621
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v0, Lcom/android/phone/MSimInCallUiState;

    .line 2623
    .local v0, mUIState:Lcom/android/phone/MSimInCallUiState;
    iget-object v1, v0, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v1, v2, :cond_1a

    iget-object v1, v0, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v1, v2, :cond_1c

    :cond_1a
    const/4 v1, 0x1

    :goto_1b
    return v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 438
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 440
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InCallScreen_DSDA;

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    .line 441
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget-object v0, v0, Lcom/android/phone/InCallScreen_DSDA;->mApp:Lcom/android/phone/PhoneApp;

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    .line 442
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget-object v0, v0, Lcom/android/phone/InCallScreen_DSDA;->mPhone:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 443
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget-object v0, v0, Lcom/android/phone/InCallScreen_DSDA;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 444
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    .line 3518
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 3519
    .local v0, id:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick(View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 3521
    packed-switch v0, :pswitch_data_a4

    .line 3535
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v2, Lcom/android/phone/MSimInCallUiState;

    iget-object v2, v2, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    iget v3, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    aget-object v1, v2, v3

    .line 3536
    .local v1, incallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;
    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v1, v2, :cond_41

    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v1, v2, :cond_78

    :cond_41
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v2, :cond_78

    .line 3540
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v2, v0}, Lcom/android/phone/OtaUtils;->onClickHandler(I)V

    .line 3552
    .end local v1           #incallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;
    :goto_4e
    const v3, 0x1129f

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_a1

    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    :goto_5f
    aput-object v2, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3556
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 3557
    return-void

    .line 3523
    .restart local p1
    :pswitch_6a
    const-string v2, "onClick: mButtonManageConferenceDone..."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 3525
    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v2}, Lcom/android/phone/InCallFragment;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 3526
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->requestUpdateScreen()V

    goto :goto_4e

    .line 3546
    .restart local v1       #incallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;
    :cond_78
    const-string v2, "InCallFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick: unexpected click from ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (View = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 3552
    .end local v1           #incallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;
    :cond_a1
    const-string v2, ""

    goto :goto_5f

    .line 3521
    :pswitch_data_a4
    .packed-switch 0x7f0700a0
        :pswitch_6a
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 466
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 468
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_7b

    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "subscription"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_14
    iput v0, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    .line 469
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 470
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-virtual {v0, v2, p0}, Lcom/android/phone/PhoneApp;->setInCallFragmentInstance(ILcom/android/phone/InCallFragment;)V

    .line 476
    const-string v0, "InCallFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate()->CAN_VOICE_RECORD = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/phone/InCallFragment;->CAN_VOICE_RECORD:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    sget-boolean v0, Lcom/android/phone/InCallFragment;->CAN_VOICE_RECORD:Z

    if-eqz v0, :cond_48

    .line 478
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->initVoiceRecord()V

    .line 482
    :cond_48
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->initChildControls()V

    .line 485
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->registerForLineControlInfo()V

    .line 487
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->registerForPhoneStates()V

    .line 493
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "hw_vibrate_on"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v1, v0, :cond_62

    .line 494
    iput-boolean v1, p0, Lcom/android/phone/InCallFragment;->mHwVibrate:Z

    .line 498
    :cond_62
    invoke-virtual {p0, v1}, Lcom/android/phone/InCallFragment;->setHasOptionsMenu(Z)V

    .line 500
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    .line 503
    new-instance v0, Lcom/android/phone/InCallFragment$SubChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/InCallFragment$SubChangeListener;-><init>(Lcom/android/phone/InCallFragment;Lcom/android/phone/InCallFragment$1;)V

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mSubChangeListener:Lcom/android/phone/MSimPhoneApp$SubscriptionChangeListener;

    .line 504
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mSubChangeListener:Lcom/android/phone/MSimPhoneApp$SubscriptionChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->setSubscriptionListener(Lcom/android/phone/MSimPhoneApp$SubscriptionChangeListener;)V

    .line 506
    return-void

    :cond_7b
    move v0, v1

    .line 468
    goto :goto_14
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 511
    const v1, 0x7f040017

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 512
    .local v0, v:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->initInCallFragment(Landroid/view/View;)V

    .line 513
    return-object v0
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 534
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 536
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->resetInCallFragmentInstance(I)V

    .line 539
    sget-boolean v0, Lcom/android/phone/InCallFragment;->CAN_VOICE_RECORD:Z

    if-eqz v0, :cond_1d

    .line 540
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mSdReceiver:Lcom/android/phone/InCallFragment$SdReceiver;

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen_DSDA;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 541
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v0}, Landroid/media/voicerecorder/BaseVoiceRecorder;->unregisterForNotifications()V

    .line 542
    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    .line 548
    :cond_1d
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;

    if-eqz v0, :cond_29

    .line 549
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;

    move-object v0, v1

    check-cast v0, Lcom/android/phone/InCallFragment;

    invoke-virtual {v2, v0}, Lcom/android/phone/CallCard_DSDA;->setInCallScreenInstance(Lcom/android/phone/InCallFragment;)V

    .line 551
    :cond_29
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi_DSDA;

    if-eqz v0, :cond_35

    .line 552
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi_DSDA;

    move-object v0, v1

    check-cast v0, Lcom/android/phone/InCallFragment;

    invoke-virtual {v2, v0}, Lcom/android/phone/InCallTouchUi_DSDA;->setInCallScreenInstance(Lcom/android/phone/InCallFragment;)V

    .line 554
    :cond_35
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager_DSDA;

    if-eqz v0, :cond_41

    .line 555
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager_DSDA;

    move-object v0, v1

    check-cast v0, Lcom/android/phone/InCallFragment;

    invoke-virtual {v2, v0}, Lcom/android/phone/RespondViaSmsManager_DSDA;->setInCallScreenInstance(Lcom/android/phone/InCallFragment;)V

    .line 558
    :cond_41
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;->clearInCallScreenReference()V

    .line 559
    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    .line 562
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->unregisterForLineControllInfo()V

    .line 565
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->unregisterForPhoneStates()V

    .line 568
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 570
    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    .line 573
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mSubChangeListener:Lcom/android/phone/MSimPhoneApp$SubscriptionChangeListener;

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->removeSubscriptionListenr(Lcom/android/phone/MSimPhoneApp$SubscriptionChangeListener;)V

    .line 574
    iput-object v1, p0, Lcom/android/phone/InCallFragment;->mSubChangeListener:Lcom/android/phone/MSimPhoneApp$SubscriptionChangeListener;

    .line 576
    return-void
.end method

.method public onDetach()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 448
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 450
    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    .line 451
    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    .line 452
    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 453
    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 455
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/phone/InCallFragment$InCallFragmentListener;->onFragmentDetached(Ljava/lang/String;)V

    .line 458
    :cond_19
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager_DSDA;

    if-eqz v0, :cond_22

    .line 459
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/RespondViaSmsManager_DSDA;->dismissPopup()V

    .line 462
    :cond_22
    return-void
.end method

.method onDialerClose()V
    .registers 4

    .prologue
    .line 3117
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v0, Lcom/android/phone/MSimInCallUiState;

    .line 3120
    .local v0, mUIState:Lcom/android/phone/MSimInCallUiState;
    iget-object v1, v0, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v1, v2, :cond_2a

    iget-object v1, v0, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v1, v2, :cond_2a

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v1, v2, :cond_37

    .line 3125
    :cond_2a
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v1, :cond_37

    .line 3126
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v1}, Lcom/android/phone/OtaUtils;->otaShowProperScreen()V

    .line 3131
    :cond_37
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateInCallTouchUi()V

    .line 3135
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateDialpadVisibility()V

    .line 3138
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 3139
    return-void
.end method

.method onDialerOpen()V
    .registers 4

    .prologue
    .line 3091
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateInCallTouchUi()V

    .line 3094
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateDialpadVisibility()V

    .line 3097
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 3102
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v0, Lcom/android/phone/MSimInCallUiState;

    .line 3104
    .local v0, mUIState:Lcom/android/phone/MSimInCallUiState;
    iget-object v1, v0, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v1, v2, :cond_25

    iget-object v1, v0, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v1, v2, :cond_32

    :cond_25
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v1, :cond_32

    .line 3107
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v1}, Lcom/android/phone/OtaUtils;->hideOtaScreen()V

    .line 3109
    :cond_32
    return-void
.end method

.method protected onMMIInitiate(Landroid/os/AsyncResult;)V
    .registers 7
    .parameter "r"

    .prologue
    .line 2197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMMIInitiate()...  AsyncResult r = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 2198
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 2205
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget-boolean v3, v3, Lcom/android/phone/InCallScreen_DSDA;->mIsForegroundActivity:Z

    if-eqz v3, :cond_26

    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->isVisible()Z

    move-result v3

    if-nez v3, :cond_2c

    .line 2206
    :cond_26
    const-string v3, "Activity not in foreground! Bailing out..."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 2227
    :goto_2b
    return-void

    .line 2214
    :cond_2c
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->dismissAllDialogs()V

    .line 2216
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/MmiCode;

    .line 2217
    .local v1, mmiCode:Lcom/android/internal/telephony/MmiCode;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - MmiCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 2221
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    const v4, 0x7f07001d

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallScreen_DSDA;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2224
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x35

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2225
    .local v0, message:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-static {v3, v1, v0, v4}, Lcom/android/phone/PhoneUtils;->displayMMIInitiate(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/InCallFragment;->mMmiStartedDialog:Landroid/app/Dialog;

    goto :goto_2b
.end method

.method onMuteClick()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3739
    iget v4, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->getMute(I)Z

    move-result v4

    if-nez v4, :cond_2e

    move v0, v2

    .line 3740
    .local v0, newMuteState:Z
    :goto_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMuteClick(): old MuteState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 3743
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v4

    iget v5, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    if-eq v4, v5, :cond_30

    .line 3756
    :cond_2d
    :goto_2d
    return-void

    .end local v0           #newMuteState:Z
    :cond_2e
    move v0, v3

    .line 3739
    goto :goto_b

    .line 3746
    .restart local v0       #newMuteState:Z
    :cond_30
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mInCallControlState:Lcom/android/phone/InCallControlState_DSDA;

    invoke-virtual {v4}, Lcom/android/phone/InCallControlState_DSDA;->getUserMute()Z

    move-result v1

    .line 3747
    .local v1, userMute:Z
    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mInCallControlState:Lcom/android/phone/InCallControlState_DSDA;

    if-nez v1, :cond_3b

    move v3, v2

    :cond_3b
    invoke-virtual {v4, v3}, Lcom/android/phone/InCallControlState_DSDA;->setUserMute(Z)V

    .line 3749
    iget v3, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtils;->setMute(ZI)V

    .line 3752
    iget v3, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    if-ne v2, v3, :cond_2d

    .line 3753
    sput-boolean v0, Lcom/android/phone/InCallFragment;->mUserSetMute:Z

    goto :goto_2d
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    .line 827
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 828
    .local v0, id:I
    const-string v1, "InCallFragment"

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

    .line 829
    packed-switch v0, :pswitch_data_2a

    .line 835
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_23
    return v1

    .line 831
    :pswitch_24
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->voiceRecordClick()V

    .line 832
    const/4 v1, 0x1

    goto :goto_23

    .line 829
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_24
    .end packed-switch
.end method

.method public onPause()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 580
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 582
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v0, Lcom/android/phone/MSimInCallUiState;

    .line 583
    .local v0, mUIState:Lcom/android/phone/MSimInCallUiState;
    iget-object v1, v0, Lcom/android/phone/MSimInCallUiState;->mSimProviderOverlayVisible:[Z

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    aput-boolean v3, v1, v2

    .line 586
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateProviderOverlay()V

    .line 590
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils_DSDA;

    invoke-virtual {v1}, Lcom/android/phone/ManageConferenceUtils_DSDA;->stopConferenceTime()V

    .line 594
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getmDialer()Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    .line 598
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getmDialer()Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopDialerSession()V

    .line 601
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;

    if-eqz v1, :cond_30

    .line 602
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;

    invoke-virtual {v1}, Lcom/android/phone/CallCard_DSDA;->onPause()V

    .line 628
    :cond_30
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_54

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_54

    .line 630
    const-string v1, "DELAYED_CLEANUP_AFTER_DISCONNECT detected, moving UI to background."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 631
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    if-eqz v1, :cond_54

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-interface {v1, v2, v3}, Lcom/android/phone/InCallFragment$InCallFragmentListener;->onCloseFragment(IZ)V

    .line 634
    :cond_54
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->dismissAllDialogs()V

    .line 639
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen_DSDA;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 640
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 6
    .parameter "menu"

    .prologue
    const v3, 0x7f0c02f8

    const/4 v2, 0x0

    .line 802
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 803
    const/4 v1, 0x1

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 805
    .local v0, menuItem:Landroid/view/MenuItem;
    sget-boolean v1, Lcom/android/phone/InCallFragment;->CAN_VOICE_RECORD:Z

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mInCallControlState:Lcom/android/phone/InCallControlState_DSDA;

    iget-boolean v1, v1, Lcom/android/phone/InCallControlState;->canVoiceRecord:Z

    if-eqz v1, :cond_55

    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->okToShowInCallTouchUi()Z

    move-result v1

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mInCallControlState:Lcom/android/phone/InCallControlState_DSDA;

    iget-boolean v1, v1, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-nez v1, :cond_55

    .line 807
    const-string v1, "InCallFragment"

    const-string v2, "onPrepareOptionsMenu()->can record voice"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    if-eqz v1, :cond_49

    .line 809
    const-string v1, "InCallFragment"

    const-string v2, "onPrepareOptionsMenu()->tell if it is recording"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v1}, Landroid/media/voicerecorder/BaseVoiceRecorder;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 811
    const-string v1, "InCallFragment"

    const-string v2, "onPrepareOptionsMenu()->start recording"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    const v1, 0x7f0c02fa

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 823
    :cond_49
    :goto_49
    return-void

    .line 814
    :cond_4a
    const-string v1, "InCallFragment"

    const-string v2, "onPrepareOptionsMenu()->stop recording"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_49

    .line 819
    :cond_55
    const-string v1, "InCallFragment"

    const-string v2, "onPrepareOptionsMenu()->can not record voice"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 821
    const/4 v0, 0x0

    goto :goto_49
.end method

.method public onResume()V
    .registers 10

    .prologue
    const/4 v7, 0x0

    .line 644
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 647
    const/4 v2, 0x0

    .line 648
    .local v2, inOtaCall:Z
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v5}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 649
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->checkOtaspStateOnResume()Z

    move-result v2

    .line 652
    :cond_11
    if-nez v2, :cond_18

    .line 654
    sget-object v5, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v5}, Lcom/android/phone/InCallFragment;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 659
    :cond_18
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;

    if-eqz v5, :cond_21

    .line 660
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;

    invoke-virtual {v5}, Lcom/android/phone/CallCard_DSDA;->refreshTime()V

    .line 664
    :cond_21
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v5, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v3, Lcom/android/phone/MSimInCallUiState;

    .line 665
    .local v3, mUIState:Lcom/android/phone/MSimInCallUiState;
    iget-object v5, v3, Lcom/android/phone/MSimInCallUiState;->mSimShowDialpad:[Z

    iget v6, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_7c

    .line 666
    invoke-direct {p0, v7}, Lcom/android/phone/InCallFragment;->showDialpadInternal(Z)V

    .line 673
    :goto_32
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateActiveCallButtonState()V

    .line 685
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager_DSDA;

    if-eqz v5, :cond_3e

    .line 686
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mRespondViaSmsManager:Lcom/android/phone/RespondViaSmsManager_DSDA;

    invoke-virtual {v5}, Lcom/android/phone/RespondViaSmsManager_DSDA;->dismissPopup()V

    .line 703
    :cond_3e
    const/4 v0, 0x0

    .line 705
    .local v0, handledStartupError:Z
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v5, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v1, Lcom/android/phone/MSimInCallUiState;

    .line 708
    .local v1, inCallUiState:Lcom/android/phone/MSimInCallUiState;
    iget v5, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-virtual {v1, v5}, Lcom/android/phone/MSimInCallUiState;->hasPendingCallStatusCode(I)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 710
    iget v5, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-virtual {v1, v5}, Lcom/android/phone/MSimInCallUiState;->getPendingCallStatusCode(I)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InCallFragment;->showStatusIndication(Lcom/android/phone/Constants$CallStatusCode;)V

    .line 715
    const/4 v0, 0x1

    .line 726
    :goto_57
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget-object v6, p0, Lcom/android/phone/InCallFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Lcom/android/phone/InCallScreen_DSDA;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 732
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 735
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->syncWithPhoneState()Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;

    move-result-object v4

    .line 740
    .local v4, status:Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;
    sget-object v5, Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;->SUCCESS:Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;

    if-eq v4, v5, :cond_9d

    .line 749
    if-eqz v0, :cond_86

    .line 754
    const-string v5, "InCallFragment"

    const-string v6, "  ==> syncWithPhoneState failed, but staying here anyway."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :cond_7b
    :goto_7b
    return-void

    .line 668
    .end local v0           #handledStartupError:Z
    .end local v1           #inCallUiState:Lcom/android/phone/MSimInCallUiState;
    .end local v4           #status:Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;
    :cond_7c
    invoke-virtual {p0, v7}, Lcom/android/phone/InCallFragment;->hideDialpadInternal(Z)V

    goto :goto_32

    .line 719
    .restart local v0       #handledStartupError:Z
    .restart local v1       #inCallUiState:Lcom/android/phone/MSimInCallUiState;
    :cond_80
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;

    invoke-virtual {v5}, Lcom/android/phone/DTMFTwelveKeyDialer_DSDA;->startDialerSession()V

    goto :goto_57

    .line 769
    .restart local v4       #status:Lcom/android/phone/InCallFragment$SyncWithPhoneStateStatus;
    :cond_86
    const-string v5, "InCallFragment"

    const-string v6, "  ==> syncWithPhoneState failed; bailing out!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->dismissAllDialogs()V

    .line 772
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    if-eqz v5, :cond_7b

    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    iget v6, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Lcom/android/phone/InCallFragment$InCallFragmentListener;->onCloseFragment(IZ)V

    goto :goto_7b

    .line 775
    :cond_9d
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v5}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 776
    iget-object v5, v1, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    iget v6, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    aget-object v5, v5, v6

    sget-object v6, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v5, v6, :cond_b9

    iget-object v5, v1, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    iget v6, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    aget-object v5, v5, v6

    sget-object v6, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v5, v6, :cond_7b

    .line 778
    :cond_b9
    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mInCallPanel:Landroid/view/ViewGroup;

    if-eqz v5, :cond_c4

    iget-object v5, p0, Lcom/android/phone/InCallFragment;->mInCallPanel:Landroid/view/ViewGroup;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 779
    :cond_c4
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->updateScreen()V

    goto :goto_7b
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 788
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 790
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->stopTimer()V

    .line 793
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;

    if-eqz v0, :cond_f

    .line 794
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/CallCard_DSDA;->resetElapsedTime()V

    .line 796
    :cond_f
    return-void
.end method

.method onSuppServiceFailed(Landroid/os/AsyncResult;)V
    .registers 8
    .parameter "r"

    .prologue
    const/4 v5, 0x0

    .line 3816
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v2, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/Phone$SuppService;

    .line 3820
    .local v2, service:Lcom/android/internal/telephony/Phone$SuppService;
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v3, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/Phone;

    move-object v1, v3

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 3822
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    iget v3, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v4

    if-eq v3, v4, :cond_1d

    .line 3892
    :goto_1c
    return-void

    .line 3829
    :cond_1d
    sget-object v3, Lcom/android/phone/InCallFragment$17;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_76

    .line 3870
    const v0, 0x7f0c01cd

    .line 3878
    .local v0, errorMessageResId:I
    :goto_2b
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_36

    .line 3880
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 3882
    iput-object v5, p0, Lcom/android/phone/InCallFragment;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 3885
    :cond_36
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c002d

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/InCallFragment;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 3889
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 3891
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_1c

    .line 3833
    .end local v0           #errorMessageResId:I
    :pswitch_5e
    const v0, 0x7f0c01ce

    .line 3834
    .restart local v0       #errorMessageResId:I
    goto :goto_2b

    .line 3839
    .end local v0           #errorMessageResId:I
    :pswitch_62
    const v0, 0x7f0c01cf

    .line 3840
    .restart local v0       #errorMessageResId:I
    goto :goto_2b

    .line 3846
    .end local v0           #errorMessageResId:I
    :pswitch_66
    const v0, 0x7f0c01d0

    .line 3847
    .restart local v0       #errorMessageResId:I
    goto :goto_2b

    .line 3852
    .end local v0           #errorMessageResId:I
    :pswitch_6a
    const v0, 0x7f0c01d1

    .line 3853
    .restart local v0       #errorMessageResId:I
    goto :goto_2b

    .line 3858
    .end local v0           #errorMessageResId:I
    :pswitch_6e
    const v0, 0x7f0c01d2

    .line 3859
    .restart local v0       #errorMessageResId:I
    goto :goto_2b

    .line 3863
    .end local v0           #errorMessageResId:I
    :pswitch_72
    const v0, 0x7f0c01d3

    .line 3864
    .restart local v0       #errorMessageResId:I
    goto :goto_2b

    .line 3829
    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_62
        :pswitch_66
        :pswitch_6a
        :pswitch_6e
        :pswitch_72
    .end packed-switch
.end method

.method public onVoiceRecorderEvent(I)V
    .registers 10
    .parameter "event"

    .prologue
    const v3, 0x7f0c0304

    const v7, 0x7f0c0300

    const v4, 0x7f0c02ff

    const/4 v6, 0x0

    .line 2465
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    if-nez v2, :cond_f

    .line 2591
    :cond_e
    :goto_e
    return-void

    .line 2470
    :cond_f
    sparse-switch p1, :sswitch_data_136

    .line 2577
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 2579
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2588
    :goto_26
    const/16 v2, 0x121

    if-eq p1, v2, :cond_e

    .line 2589
    iput-boolean v6, p0, Lcom/android/phone/InCallFragment;->mIsRecording:Z

    goto :goto_e

    .line 2475
    :sswitch_2d
    const/16 v2, 0x23

    invoke-direct {p0, v2}, Lcom/android/phone/InCallFragment;->startTone(C)V

    .line 2476
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->stopTone()V

    .line 2477
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/phone/InCallFragment;->mIsRecording:Z

    goto :goto_26

    .line 2484
    :sswitch_39
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 2486
    iget-boolean v2, p0, Lcom/android/phone/InCallFragment;->mEjectSdError:Z

    if-eqz v2, :cond_5a

    .line 2487
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v3}, Landroid/media/voicerecorder/BaseVoiceRecorder;->getRecordFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4, v3}, Lcom/android/phone/InCallFragment;->getToastStringPath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2490
    iput-boolean v6, p0, Lcom/android/phone/InCallFragment;->mEjectSdError:Z

    goto :goto_26

    .line 2494
    :cond_5a
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v2}, Landroid/media/voicerecorder/BaseVoiceRecorder;->getRecordFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2495
    .local v0, file:Ljava/io/File;
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallScreen_DSDA;->sendBroadcast(Landroid/content/Intent;)V

    .line 2498
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v3}, Landroid/media/voicerecorder/BaseVoiceRecorder;->getRecordFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v7, v3}, Lcom/android/phone/InCallFragment;->getToastStringPath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_26

    .line 2508
    .end local v0           #file:Ljava/io/File;
    :sswitch_89
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 2510
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_26

    .line 2519
    :sswitch_9e
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallScreen_DSDA;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 2520
    .local v1, vibrator:Landroid/os/Vibrator;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 2522
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 2524
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    const v3, 0x7f0c02fe

    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v4}, Landroid/media/voicerecorder/BaseVoiceRecorder;->getRecordFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/phone/InCallFragment;->getToastStringPath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_26

    .line 2533
    .end local v1           #vibrator:Landroid/os/Vibrator;
    :sswitch_cc
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 2535
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v3}, Landroid/media/voicerecorder/BaseVoiceRecorder;->getRecordFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4, v3}, Lcom/android/phone/InCallFragment;->getToastStringPath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_26

    .line 2544
    :sswitch_e8
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 2546
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mRecorder:Landroid/media/voicerecorder/BaseVoiceRecorder;

    invoke-virtual {v3}, Landroid/media/voicerecorder/BaseVoiceRecorder;->getRecordFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v7, v3}, Lcom/android/phone/InCallFragment;->getToastStringPath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_26

    .line 2555
    :sswitch_104
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 2557
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    const v3, 0x7f0c0302

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_26

    .line 2566
    :sswitch_11d
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 2568
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    const v3, 0x7f0c0301

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_26

    .line 2470
    :sswitch_data_136
    .sparse-switch
        0x5 -> :sswitch_cc
        0x1c -> :sswitch_9e
        0x101 -> :sswitch_104
        0x102 -> :sswitch_11d
        0x103 -> :sswitch_89
        0x104 -> :sswitch_e8
        0x121 -> :sswitch_2d
        0x122 -> :sswitch_39
    .end sparse-switch
.end method

.method protected phoneIsInUse()Z
    .registers 3

    .prologue
    .line 4390
    iget v0, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getState(I)Lcom/android/internal/telephony/Phone$State;

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

    .line 3778
    iget-boolean v0, p0, Lcom/android/phone/InCallFragment;->mRegisteredForPhoneStates:Z

    if-nez v0, :cond_59

    .line 3779
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3780
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3781
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3787
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3788
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x73

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3789
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3790
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3791
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7b

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3792
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7c

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3793
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallFragment;->mRegisteredForPhoneStates:Z

    .line 3795
    :cond_59
    return-void
.end method

.method requestUpdateBluetoothIndication()V
    .registers 3

    .prologue
    const/16 v1, 0x72

    .line 5077
    const-string v0, "requestUpdateBluetoothIndication()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 5081
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5082
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5083
    return-void
.end method

.method public requestUpdateInCallTouchUi(Z)V
    .registers 6
    .parameter "refreshButtons"

    .prologue
    const/16 v3, 0xb

    const/4 v1, 0x1

    .line 5207
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    if-eqz v2, :cond_1b

    .line 5208
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5209
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 5210
    .local v0, msg:Landroid/os/Message;
    if-ne v1, p1, :cond_1c

    :goto_14
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 5211
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5213
    .end local v0           #msg:Landroid/os/Message;
    :cond_1b
    return-void

    .line 5210
    .restart local v0       #msg:Landroid/os/Message;
    :cond_1c
    const/4 v1, 0x0

    goto :goto_14
.end method

.method requestUpdateScreen()V
    .registers 3

    .prologue
    const/16 v1, 0x7a

    .line 3154
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3155
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3156
    return-void
.end method

.method public resetmSubscription()V
    .registers 2

    .prologue
    .line 384
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 386
    return-void
.end method

.method setEndButton(Z)V
    .registers 4
    .parameter "enable"

    .prologue
    .line 4934
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mEndButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setSoundEffectsEnabled(Z)V

    .line 4936
    if-eqz p1, :cond_18

    .line 4937
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mEndButton:Landroid/widget/ImageButton;

    const v1, 0x7f020047

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 4938
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mEndButton:Landroid/widget/ImageButton;

    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 4943
    :goto_17
    return-void

    .line 4940
    :cond_18
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mEndButton:Landroid/widget/ImageButton;

    const v1, 0x7f020048

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 4941
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mEndButton:Landroid/widget/ImageButton;

    const v1, 0x7f020033

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_17
.end method

.method public setListener(Lcom/android/phone/InCallFragment$InCallFragmentListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/phone/InCallFragment;->mListener:Lcom/android/phone/InCallFragment$InCallFragmentListener;

    .line 406
    return-void
.end method

.method public setRejectCallHint()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1333
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->okToShowHint()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1334
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mHangUpDialingCallHint:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1335
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mHangUpDialingCallHint:Landroid/widget/TextView;

    const v1, 0x7f0c0422

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget v4, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->getAlternateSub(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtils;->getSimCardDisplayLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/InCallFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1340
    :goto_29
    return-void

    .line 1338
    :cond_2a
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mHangUpDialingCallHint:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_29
.end method

.method public setmSubscription(I)V
    .registers 4
    .parameter "subscription"

    .prologue
    .line 378
    iput p1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    .line 380
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget v1, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 381
    return-void
.end method

.method public setupPathFileName()Ljava/lang/String;
    .registers 7

    .prologue
    .line 2334
    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->getStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2335
    .local v1, path:Ljava/lang/String;
    const-string v3, "InCallFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupPathFileName()->mStoragePath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    if-nez v1, :cond_22

    .line 2339
    const/4 v3, 0x0

    .line 2352
    :goto_21
    return-object v3

    .line 2345
    :cond_22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v5, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v3, v5}, Lcom/android/phone/PhoneUtils;->getActiveFgCall(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_69

    const-string v3, "From_"

    :goto_3b
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->getCallName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InCallFragment;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2350
    .local v2, recoredFile:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->getFormattedFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2352
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_21

    .line 2345
    .end local v0           #f:Ljava/io/File;
    .end local v2           #recoredFile:Ljava/lang/String;
    :cond_69
    const-string v3, "To_"

    goto :goto_3b
.end method

.method public switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V
    .registers 7
    .parameter "newMode"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 5124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchInCallAudio: new mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 5126
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen_DSDA;->getmBTUtils()Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;

    move-result-object v0

    .line 5128
    .local v0, btUtils:Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;
    sget-object v1, Lcom/android/phone/InCallFragment$17;->$SwitchMap$com$android$phone$InCallScreen$InCallAudioMode:[I

    invoke-virtual {p1}, Lcom/android/phone/InCallScreen$InCallAudioMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_9c

    .line 5170
    const-string v1, "InCallFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchInCallAudio: unexpected mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5179
    :cond_41
    :goto_41
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateInCallTouchUi()V

    .line 5180
    return-void

    .line 5130
    :pswitch_45
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 5132
    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->isBluetoothAvailable()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->isBluetoothAudioConnected()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 5134
    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->disconnectBluetoothAudio()V

    .line 5136
    :cond_5c
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-static {v1, v3, v3}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_41

    .line 5142
    :pswitch_62
    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->isBluetoothAvailable()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->isBluetoothAudioConnected()Z

    move-result v1

    if-nez v1, :cond_41

    .line 5151
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 5152
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-static {v1, v4, v3}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 5154
    :cond_7b
    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->connectBluetoothAudio()V

    goto :goto_41

    .line 5161
    :pswitch_7f
    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->isBluetoothAvailable()Z

    move-result v1

    if-eqz v1, :cond_8e

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->isBluetoothAudioConnected()Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 5162
    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->disconnectBluetoothAudio()V

    .line 5164
    :cond_8e
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 5165
    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-static {v1, v4, v3}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_41

    .line 5128
    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_45
        :pswitch_62
        :pswitch_7f
    .end packed-switch
.end method

.method public toggleBluetooth()V
    .registers 2

    .prologue
    .line 5063
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA;->getmBTUtils()Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->toggleBluetooth()V

    .line 5069
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateInCallTouchUi()V

    .line 5070
    return-void
.end method

.method public toggleSpeaker()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 5094
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4c

    move v0, v1

    .line 5095
    .local v0, newSpeakerState:Z
    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toggleSpeaker(): newSpeakerState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 5097
    if-eqz v0, :cond_43

    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen_DSDA;->getmBTUtils()Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->isBluetoothAvailable()Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen_DSDA;->getmBTUtils()Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->isBluetoothAudioConnected()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 5099
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen_DSDA;->getmBTUtils()Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen_DSDA$InCallBluetoothUtils;->disconnectBluetoothAudio()V

    .line 5101
    :cond_43
    iget-object v2, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    invoke-static {v2, v0, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 5108
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateInCallTouchUi()V

    .line 5109
    return-void

    .line 5094
    .end local v0           #newSpeakerState:Z
    :cond_4c
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public updateActiveTimeInTab(J)V
    .registers 5
    .parameter "timeElapsed"

    .prologue
    .line 5185
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallTimeView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_11

    .line 5186
    iget-object v0, p0, Lcom/android/phone/InCallFragment;->mCallTimeView:Landroid/widget/TextView;

    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5188
    :cond_11
    return-void
.end method

.method updateAfterRadioTechnologyChange()V
    .registers 2

    .prologue
    .line 4687
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->setInCallScreenMode(Lcom/android/phone/InCallUiState$InCallScreenMode;)V

    .line 4690
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->unregisterForPhoneStates()V

    .line 4693
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->registerForPhoneStates()V

    .line 4698
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->requestUpdateScreen()V

    .line 4699
    return-void
.end method

.method public updateAfterTabChange()V
    .registers 3

    .prologue
    .line 4904
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateActiveCallButtonState()V

    .line 4906
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isInvalidateInCallControls()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 4908
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->setInvalidateInCallControls(Z)V

    .line 4909
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateInCallTouchUi()V

    .line 4912
    :cond_18
    return-void
.end method

.method updateIncomingCallWidgetHint(II)V
    .registers 6
    .parameter "hintTextResId"
    .parameter "hintColorResId"

    .prologue
    .line 3696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIncomingCallWidgetHint("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 3699
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getmCallCard()Lcom/android/phone/CallCard;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 3700
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getmCallCard()Lcom/android/phone/CallCard;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/CallCard;->setIncomingCallWidgetHint(II)V

    .line 3701
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->getmCallCard()Lcom/android/phone/CallCard;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v2, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;I)V

    .line 3711
    :cond_34
    return-void
.end method

.method updateScreen()V
    .registers 13

    .prologue
    .line 1179
    iget-object v9, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    if-nez v9, :cond_5

    .line 1313
    :cond_4
    :goto_4
    return-void

    .line 1185
    :cond_5
    iget-object v9, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v5, v9, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    check-cast v5, Lcom/android/phone/MSimInCallUiState;

    .line 1186
    .local v5, mUIState:Lcom/android/phone/MSimInCallUiState;
    iget-object v9, v5, Lcom/android/phone/MSimInCallUiState;->mSimInCallScreenMode:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    iget v10, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    aget-object v4, v9, v10

    .line 1190
    .local v4, inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;
    iget v9, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->getState(I)Lcom/android/internal/telephony/Phone$State;

    move-result-object v8

    .line 1191
    .local v8, state:Lcom/android/internal/telephony/Phone$State;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  - phone state = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 1192
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  - inCallScreenMode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/InCallFragment;->log(Ljava/lang/String;)V

    .line 1203
    iget-object v9, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-boolean v9, v9, Lcom/android/phone/PhoneApp;->mWakeUpScreen:Z

    if-nez v9, :cond_4f

    .line 1204
    iget-object v9, p0, Lcom/android/phone/InCallFragment;->mParent:Lcom/android/phone/InCallScreen_DSDA;

    iget-boolean v9, v9, Lcom/android/phone/InCallScreen_DSDA;->mIsForegroundActivity:Z

    if-eqz v9, :cond_4

    .line 1216
    :cond_4f
    sget-object v9, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v4, v9, :cond_61

    .line 1218
    iget-object v9, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v9, :cond_4

    .line 1220
    iget-object v9, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v9}, Lcom/android/phone/OtaUtils;->otaShowProperScreen()V

    goto :goto_4

    .line 1223
    :cond_61
    sget-object v9, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v4, v9, :cond_91

    .line 1226
    iget-object v9, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v9}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 1227
    iget-object v9, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v9, v9, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v10, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v9, v10, :cond_82

    .line 1230
    iget-object v9, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v9, :cond_4

    .line 1233
    iget-object v9, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v9}, Lcom/android/phone/OtaUtils;->otaShowActivateScreen()V

    goto :goto_4

    .line 1237
    :cond_82
    iget-object v9, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v9, :cond_4

    .line 1239
    iget-object v9, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v9}, Lcom/android/phone/OtaUtils;->otaShowSuccessFailure()V

    goto/16 :goto_4

    .line 1243
    :cond_91
    sget-object v9, Lcom/android/phone/InCallUiState$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v4, v9, :cond_9a

    .line 1245
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateManageConferencePanelIfNecessary()V

    goto/16 :goto_4

    .line 1247
    :cond_9a
    sget-object v9, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v4, v9, :cond_9e

    .line 1258
    :cond_9e
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateInCallTouchUi()V

    .line 1260
    iget-object v9, p0, Lcom/android/phone/InCallFragment;->mCallCard:Lcom/android/phone/CallCard_DSDA;

    iget-object v10, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v11, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-virtual {v9, v10, v11}, Lcom/android/phone/CallCard_DSDA;->updateState(Lcom/android/internal/telephony/CallManager;I)V

    .line 1261
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateDialpadVisibility()V

    .line 1262
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateProviderOverlay()V

    .line 1263
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateProgressIndication()V

    .line 1266
    iget-object v9, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v10, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v9, v10}, Lcom/android/phone/PhoneUtils;->hasActiveRingingCallsImpl(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v9

    if-eqz v9, :cond_c8

    .line 1267
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->dismissAllDialogs()V

    .line 1307
    :cond_c0
    :goto_c0
    invoke-virtual {p0}, Lcom/android/phone/InCallFragment;->setRejectCallHint()V

    .line 1311
    invoke-direct {p0}, Lcom/android/phone/InCallFragment;->updateActiveCallButtonState()V

    goto/16 :goto_4

    .line 1272
    :cond_c8
    const/4 v7, 0x0

    .line 1273
    .local v7, postDialStr:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v10, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v9, v10}, Lcom/android/phone/PhoneUtils;->getFgCallConnections(Lcom/android/internal/telephony/CallManager;I)Ljava/util/List;

    move-result-object v1

    .line 1274
    .local v1, fgConnections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    iget-object v9, p0, Lcom/android/phone/InCallFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 1275
    .local v6, phoneType:I
    const/4 v9, 0x2

    if-eq v6, v9, :cond_dd

    const/4 v9, 0x4

    if-ne v6, v9, :cond_121

    .line 1276
    :cond_dd
    iget-object v9, p0, Lcom/android/phone/InCallFragment;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v10, p0, Lcom/android/phone/InCallFragment;->mSubscription:I

    invoke-static {v9, v10}, Lcom/android/phone/PhoneUtils;->getFgCallLatestConnection(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 1277
    .local v2, fgLatestConnection:Lcom/android/internal/telephony/Connection;
    iget-object v9, p0, Lcom/android/phone/InCallFragment;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v9}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v9

    sget-object v10, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v9, v10, :cond_10f

    .line 1279
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_f5
    :goto_f5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 1280
    .local v0, cn:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_f5

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v9, v10, :cond_f5

    .line 1282
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->cancelPostDial()V

    goto :goto_f5

    .line 1285
    .end local v0           #cn:Lcom/android/internal/telephony/Connection;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_10f
    if-eqz v2, :cond_c0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v9, v10, :cond_c0

    .line 1288
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v7

    .line 1289
    invoke-direct {p0, v2, v7}, Lcom/android/phone/InCallFragment;->showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_c0

    .line 1291
    .end local v2           #fgLatestConnection:Lcom/android/internal/telephony/Connection;
    :cond_121
    const/4 v9, 0x1

    if-eq v6, v9, :cond_127

    const/4 v9, 0x3

    if-ne v6, v9, :cond_149

    .line 1293
    :cond_127
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_12b
    :goto_12b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 1294
    .restart local v0       #cn:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_12b

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v9, v10, :cond_12b

    .line 1295
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v7

    .line 1296
    invoke-direct {p0, v0, v7}, Lcom/android/phone/InCallFragment;->showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_12b

    .line 1300
    .end local v0           #cn:Lcom/android/internal/telephony/Connection;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_149
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected phone type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
.end method
