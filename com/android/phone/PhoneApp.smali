.class public Lcom/android/phone/PhoneApp;
.super Landroid/app/Application;
.source "PhoneApp.java"

# interfaces
.implements Lcom/android/phone/AccelerometerListener$OrientationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneApp$2;,
        Lcom/android/phone/PhoneApp$SetAudioHandler;,
        Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;,
        Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;,
        Lcom/android/phone/PhoneApp$CallState;,
        Lcom/android/phone/PhoneApp$WakeState;,
        Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;
    }
.end annotation


# static fields
.field private static final ACTION_PRE_POST_PAY:Ljava/lang/String; = "android.intent.action.ACTION_PRE_POST_PAY"

.field private static final ALLOWED_EXTRA_CALL_ORIGIN:Ljava/lang/String; = "com.android.contacts.activities.DialtactsActivity"

.field public static final CDMA_SUBSCRIPTION:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field static final DBG_LEVEL:I = 0x0

.field private static final DEFAULT_CALL_ORIGIN_PACKAGE:Ljava/lang/String; = "com.android.contacts"

.field protected static DSDA_SWITCH_NEW_DESIGN:Z = false

.field private static final EVENT_DATA_ROAMING_DISCONNECTED:I = 0xa

.field private static final EVENT_DATA_ROAMING_OK:I = 0xb

.field private static final EVENT_DOCK_STATE_CHANGED:I = 0xd

.field static final EVENT_PERSO_LOCKED:I = 0x3

.field private static final EVENT_PRE_POST_PAY:I = 0x1e

.field private static final EVENT_PRE_POST_PAY_OK:I = 0x1f

.field private static final EVENT_SIM_STATE_CHANGED:I = 0x8

.field private static final EVENT_START_SIP_SERVICE:I = 0x11

.field private static final EVENT_TTY_MODE_GET:I = 0xf

.field private static final EVENT_TTY_MODE_SET:I = 0x10

.field private static final EVENT_TTY_PREFERRED_MODE_CHANGED:I = 0xe

.field private static final EVENT_UNSOL_CDMA_INFO_RECORD:I = 0xc

.field private static final EVENT_UPDATE_INCALL_NOTIFICATION:I = 0x9

.field private static final EVENT_WIRED_HEADSET_PLUG:I = 0x7

.field public static final EXTRA_CALL_ORIGIN:Ljava/lang/String; = "com.android.phone.CALL_ORIGIN"

.field protected static GSM_LOCAL_TONE:Z = false

.field public static final GSM_SUBSCRIPTION:I = 0x1

.field public static final INVALID_SUBSCRIPTION:I = -0x1

.field static final LOG_TAG:Ljava/lang/String; = "PhoneApp"

.field public static final MMI_CANCEL:I = 0x35

.field public static final MMI_COMPLETE:I = 0x34

.field public static final MMI_INITIATE:I = 0x33

.field private static final PHONE_PRE_POST_PAY_STATE:Ljava/lang/String; = "prePostPayState"

.field private static final PROPERTY_AIRPLANE_MODE_ON:Ljava/lang/String; = "persist.radio.airplane_mode_on"

.field public static final SET_AUDIO_MESSAGE:I = 0x1

.field private static final VDBG:Z

.field private static final isProximitySensorAccelerated:Z

.field static mDockState:I

.field static msApp:Lcom/android/phone/MSimPhoneApp;

.field public static final ro_config_dsda:Z

.field protected static sMe:Lcom/android/phone/PhoneApp;

.field static sVoiceCapable:Z


# instance fields
.field callController:Lcom/android/phone/CallController;

.field public cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

.field public cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

.field public cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

.field public cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

.field cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

.field cf_all_deactivation:Ljava/lang/String;

.field cfb_activation:Ljava/lang/String;

.field cfb_deactivation:Ljava/lang/String;

.field cfnrc_activation:Ljava/lang/String;

.field cfnrc_deactivation:Ljava/lang/String;

.field cfnry_activation:Ljava/lang/String;

.field cfnry_deactivation:Ljava/lang/String;

.field cfu_activation:Ljava/lang/String;

.field cfu_deactivation:Ljava/lang/String;

.field cw_activation:Ljava/lang/String;

.field cw_deactivation:Ljava/lang/String;

.field inCallUiState:Lcom/android/phone/InCallUiState;

.field protected mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

.field private mBeginningCall:Z

.field mBluetoothHeadsetAudioState:I

.field mBluetoothHeadsetState:I

.field mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field mCM:Lcom/android/internal/telephony/CallManager;

.field private mCachedSimPin:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mDepersonalizationPanel:Lcom/android/phone/IccPanel;

.field mHandler:Landroid/os/Handler;

.field private mIgnoreTouchUserActivity:Z

.field protected mInCallScreen:Lcom/android/phone/InCallScreen;

.field protected mIsHardKeyboardOpen:Z

.field protected mIsHeadsetPlugged:Z

.field private mIsSimPinEnabled:Z

.field public mIsSimPukLocked:Z

.field protected mKeyguardManager:Landroid/app/KeyguardManager;

.field mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

.field private mMMIDialogDisplayed:Landroid/app/AlertDialog;

.field protected mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

.field private mOrientation:I

.field protected mPUKEntryActivity:Landroid/app/Activity;

.field private mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

.field protected mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPokeLockToken:Landroid/os/IBinder;

.field protected mPowerManagerService:Landroid/os/IPowerManager;

.field protected mPreferredTtyMode:I

.field protected mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected mReceiver:Landroid/content/BroadcastReceiver;

.field mSavedCallManager:Lcom/android/internal/telephony/CallManager;

.field private mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

.field mSetAudioHandler:Lcom/android/phone/PhoneApp$SetAudioHandler;

.field private volatile mSetAudioServiceLooper:Landroid/os/Looper;

.field protected mShouldRestoreMuteOnInCallResume:Z

.field mShowBluetoothIndication:Z

.field private mSilentHangupFlag:Z

.field protected mTtyEnabled:Z

.field private mTtySetOnPowerUp:Z

.field protected mWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected mWakeState:Lcom/android/phone/PhoneApp$WakeState;

.field mWakeUpScreen:Z

.field notificationMgr:Lcom/android/phone/NotificationMgr;

.field notifier:Lcom/android/phone/CallNotifier;

.field public otaUtils:Lcom/android/phone/OtaUtils;

.field phone:Lcom/android/internal/telephony/Phone;

.field phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

.field ringer:Lcom/android/phone/Ringer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 119
    sput-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    .line 124
    sput-boolean v1, Lcom/android/phone/PhoneApp;->DSDA_SWITCH_NEW_DESIGN:Z

    .line 154
    const-string v0, "ro.config.hw_proximity"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/PhoneApp;->isProximitySensorAccelerated:Z

    .line 158
    const-string v0, "ro.config.hw_dsda"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    .line 185
    sput-boolean v1, Lcom/android/phone/PhoneApp;->GSM_LOCAL_TONE:Z

    .line 255
    sput v1, Lcom/android/phone/PhoneApp;->mDockState:I

    .line 256
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 555
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 248
    iput v1, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetState:I

    .line 249
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetAudioState:I

    .line 250
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mShowBluetoothIndication:Z

    .line 253
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mWakeUpScreen:Z

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mDepersonalizationPanel:Lcom/android/phone/IccPanel;

    .line 294
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    .line 296
    sget-object v0, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    .line 297
    sget-object v0, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    .line 298
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mIgnoreTouchUserActivity:Z

    .line 299
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mPokeLockToken:Landroid/os/IBinder;

    .line 306
    iput v1, p0, Lcom/android/phone/PhoneApp;->mOrientation:I

    .line 340
    iput v1, p0, Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I

    .line 341
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mTtySetOnPowerUp:Z

    .line 344
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mSilentHangupFlag:Z

    .line 381
    new-instance v0, Lcom/android/phone/PhoneApp$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneApp$1;-><init>(Lcom/android/phone/PhoneApp;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    .line 556
    sput-object p0, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    .line 557
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 99
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/PhoneApp;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/PhoneApp;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->handleQueryTTYModeResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->handleSetTTYModeResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/PhoneApp;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->initForNewRadioTechnology()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/PhoneApp;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->handleServiceStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/PhoneApp;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->setAutoTimeByNetworkType()V

    return-void
.end method

.method static createCallLogIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 905
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 906
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 907
    return-object v0
.end method

.method static createInCallIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 917
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 918
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1084

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 921
    const-string v1, "com.android.phone"

    invoke-static {}, Lcom/android/phone/PhoneApp;->getCallScreenClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 922
    return-object v0
.end method

.method static createInCallIntent(Z)Landroid/content/Intent;
    .registers 3
    .parameter "showDialpad"

    .prologue
    .line 931
    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v0

    .line 932
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.phone.ShowDialpad"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 933
    return-object v0
.end method

.method private dismissIccPanel()V
    .registers 3

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mDepersonalizationPanel:Lcom/android/phone/IccPanel;

    if-eqz v0, :cond_d

    .line 376
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mDepersonalizationPanel:Lcom/android/phone/IccPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/IccPanel;->dismiss(Z)V

    .line 377
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mDepersonalizationPanel:Lcom/android/phone/IccPanel;

    .line 379
    :cond_d
    return-void
.end method

.method static getCallScreenClassName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 942
    sget-boolean v0, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_b

    .line 943
    const-class v0, Lcom/android/phone/InCallScreen_DSDA;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 945
    :goto_a
    return-object v0

    :cond_b
    const-class v0, Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static getInstance()Lcom/android/phone/PhoneApp;
    .registers 1

    .prologue
    .line 871
    sget-object v0, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    return-object v0
.end method

.method static getPhone()Lcom/android/internal/telephony/Phone;
    .registers 1

    .prologue
    .line 879
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private handleQueryTTYModeResponse(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 2144
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2145
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_15

    .line 2146
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_14

    const-string v3, "PhoneApp"

    const-string v4, "handleQueryTTYModeResponse: Error getting TTY state."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    :cond_14
    :goto_14
    return-void

    .line 2148
    :cond_15
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_20

    const-string v3, "PhoneApp"

    const-string v5, "handleQueryTTYModeResponse: TTY enable state successfully queried."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    :cond_20
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    aget v2, v3, v4

    .line 2152
    .local v2, ttymode:I
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_44

    const-string v3, "PhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleQueryTTYModeResponse:ttymode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    :cond_44
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2155
    .local v1, ttyModeChanged:Landroid/content/Intent;
    const-string v5, "ttyEnabled"

    if-eqz v2, :cond_59

    const/4 v3, 0x1

    :goto_50
    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2156
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_14

    :cond_59
    move v3, v4

    .line 2155
    goto :goto_50
.end method

.method private handleServiceStateChanged(Landroid/content/Intent;)V
    .registers 10
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2046
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 2048
    .local v0, ss:Landroid/telephony/ServiceState;
    if-eqz v0, :cond_40

    .line 2049
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 2050
    .local v1, state:I
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/phone/NotificationMgr;->updateNetworkSelection(ILcom/android/internal/telephony/Phone;)V

    .line 2052
    if-eqz v1, :cond_1e

    const/4 v2, 0x2

    if-ne v1, v2, :cond_39

    :cond_1e
    iget-boolean v2, p0, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    if-eqz v2, :cond_39

    iget-boolean v2, p0, Lcom/android/phone/PhoneApp;->mTtySetOnPowerUp:Z

    if-nez v2, :cond_39

    .line 2060
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xe

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2061
    iput-boolean v7, p0, Lcom/android/phone/PhoneApp;->mTtySetOnPowerUp:Z

    .line 2063
    :cond_39
    const/4 v2, 0x3

    if-eq v1, v2, :cond_3e

    if-ne v1, v7, :cond_40

    .line 2068
    :cond_3e
    iput-boolean v6, p0, Lcom/android/phone/PhoneApp;->mTtySetOnPowerUp:Z

    .line 2071
    .end local v1           #state:I
    :cond_40
    return-void
.end method

.method private handleSetTTYModeResponse(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 2161
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2163
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_26

    .line 2164
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_26

    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetTTYModeResponse: Error setting TTY mode, ar.exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    :cond_26
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    .line 2169
    return-void
.end method

.method private initForNewRadioTechnology()V
    .registers 3

    .prologue
    .line 1662
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "PhoneApp"

    const-string v1, "initForNewRadioTechnology..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    :cond_b
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_20

    .line 1666
    new-instance v0, Lcom/android/phone/CdmaPhoneCallState;

    invoke-direct {v0}, Lcom/android/phone/CdmaPhoneCallState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 1667
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->CdmaPhoneCallStateInit()V

    .line 1669
    :cond_20
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1671
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-nez v0, :cond_33

    .line 1672
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    .line 1674
    :cond_33
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    if-nez v0, :cond_3e

    .line 1675
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    .line 1677
    :cond_3e
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-nez v0, :cond_49

    .line 1678
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    .line 1680
    :cond_49
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    if-nez v0, :cond_54

    .line 1681
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    .line 1688
    :cond_54
    :goto_54
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Lcom/android/phone/Ringer;->updateRingerContextAfterRadioTechnologyChange(Lcom/android/internal/telephony/Phone;)V

    .line 1689
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->updateCallNotifierRegistrationsAfterRadioTechnologyChange()V

    .line 1690
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_69

    .line 1691
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->updateBtHandsfreeAfterRadioTechnologyChange()V

    .line 1695
    :cond_69
    sget-boolean v0, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_75

    .line 1696
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->updateAfterRadioTechnologyChange()V

    .line 1703
    :cond_70
    :goto_70
    return-void

    .line 1685
    :cond_71
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->clearOtaState()V

    goto :goto_54

    .line 1698
    :cond_75
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_70

    .line 1699
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->updateAfterRadioTechnologyChange()V

    goto :goto_70
.end method

.method private setAutoTimeByNetworkType()V
    .registers 5

    .prologue
    .line 2026
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 2027
    .local v0, iNetworkType:I
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get network type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    const/4 v1, 0x4

    if-eq v1, v0, :cond_2c

    const/4 v1, 0x5

    if-eq v1, v0, :cond_2c

    const/4 v1, 0x6

    if-eq v1, v0, :cond_2c

    const/4 v1, 0x7

    if-ne v1, v0, :cond_3d

    .line 2034
    :cond_2c
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2035
    const-string v1, "PhoneApp"

    const-string v2, "CDMA Network put  auto time is 1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    :cond_3d
    return-void
.end method

.method private static shouldShowBluetoothIndication(IILcom/android/internal/telephony/CallManager;)Z
    .registers 8
    .parameter "bluetoothState"
    .parameter "bluetoothAudioState"
    .parameter "cm"

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1789
    sget-object v2, Lcom/android/phone/PhoneApp$2;->$SwitchMap$com$android$internal$telephony$Phone$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_20

    move v0, v1

    .line 1807
    :cond_13
    :goto_13
    return v0

    .line 1795
    :pswitch_14
    if-ne p0, v4, :cond_1a

    const/16 v2, 0xc

    if-eq p1, v2, :cond_13

    :cond_1a
    move v0, v1

    goto :goto_13

    .line 1804
    :pswitch_1c
    if-eq p0, v4, :cond_13

    move v0, v1

    goto :goto_13

    .line 1789
    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_14
        :pswitch_1c
    .end packed-switch
.end method

.method private updatePokeLock()V
    .registers 6

    .prologue
    .line 1224
    const/4 v1, 0x0

    .line 1225
    .local v1, pokeLockSetting:I
    sget-object v2, Lcom/android/phone/PhoneApp$2;->$SwitchMap$com$android$phone$PhoneApp$ScreenTimeoutDuration:[I

    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_3e

    .line 1251
    :goto_e
    iget-boolean v2, p0, Lcom/android/phone/PhoneApp;->mIgnoreTouchUserActivity:Z

    if-eqz v2, :cond_14

    .line 1252
    or-int/lit8 v1, v1, 0x1

    .line 1257
    :cond_14
    :try_start_14
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mPokeLockToken:Landroid/os/IBinder;

    const-string v4, "PhoneApp"

    invoke-interface {v2, v1, v3, v4}, Landroid/os/IPowerManager;->setPokeLock(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1d} :catch_24

    .line 1261
    :goto_1d
    return-void

    .line 1231
    :pswitch_1e
    or-int/lit8 v1, v1, 0x2

    .line 1232
    goto :goto_e

    .line 1239
    :pswitch_21
    or-int/lit8 v1, v1, 0x4

    .line 1240
    goto :goto_e

    .line 1258
    :catch_24
    move-exception v0

    .line 1259
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPowerManagerService.setPokeLock() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 1225
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_21
    .end packed-switch
.end method


# virtual methods
.method authenticateAgainstCachedSimPin(Ljava/lang/String;)Z
    .registers 3
    .parameter "pin"

    .prologue
    .line 991
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCachedSimPin:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCachedSimPin:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public clearInCallScreenMode()V
    .registers 3

    .prologue
    .line 2113
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "PhoneApp"

    const-string v1, "- clearInCallScreenMode ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    :cond_b
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_14

    .line 2115
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->resetInCallScreenMode()V

    .line 2117
    :cond_14
    return-void
.end method

.method public clearOtaState()V
    .registers 3

    .prologue
    .line 2093
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "PhoneApp"

    const-string v1, "- clearOtaState ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    :cond_b
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_24

    .line 2096
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    .line 2097
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_24

    const-string v0, "PhoneApp"

    const-string v1, "  - clearOtaState clears OTA screen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    :cond_24
    return-void
.end method

.method public clearSilentHangupFlag()V
    .registers 2

    .prologue
    .line 2277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneApp;->mSilentHangupFlag:Z

    .line 2278
    return-void
.end method

.method clearUserActivityTimeout()V
    .registers 6

    .prologue
    .line 2173
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IPowerManager;->clearUserActivityTimeout(JJ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 2178
    :goto_b
    return-void

    .line 2175
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method createCallLogIntent(I)Landroid/content/Intent;
    .registers 3
    .parameter "subscription"

    .prologue
    .line 2251
    invoke-static {}, Lcom/android/phone/PhoneApp;->createCallLogIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method createInCallIntent(I)Landroid/content/Intent;
    .registers 3
    .parameter "subscription"

    .prologue
    .line 2264
    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public createPhoneEndIntentUsingCallOrigin()Landroid/content/Intent;
    .registers 4

    .prologue
    .line 2204
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v1, v1, Lcom/android/phone/InCallUiState;->latestActiveCallOrigin:Ljava/lang/String;

    const-string v2, "com.android.contacts.activities.DialtactsActivity"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2211
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2212
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.contacts"

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v2, v2, Lcom/android/phone/InCallUiState;->latestActiveCallOrigin:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2218
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1a
    return-object v0

    :cond_1b
    invoke-static {}, Lcom/android/phone/PhoneApp;->createCallLogIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_1a
.end method

.method dismissCallScreen()V
    .registers 3

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_44

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isSilentHangup()Z

    move-result v0

    if-nez v0, :cond_44

    .line 1059
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isOtaCallInActiveState()Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isOtaCallInEndState()Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v0, v1, :cond_3a

    .line 1068
    :cond_2e
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 1071
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->displayCallScreen()V

    .line 1073
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->handleOtaCallEnd()V

    .line 1091
    :goto_39
    return-void

    .line 1079
    :cond_3a
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mWakeUpScreen:Z

    if-eqz v0, :cond_48

    .line 1080
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 1081
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->clearUserActivityTimeout()V

    .line 1089
    :cond_44
    :goto_44
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->clearSilentHangupFlag()V

    goto :goto_39

    .line 1083
    :cond_48
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->finish()V

    goto :goto_44
.end method

.method dismissCallScreen(Lcom/android/internal/telephony/Phone;)V
    .registers 2
    .parameter "phone"

    .prologue
    .line 2247
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->dismissCallScreen()V

    .line 2248
    return-void
.end method

.method dismissCallScreen_DSDA(Lcom/android/internal/telephony/Phone;)V
    .registers 5
    .parameter "phone"

    .prologue
    .line 2368
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dismissOtaDialogs()V
    .registers 3

    .prologue
    .line 2103
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "PhoneApp"

    const-string v1, "- dismissOtaDialogs ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    :cond_b
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_23

    .line 2106
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->dismissAllOtaDialogs()V

    .line 2107
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_23

    const-string v0, "PhoneApp"

    const-string v1, "  - dismissOtaDialogs clears OTA dialogs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    :cond_23
    return-void
.end method

.method displayCallScreen()V
    .registers 6

    .prologue
    .line 959
    sget-boolean v1, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v1, :cond_13

    .line 960
    const-string v1, "PhoneApp"

    const-string v2, "displayCallScreen() not allowed: non-voice-capable device"

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "stack dump"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 975
    :goto_12
    return-void

    .line 967
    :cond_13
    :try_start_13
    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V
    :try_end_1a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_13 .. :try_end_1a} :catch_1e

    .line 974
    :goto_1a
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenRequested()V

    goto :goto_12

    .line 968
    :catch_1e
    move-exception v0

    .line 972
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayCallScreen: transition to InCallScreen failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method displayCallScreen(I)V
    .registers 5
    .parameter "sub"

    .prologue
    .line 981
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;
    .registers 2

    .prologue
    .line 893
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    return-object v0
.end method

.method public getDataSubscription()I
    .registers 2

    .prologue
    .line 2238
    const/4 v0, 0x0

    return v0
.end method

.method getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .registers 2

    .prologue
    .line 2268
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getDefaultSubscription()I
    .registers 2

    .prologue
    .line 2228
    const/4 v0, 0x0

    return v0
.end method

.method getInCallScreen()Lcom/android/phone/InCallScreen;
    .registers 2

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method getInCallScreen_DSDA()Lcom/android/phone/InCallScreen_DSDA;
    .registers 4

    .prologue
    .line 1017
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getKeyguardManager()Landroid/app/KeyguardManager;
    .registers 2

    .prologue
    .line 1652
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method getMMIDialog()Landroid/app/AlertDialog;
    .registers 2

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mMMIDialogDisplayed:Landroid/app/AlertDialog;

    return-object v0
.end method

.method getPUKEntryActivity()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getPUKEntryProgressDialog()Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public getPhone(I)Lcom/android/internal/telephony/Phone;
    .registers 3
    .parameter "subscription"

    .prologue
    .line 885
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getPhoneInCall()Lcom/android/internal/telephony/Phone;
    .registers 2

    .prologue
    .line 2343
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getPhoneInCall()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method getPhoneState()Lcom/android/internal/telephony/Phone$State;
    .registers 2

    .prologue
    .line 1640
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    return-object v0
.end method

.method getPhoneState(I)Lcom/android/internal/telephony/Phone$State;
    .registers 3
    .parameter "subscription"

    .prologue
    .line 2223
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getPhoneState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    return-object v0
.end method

.method getRestoreMuteOnInCallResume()Z
    .registers 2

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mShouldRestoreMuteOnInCallResume:Z

    return v0
.end method

.method getRinger()Lcom/android/phone/Ringer;
    .registers 2

    .prologue
    .line 889
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    return-object v0
.end method

.method public getSMSSubscription()I
    .registers 2

    .prologue
    .line 2243
    sget-object v0, Lcom/android/phone/PhoneApp;->msApp:Lcom/android/phone/MSimPhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/MSimPhoneApp;->getSMSSubscription()I

    move-result v0

    return v0
.end method

.method public getVoiceSubscription()I
    .registers 2

    .prologue
    .line 2233
    const/4 v0, 0x0

    return v0
.end method

.method public getVoiceSubscriptionInService()I
    .registers 2

    .prologue
    .line 2260
    const/4 v0, 0x0

    return v0
.end method

.method public getmActiveSubscription()I
    .registers 4

    .prologue
    .line 2314
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getmRingingSubscription()I
    .registers 4

    .prologue
    .line 2332
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method handleOtaspDisconnect()V
    .registers 3

    .prologue
    .line 1118
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "PhoneApp"

    const-string v1, "handleOtaspDisconnect()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    :cond_b
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-nez v0, :cond_17

    .line 1123
    const-string v0, "PhoneApp"

    const-string v1, "handleOtaspDisconnect: otaUtils is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    :goto_16
    return-void

    .line 1127
    :cond_17
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->onOtaspDisconnect()V

    goto :goto_16
.end method

.method handleOtaspEvent(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 1100
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_22

    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOtaspEvent(message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :cond_22
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-nez v0, :cond_3f

    .line 1105
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOtaEvents: got an event but otaUtils is null! message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    :goto_3e
    return-void

    .line 1110
    :cond_3f
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {v1, v0}, Lcom/android/phone/OtaUtils;->onOtaProvisionStatusChanged(Landroid/os/AsyncResult;)V

    goto :goto_3e
.end method

.method initIccDepersonalizationPanel(Landroid/os/AsyncResult;)V
    .registers 5
    .parameter "ar"

    .prologue
    .line 542
    const-string v1, "PhoneApp"

    const-string v2, "show sim depersonal panel"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 546
    .local v0, subtype:I
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->dismissIccPanel()V

    .line 547
    new-instance v1, Lcom/android/phone/IccDepersonalizationPanel;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/phone/IccDepersonalizationPanel;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->mDepersonalizationPanel:Lcom/android/phone/IccPanel;

    .line 549
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mDepersonalizationPanel:Lcom/android/phone/IccPanel;

    invoke-virtual {v1}, Lcom/android/phone/IccPanel;->show()V

    .line 551
    return-void
.end method

.method public isCDMACallReallyConnected()Z
    .registers 4

    .prologue
    .line 2348
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected isDialerOpened()Z
    .registers 2

    .prologue
    .line 2384
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isGsmCallRemoteAnswered()Z
    .registers 4

    .prologue
    .line 2358
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method isHeadsetPlugged()Z
    .registers 2

    .prologue
    .line 1719
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsHeadsetPlugged:Z

    return v0
.end method

.method public isInvalidateInCallControls()Z
    .registers 4

    .prologue
    .line 2401
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isOtaCallInActiveState()Z
    .registers 3

    .prologue
    .line 2074
    const/4 v0, 0x0

    .line 2075
    .local v0, otaCallActive:Z
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_b

    .line 2076
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isOtaCallInActiveState()Z

    move-result v0

    .line 2079
    :cond_b
    return v0
.end method

.method public isOtaCallInEndState()Z
    .registers 3

    .prologue
    .line 2083
    const/4 v0, 0x0

    .line 2084
    .local v0, otaCallEnded:Z
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_b

    .line 2085
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isOtaCallInEndState()Z

    move-result v0

    .line 2088
    :cond_b
    return v0
.end method

.method isShowingCallScreen()Z
    .registers 2

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 1038
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isForegroundActivity()Z

    move-result v0

    goto :goto_5
.end method

.method isShowingCallScreenForProximity()Z
    .registers 2

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 1043
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isForegroundActivityForProximity()Z

    move-result v0

    goto :goto_5
.end method

.method public isSilentHangup()Z
    .registers 2

    .prologue
    .line 2281
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mSilentHangupFlag:Z

    return v0
.end method

.method isSimPinEnabled()Z
    .registers 2

    .prologue
    .line 987
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsSimPinEnabled:Z

    return v0
.end method

.method isSimPukLocked(I)Z
    .registers 3
    .parameter "subscription"

    .prologue
    .line 2256
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsSimPukLocked:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    const/4 v1, 0x1

    .line 850
    sget-object v0, Lcom/android/phone/PhoneApp;->msApp:Lcom/android/phone/MSimPhoneApp;

    if-eqz v0, :cond_e

    .line 851
    sget-object v0, Lcom/android/phone/PhoneApp;->msApp:Lcom/android/phone/MSimPhoneApp;

    invoke-virtual {v0, p1}, Lcom/android/phone/MSimPhoneApp;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 862
    :goto_a
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 863
    return-void

    .line 853
    :cond_e
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v1, :cond_1e

    .line 854
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mIsHardKeyboardOpen:Z

    .line 860
    :goto_14
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    goto :goto_a

    .line 856
    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsHardKeyboardOpen:Z

    goto :goto_14
.end method

.method public onCreate()V
    .registers 22

    .prologue
    .line 562
    new-instance v14, Landroid/os/HandlerThread;

    const-string v17, "IntentService[test]"

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 563
    .local v14, thread:Landroid/os/HandlerThread;
    invoke-virtual {v14}, Landroid/os/HandlerThread;->start()V

    .line 564
    invoke-virtual {v14}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mSetAudioServiceLooper:Landroid/os/Looper;

    .line 565
    new-instance v17, Lcom/android/phone/PhoneApp$SetAudioHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mSetAudioServiceLooper:Landroid/os/Looper;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/phone/PhoneApp$SetAudioHandler;-><init>(Lcom/android/phone/PhoneApp;Landroid/os/Looper;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mSetAudioHandler:Lcom/android/phone/PhoneApp$SetAudioHandler;

    .line 569
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "hw_dsda_new_design"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e1

    const/16 v17, 0x1

    :goto_4f
    sput-boolean v17, Lcom/android/phone/PhoneApp;->DSDA_SWITCH_NEW_DESIGN:Z

    .line 574
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 579
    .local v12, resolver:Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1110023

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    sput-boolean v17, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    .line 586
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v17

    if-eqz v17, :cond_e5

    .line 587
    const-string v17, "PhoneApp"

    const-string v18, "PhoneApp onCreate() DSDS Enabled!!!!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    new-instance v17, Lcom/android/phone/MSimPhoneApp;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/MSimPhoneApp;-><init>(Landroid/content/Context;)V

    sput-object v17, Lcom/android/phone/PhoneApp;->msApp:Lcom/android/phone/MSimPhoneApp;

    .line 589
    sget-object v17, Lcom/android/phone/PhoneApp;->msApp:Lcom/android/phone/MSimPhoneApp;

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/MSimPhoneApp;->onCreate()V

    .line 790
    :cond_83
    :goto_83
    :try_start_83
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f050006

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v15

    .line 793
    .local v15, xml:Landroid/content/res/XmlResourceParser;
    :cond_8e
    :goto_8e
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v16

    .local v16, xmlEventType:I
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_c2

    .line 794
    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8e

    .line 795
    const-string v17, "cfu_activation"

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_48d

    .line 797
    const/16 v17, 0x0

    const-string v18, "value"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->cfu_activation:Ljava/lang/String;
    :try_end_c0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_83 .. :try_end_c0} :catch_c1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_83 .. :try_end_c0} :catch_4ad
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_c0} :catch_4d3

    goto :goto_8e

    .line 831
    .end local v15           #xml:Landroid/content/res/XmlResourceParser;
    .end local v16           #xmlEventType:I
    :catch_c1
    move-exception v17

    .line 843
    :cond_c2
    :goto_c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "hw_generic_local_dtmf"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5d9

    const/16 v17, 0x1

    :goto_de
    sput-boolean v17, Lcom/android/phone/PhoneApp;->GSM_LOCAL_TONE:Z

    .line 845
    return-void

    .line 572
    .end local v12           #resolver:Landroid/content/ContentResolver;
    :cond_e1
    const/16 v17, 0x0

    goto/16 :goto_4f

    .line 593
    .restart local v12       #resolver:Landroid/content/ContentResolver;
    :cond_e5
    const-string v17, "hw_call_wakeup"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_101

    .line 594
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/PhoneApp;->mWakeUpScreen:Z

    .line 597
    :cond_101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    if-nez v17, :cond_3d3

    .line 598
    const-string v17, "PhoneApp"

    const-string v18, "non dsds PhoneApp:"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhones(Landroid/content/Context;)V

    .line 603
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 605
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 610
    invoke-static/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->init(Lcom/android/phone/PhoneApp;)Lcom/android/phone/NotificationMgr;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->init(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;)Lcom/android/phone/PhoneInterfaceManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x11

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    .line 618
    .local v10, phoneType:I
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v10, v0, :cond_183

    .line 620
    new-instance v17, Lcom/android/phone/CdmaPhoneCallState;

    invoke-direct/range {v17 .. v17}, Lcom/android/phone/CdmaPhoneCallState;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/CdmaPhoneCallState;->CdmaPhoneCallStateInit()V

    .line 624
    :cond_183
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v17

    if-eqz v17, :cond_480

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->init(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 628
    new-instance v17, Landroid/content/Intent;

    const-class v18, Lcom/android/phone/BluetoothHeadsetService;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 634
    :goto_1b1
    invoke-static/range {p0 .. p0}, Lcom/android/phone/Ringer;->init(Landroid/content/Context;)Lcom/android/phone/Ringer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    .line 636
    new-instance v17, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 637
    new-instance v17, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 641
    const-string v17, "power"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PowerManager;

    .line 642
    .local v11, pm:Landroid/os/PowerManager;
    const v17, 0x1000001a

    const-string v18, "PhoneApp"

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 646
    const v17, 0x20000001

    const-string v18, "PhoneApp"

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 649
    invoke-virtual {v11}, Landroid/os/PowerManager;->getSupportedWakeLockFlags()I

    move-result v17

    and-int/lit8 v17, v17, 0x20

    if-eqz v17, :cond_225

    .line 651
    const/16 v17, 0x20

    const-string v18, "PhoneApp"

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 654
    :cond_225
    sget-boolean v17, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v17, :cond_247

    const-string v17, "PhoneApp"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onCreate: mProximityWakeLock: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_247
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->proximitySensorModeEnabled()Z

    move-result v17

    if-eqz v17, :cond_25e

    .line 658
    new-instance v17, Lcom/android/phone/AccelerometerListener;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/phone/AccelerometerListener;-><init>(Landroid/content/Context;Lcom/android/phone/AccelerometerListener$OrientationListener;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

    .line 661
    :cond_25e
    const-string v17, "keyguard"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/KeyguardManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 665
    const-string v17, "power"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 671
    invoke-static/range {p0 .. p0}, Lcom/android/phone/CallController;->init(Lcom/android/phone/PhoneApp;)Lcom/android/phone/CallController;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    .line 674
    invoke-static/range {p0 .. p0}, Lcom/android/phone/InCallUiState;->init(Landroid/content/Context;)Lcom/android/phone/InCallUiState;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/phone/CallLogAsync;

    invoke-direct/range {v20 .. v20}, Lcom/android/phone/CallLogAsync;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/phone/CallNotifier;->init(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)Lcom/android/phone/CallNotifier;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v13

    .line 684
    .local v13, sim:Lcom/android/internal/telephony/IccCard;
    if-eqz v13, :cond_2de

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v13, v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->registerForPersoLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 690
    :cond_2de
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x34

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneUtils;->initializeConnectionHandler(Lcom/android/internal/telephony/CallManager;)V

    .line 696
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f080005

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    .line 699
    new-instance v8, Landroid/content/IntentFilter;

    const-string v17, "android.intent.action.AIRPLANE_MODE"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 701
    .local v8, intentFilter:Landroid/content/IntentFilter;
    const-string v17, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 702
    const-string v17, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 703
    const-string v17, "android.intent.action.ANY_DATA_STATE"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 704
    const-string v17, "android.intent.action.HEADSET_PLUG"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 705
    const-string v17, "android.intent.action.DOCK_EVENT"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 706
    const-string v17, "android.intent.action.BATTERY_LOW"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 707
    const-string v17, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 708
    const-string v17, "android.intent.action.RADIO_TECHNOLOGY"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 709
    const-string v17, "android.intent.action.SERVICE_STATE"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 710
    const-string v17, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 711
    const-string v17, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 712
    const-string v17, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 716
    const-string v17, "android.intent.action.ACTION_PRE_POST_PAY"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 719
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_37e

    .line 720
    const-string v17, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 722
    :cond_37e
    const-string v17, "android.media.RINGER_MODE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 728
    new-instance v9, Landroid/content/IntentFilter;

    const-string v17, "android.intent.action.MEDIA_BUTTON"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 734
    .local v9, mediaButtonIntentFilter:Landroid/content/IntentFilter;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 739
    const v17, 0x7f05001e

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 741
    const/high16 v17, 0x7f05

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 749
    .end local v8           #intentFilter:Landroid/content/IntentFilter;
    .end local v9           #mediaButtonIntentFilter:Landroid/content/IntentFilter;
    .end local v10           #phoneType:I
    .end local v11           #pm:Landroid/os/PowerManager;
    .end local v13           #sim:Lcom/android/internal/telephony/IccCard;
    :cond_3d3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v17

    if-eqz v17, :cond_40b

    .line 750
    new-instance v17, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    invoke-direct/range {v17 .. v17}, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    .line 751
    new-instance v17, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    invoke-direct/range {v17 .. v17}, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    .line 752
    new-instance v17, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    invoke-direct/range {v17 .. v17}, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    .line 753
    new-instance v17, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    invoke-direct/range {v17 .. v17}, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    .line 757
    :cond_40b
    const-string v17, "content://icc/adn"

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 760
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/PhoneApp;->mShouldRestoreMuteOnInCallResume:Z

    .line 769
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_442

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "preferred_tty_mode"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I

    .line 776
    :cond_442
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f080006

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    if-eqz v17, :cond_83

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "hearing_aid"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 780
    .local v7, hac:I
    const-string v17, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    .line 781
    .local v5, audioManager:Landroid/media/AudioManager;
    const-string v18, "HACSetting"

    if-eqz v7, :cond_48a

    const-string v17, "ON"

    :goto_477
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_83

    .line 631
    .end local v5           #audioManager:Landroid/media/AudioManager;
    .end local v7           #hac:I
    .restart local v10       #phoneType:I
    :cond_480
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    goto/16 :goto_1b1

    .line 781
    .end local v10           #phoneType:I
    .restart local v5       #audioManager:Landroid/media/AudioManager;
    .restart local v7       #hac:I
    :cond_48a
    const-string v17, "OFF"

    goto :goto_477

    .line 798
    .end local v5           #audioManager:Landroid/media/AudioManager;
    .end local v7           #hac:I
    .restart local v15       #xml:Landroid/content/res/XmlResourceParser;
    .restart local v16       #xmlEventType:I
    :cond_48d
    :try_start_48d
    const-string v17, "cfu_deactivation"

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4b3

    .line 800
    const/16 v17, 0x0

    const-string v18, "value"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->cfu_deactivation:Ljava/lang/String;
    :try_end_4ab
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_48d .. :try_end_4ab} :catch_c1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_48d .. :try_end_4ab} :catch_4ad
    .catch Ljava/io/IOException; {:try_start_48d .. :try_end_4ab} :catch_4d3

    goto/16 :goto_8e

    .line 834
    .end local v15           #xml:Landroid/content/res/XmlResourceParser;
    .end local v16           #xmlEventType:I
    :catch_4ad
    move-exception v6

    .line 835
    .local v6, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_c2

    .line 801
    .end local v6           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v15       #xml:Landroid/content/res/XmlResourceParser;
    .restart local v16       #xmlEventType:I
    :cond_4b3
    :try_start_4b3
    const-string v17, "cfb_activation"

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4d9

    .line 803
    const/16 v17, 0x0

    const-string v18, "value"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->cfb_activation:Ljava/lang/String;
    :try_end_4d1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4b3 .. :try_end_4d1} :catch_c1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4b3 .. :try_end_4d1} :catch_4ad
    .catch Ljava/io/IOException; {:try_start_4b3 .. :try_end_4d1} :catch_4d3

    goto/16 :goto_8e

    .line 836
    .end local v15           #xml:Landroid/content/res/XmlResourceParser;
    .end local v16           #xmlEventType:I
    :catch_4d3
    move-exception v6

    .line 837
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_c2

    .line 804
    .end local v6           #e:Ljava/io/IOException;
    .restart local v15       #xml:Landroid/content/res/XmlResourceParser;
    .restart local v16       #xmlEventType:I
    :cond_4d9
    :try_start_4d9
    const-string v17, "cfb_deactivation"

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4f9

    .line 806
    const/16 v17, 0x0

    const-string v18, "value"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->cfb_deactivation:Ljava/lang/String;

    goto/16 :goto_8e

    .line 807
    :cond_4f9
    const-string v17, "cfnry_activation"

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_519

    .line 809
    const/16 v17, 0x0

    const-string v18, "value"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->cfnry_activation:Ljava/lang/String;

    goto/16 :goto_8e

    .line 810
    :cond_519
    const-string v17, "cfnry_deactivation"

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_539

    .line 812
    const/16 v17, 0x0

    const-string v18, "value"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->cfnry_deactivation:Ljava/lang/String;

    goto/16 :goto_8e

    .line 813
    :cond_539
    const-string v17, "cfnrc_activation"

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_559

    .line 815
    const/16 v17, 0x0

    const-string v18, "value"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->cfnrc_activation:Ljava/lang/String;

    goto/16 :goto_8e

    .line 816
    :cond_559
    const-string v17, "cfnrc_deactivation"

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_579

    .line 818
    const/16 v17, 0x0

    const-string v18, "value"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->cfnrc_deactivation:Ljava/lang/String;

    goto/16 :goto_8e

    .line 819
    :cond_579
    const-string v17, "cf_all_deactivation"

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_599

    .line 821
    const/16 v17, 0x0

    const-string v18, "value"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->cf_all_deactivation:Ljava/lang/String;

    goto/16 :goto_8e

    .line 822
    :cond_599
    const-string v17, "cw_activation"

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5b9

    .line 824
    const/16 v17, 0x0

    const-string v18, "value"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->cw_activation:Ljava/lang/String;

    goto/16 :goto_8e

    .line 825
    :cond_5b9
    const-string v17, "cw_deactivation"

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8e

    .line 827
    const/16 v17, 0x0

    const-string v18, "value"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->cw_deactivation:Ljava/lang/String;
    :try_end_5d7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4d9 .. :try_end_5d7} :catch_c1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4d9 .. :try_end_5d7} :catch_4ad
    .catch Ljava/io/IOException; {:try_start_4d9 .. :try_end_5d7} :catch_4d3

    goto/16 :goto_8e

    .line 843
    .end local v15           #xml:Landroid/content/res/XmlResourceParser;
    .end local v16           #xmlEventType:I
    :cond_5d9
    const/16 v17, 0x0

    goto/16 :goto_de
.end method

.method protected onMMIComplete(Landroid/os/AsyncResult;)V
    .registers 6
    .parameter "r"

    .prologue
    const/4 v3, 0x0

    .line 1657
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/MmiCode;

    .line 1658
    .local v0, mmiCode:Lcom/android/internal/telephony/MmiCode;
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-static {v1, v2, v0, v3, v3}, Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V

    .line 1659
    return-void
.end method

.method public orientationChanged(I)V
    .registers 3
    .parameter "orientation"

    .prologue
    .line 1607
    iput p1, p0, Lcom/android/phone/PhoneApp;->mOrientation:I

    .line 1608
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 1609
    return-void
.end method

.method pokeUserActivity()V
    .registers 6

    .prologue
    .line 1462
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/IPowerManager;->userActivity(JZ)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 1466
    :goto_a
    return-void

    .line 1463
    :catch_b
    move-exception v0

    .line 1464
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPowerManagerService.userActivity() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method preventScreenOn(Z)V
    .registers 6
    .parameter "prevent"

    .prologue
    .line 1427
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->preventScreenOn(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1431
    :goto_5
    return-void

    .line 1428
    :catch_6
    move-exception v0

    .line 1429
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPowerManagerService.preventScreenOn() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method proximitySensorModeEnabled()Z
    .registers 2

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public removeSubscriptionListenr(Lcom/android/phone/MSimPhoneApp$SubscriptionChangeListener;)V
    .registers 5
    .parameter "aListener"

    .prologue
    .line 2378
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected requestUpdateBluetoothIndication()V
    .registers 2

    .prologue
    .line 2392
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->requestUpdateBluetoothIndication()V

    .line 2393
    :cond_b
    return-void
.end method

.method requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V
    .registers 4
    .parameter "ws"

    .prologue
    .line 1274
    monitor-enter p0

    .line 1275
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    if-eq v0, p1, :cond_2c

    .line 1276
    sget-object v0, Lcom/android/phone/PhoneApp$2;->$SwitchMap$com$android$phone$PhoneApp$WakeState:[I

    invoke-virtual {p1}, Lcom/android/phone/PhoneApp$WakeState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_58

    .line 1296
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1297
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1299
    :cond_1d
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1300
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1304
    :cond_2a
    :goto_2a
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    .line 1306
    :cond_2c
    monitor-exit p0

    .line 1307
    return-void

    .line 1280
    :pswitch_2e
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1281
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1282
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_2a

    .line 1306
    :catchall_41
    move-exception v0

    monitor-exit p0
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_41

    throw v0

    .line 1288
    :pswitch_44
    :try_start_44
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1289
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1290
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_56
    .catchall {:try_start_44 .. :try_end_56} :catchall_41

    goto :goto_2a

    .line 1276
    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_44
    .end packed-switch
.end method

.method resetInCallFragmentInstance(I)V
    .registers 5
    .parameter "subscription"

    .prologue
    .line 2309
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resetmActiveSubscription()V
    .registers 4

    .prologue
    .line 2322
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resetmRingingSubscription()V
    .registers 4

    .prologue
    .line 2336
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setBeginningCall(Z)V
    .registers 3
    .parameter "beginning"

    .prologue
    .line 1476
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mBeginningCall:Z

    .line 1478
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 1479
    return-void
.end method

.method public setCDMACallReallyConnected(Z)V
    .registers 5
    .parameter "isCDMACallReallyConnected"

    .prologue
    .line 2352
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setCachedSimPin(Ljava/lang/String;)V
    .registers 2
    .parameter "pin"

    .prologue
    .line 995
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mCachedSimPin:Ljava/lang/String;

    .line 996
    return-void
.end method

.method public setGsmCallRemoteAnswered(Z)V
    .registers 5
    .parameter "isCDMACallReallyConnected"

    .prologue
    .line 2362
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setIgnoreTouchUserActivity(Z)V
    .registers 2
    .parameter "ignore"

    .prologue
    .line 1448
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mIgnoreTouchUserActivity:Z

    .line 1449
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->updatePokeLock()V

    .line 1450
    return-void
.end method

.method setInCallFragmentInstance(ILcom/android/phone/InCallFragment;)V
    .registers 6
    .parameter "subscription"
    .parameter "f"

    .prologue
    .line 2305
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .registers 2
    .parameter "inCallScreen"

    .prologue
    .line 999
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 1000
    return-void
.end method

.method setInCallScreenInstance_DSDA(Lcom/android/phone/InCallScreen_DSDA;)V
    .registers 5
    .parameter "inCallScreen"

    .prologue
    .line 1005
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInvalidateInCallControls(Z)V
    .registers 5
    .parameter "b"

    .prologue
    .line 2397
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLatestActiveCallOrigin(Ljava/lang/String;)V
    .registers 3
    .parameter "callOrigin"

    .prologue
    .line 2195
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-object p1, v0, Lcom/android/phone/InCallUiState;->latestActiveCallOrigin:Ljava/lang/String;

    .line 2196
    return-void
.end method

.method setPukEntryActivity(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 1143
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    .line 1144
    return-void
.end method

.method setPukEntryProgressDialog(Landroid/app/ProgressDialog;)V
    .registers 2
    .parameter "dialog"

    .prologue
    .line 1160
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    .line 1161
    return-void
.end method

.method setRestoreMuteOnInCallResume(Z)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 352
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mShouldRestoreMuteOnInCallResume:Z

    .line 353
    return-void
.end method

.method setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V
    .registers 3
    .parameter "duration"

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    if-ne p1, v0, :cond_5

    .line 1206
    :cond_4
    :goto_4
    return-void

    .line 1201
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->proximitySensorModeEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1204
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    .line 1205
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->updatePokeLock()V

    goto :goto_4
.end method

.method public setSilentHangupFlag()V
    .registers 2

    .prologue
    .line 2273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/PhoneApp;->mSilentHangupFlag:Z

    .line 2274
    return-void
.end method

.method public setSubscriptionListener(Lcom/android/phone/MSimPhoneApp$SubscriptionChangeListener;)V
    .registers 5
    .parameter "aListener"

    .prologue
    .line 2374
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setUSSDDialog(Landroid/app/AlertDialog;)V
    .registers 2
    .parameter "dialog"

    .prologue
    .line 1165
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mMMIDialogDisplayed:Landroid/app/AlertDialog;

    .line 1166
    return-void
.end method

.method public setmActiveSubscription(I)V
    .registers 5
    .parameter "activeSubscription"

    .prologue
    .line 2318
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setmRingingSubscription(I)V
    .registers 5
    .parameter "sub"

    .prologue
    .line 2328
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method showBluetoothIndication()Z
    .registers 2

    .prologue
    .line 1734
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mShowBluetoothIndication:Z

    return v0
.end method

.method protected updateAfterRadioTechnologyChange()V
    .registers 2

    .prologue
    .line 1706
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_9

    .line 1707
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->updateAfterRadioTechnologyChange()V

    .line 1709
    :cond_9
    return-void
.end method

.method updateBluetoothIndication(Z)V
    .registers 5
    .parameter "forceUiUpdate"

    .prologue
    .line 1748
    iget v0, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetState:I

    iget v1, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetAudioState:I

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneApp;->shouldShowBluetoothIndication(IILcom/android/internal/telephony/CallManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/PhoneApp;->mShowBluetoothIndication:Z

    .line 1751
    if-eqz p1, :cond_23

    .line 1756
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->requestUpdateBluetoothIndication()V

    .line 1759
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_1c

    const-string v0, "PhoneApp"

    const-string v1, "- updating in-call notification for BT state change..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    :cond_1c
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1764
    :cond_23
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 1765
    return-void
.end method

.method updateInCallScreen()V
    .registers 3

    .prologue
    .line 2134
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "PhoneApp"

    const-string v1, "- updateInCallScreen()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    :cond_b
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_14

    .line 2139
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    .line 2141
    :cond_14
    return-void
.end method

.method protected updateKeyguardPolicy(Lcom/android/internal/telephony/Phone$State;)V
    .registers 4
    .parameter "state"

    .prologue
    .line 2388
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v0, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne p1, v0, :cond_f

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->updateKeyguardPolicy(Z)V

    .line 2389
    :cond_e
    return-void

    .line 2388
    :cond_f
    const/4 v0, 0x0

    goto :goto_b
.end method

.method updatePhoneState(Lcom/android/internal/telephony/Phone$State;)V
    .registers 5
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 1616
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    if-eq p1, v0, :cond_1f

    .line 1617
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    .line 1618
    invoke-virtual {p0, p1}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 1619
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

    if-eqz v0, :cond_1a

    .line 1621
    iput v1, p0, Lcom/android/phone/PhoneApp;->mOrientation:I

    .line 1622
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

    sget-object v0, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne p1, v0, :cond_20

    const/4 v0, 0x1

    :goto_17
    invoke-virtual {v2, v0}, Lcom/android/phone/AccelerometerListener;->enable(Z)V

    .line 1625
    :cond_1a
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mBeginningCall:Z

    .line 1633
    invoke-virtual {p0, p1}, Lcom/android/phone/PhoneApp;->updateKeyguardPolicy(Lcom/android/internal/telephony/Phone$State;)V

    .line 1637
    :cond_1f
    return-void

    :cond_20
    move v0, v1

    .line 1622
    goto :goto_17
.end method

.method updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V
    .registers 22
    .parameter "state"

    .prologue
    .line 1513
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v15}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 1515
    .local v12, prefs:Landroid/content/SharedPreferences;
    const-string v15, "ProximitySensor"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v12, v15, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 1516
    .local v10, isUseProxitimy:I
    if-nez v10, :cond_2c

    .line 1517
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v15, :cond_2b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v15}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v15

    if-eqz v15, :cond_2b

    .line 1518
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v15}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1604
    :cond_2b
    :goto_2b
    return-void

    .line 1523
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->proximitySensorModeEnabled()Z

    move-result v15

    if-eqz v15, :cond_2b

    .line 1524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1528
    :try_start_39
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v15

    if-nez v15, :cond_6d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_6d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v15, :cond_59

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v15}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v15

    if-nez v15, :cond_6d

    :cond_59
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/phone/PhoneApp;->mIsHardKeyboardOpen:Z

    if-nez v15, :cond_6d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v15}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v15

    invoke-static {v15}, Lcom/android/phone/PhoneUtils;->isIMSVideoCallActive(Lcom/android/internal/telephony/Call;)Z

    move-result v15

    if-eqz v15, :cond_af

    :cond_6d
    const/4 v14, 0x1

    .line 1538
    .local v14, screenOnImmediately:Z
    :goto_6e
    const/4 v8, 0x0

    .line 1539
    .local v8, horizontal:Z
    sget-boolean v15, Lcom/android/phone/PhoneApp;->isProximitySensorAccelerated:Z

    if-nez v15, :cond_7e

    .line 1540
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/phone/PhoneApp;->mOrientation:I

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v15, v0, :cond_b1

    const/4 v8, 0x1

    .line 1544
    :cond_7e
    :goto_7e
    sget-object v15, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, p1

    if-eq v0, v15, :cond_8a

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/phone/PhoneApp;->mBeginningCall:Z

    if-eqz v15, :cond_b3

    :cond_8a
    if-nez v14, :cond_b3

    .line 1547
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v15}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v15

    if-nez v15, :cond_aa

    .line 1548
    sget-boolean v15, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v15, :cond_a3

    const-string v15, "PhoneApp"

    const-string v17, "updateProximitySensorMode: acquiring..."

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    :cond_a3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v15}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1602
    :cond_aa
    :goto_aa
    monitor-exit v16

    goto :goto_2b

    .end local v8           #horizontal:Z
    .end local v14           #screenOnImmediately:Z
    :catchall_ac
    move-exception v15

    monitor-exit v16
    :try_end_ae
    .catchall {:try_start_39 .. :try_end_ae} :catchall_ac

    throw v15

    .line 1528
    :cond_af
    const/4 v14, 0x0

    goto :goto_6e

    .line 1540
    .restart local v8       #horizontal:Z
    .restart local v14       #screenOnImmediately:Z
    :cond_b1
    const/4 v8, 0x0

    goto :goto_7e

    .line 1556
    :cond_b3
    :try_start_b3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v15}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v15

    if-eqz v15, :cond_aa

    .line 1557
    sget-boolean v15, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v15, :cond_ca

    const-string v15, "PhoneApp"

    const-string v17, "updateProximitySensorMode: releasing..."

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    :cond_ca
    const/4 v7, 0x0

    .line 1570
    .local v7, flags:I
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "screen_no_change_2nd_call_ring"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    if-ne v15, v0, :cond_11d

    const/4 v13, 0x1

    .line 1571
    .local v13, screenNoChange2ndCallRing:Z
    :goto_e3
    const/4 v5, 0x0

    .line 1572
    .local v5, conCount:I
    const/4 v15, 0x1

    if-ne v15, v13, :cond_184

    sget-object v15, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, p1

    if-ne v0, v15, :cond_184

    .line 1573
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v15}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v2

    .line 1575
    .local v2, allPhone:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Phone;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_f9
    :goto_f9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_145

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/Phone;

    .line 1576
    .local v11, ph:Lcom/android/internal/telephony/Phone;
    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v15

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v15, v0, :cond_11f

    .line 1577
    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 1578
    .local v4, cdmaCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    add-int/2addr v5, v15

    .line 1579
    goto :goto_f9

    .line 1570
    .end local v2           #allPhone:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Phone;>;"
    .end local v4           #cdmaCall:Lcom/android/internal/telephony/Call;
    .end local v5           #conCount:I
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v11           #ph:Lcom/android/internal/telephony/Phone;
    .end local v13           #screenNoChange2ndCallRing:Z
    :cond_11d
    const/4 v13, 0x0

    goto :goto_e3

    .line 1579
    .restart local v2       #allPhone:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Phone;>;"
    .restart local v5       #conCount:I
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v11       #ph:Lcom/android/internal/telephony/Phone;
    .restart local v13       #screenNoChange2ndCallRing:Z
    :cond_11f
    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_f9

    .line 1580
    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 1581
    .local v6, fgCall:Lcom/android/internal/telephony/Call;
    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 1582
    .local v3, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    add-int v15, v15, v17

    add-int/2addr v5, v15

    goto :goto_f9

    .line 1586
    .end local v3           #bgCall:Lcom/android/internal/telephony/Call;
    .end local v6           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v11           #ph:Lcom/android/internal/telephony/Phone;
    :cond_145
    const/4 v15, 0x1

    if-lt v5, v15, :cond_184

    .line 1587
    const-string v15, "PhoneApp"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "screenNoChange2ndCallRing----->"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "    state----->"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "    conCount------>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ": the second call is ringing,do nothing!"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    .end local v2           #allPhone:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Phone;>;"
    .end local v9           #i$:Ljava/util/Iterator;
    :cond_184
    if-nez v5, :cond_aa

    .line 1592
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v15, v7}, Landroid/os/PowerManager$WakeLock;->release(I)V

    .line 1593
    const-string v15, "PhoneApp"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "screenNoChange2ndCallRing----->"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "    state----->"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "    conCount------>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ",release ProximityWakeLock!"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c9
    .catchall {:try_start_b3 .. :try_end_1c9} :catchall_ac

    goto/16 :goto_aa
.end method

.method updateWakeState()V
    .registers 15

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1338
    iget-object v11, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v8

    .line 1343
    .local v8, state:Lcom/android/internal/telephony/Phone$State;
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v3

    .line 1350
    .local v3, isShowingCallScreen:Z
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isDialerOpened()Z

    move-result v0

    .line 1361
    .local v0, isDialerOpened:Z
    sget-object v11, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v8, v11, :cond_dc

    iget-object v11, p0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_dc

    move v4, v9

    .line 1370
    .local v4, isSpeakerInUse:Z
    :goto_1d
    sget-boolean v11, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v11, :cond_53

    const-string v11, "PhoneApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateWakeState: callscreen "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", dialer "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", speaker "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "..."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    :cond_53
    sget-object v11, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {p0, v11}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 1401
    sget-object v11, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v8, v11, :cond_df

    move v2, v9

    .line 1402
    .local v2, isRinging:Z
    :goto_5d
    iget-object v11, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_e2

    move v1, v9

    .line 1403
    .local v1, isDialing:Z
    :goto_6c
    iget-object v11, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->hasDisconnectedConnections(Lcom/android/internal/telephony/Phone;)Z

    move-result v11

    if-eqz v11, :cond_e4

    if-eqz v3, :cond_e4

    move v7, v9

    .line 1405
    .local v7, showingDisconnectedConnection:Z
    :goto_77
    iget-object v11, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->isIMSVideoCallActive(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    .line 1406
    .local v5, isVideoCallActive:Z
    if-nez v2, :cond_89

    if-nez v1, :cond_89

    if-nez v7, :cond_89

    if-eqz v5, :cond_e6

    :cond_89
    move v6, v9

    .line 1408
    .local v6, keepScreenOn:Z
    :goto_8a
    sget-boolean v9, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v9, :cond_d4

    const-string v9, "PhoneApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateWakeState: keepScreenOn = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (isRinging "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", isDialing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", showingDisc "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", isVideoCallActive "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    :cond_d4
    if-eqz v6, :cond_e8

    sget-object v9, Lcom/android/phone/PhoneApp$WakeState;->FULL:Lcom/android/phone/PhoneApp$WakeState;

    :goto_d8
    invoke-virtual {p0, v9}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 1416
    return-void

    .end local v1           #isDialing:Z
    .end local v2           #isRinging:Z
    .end local v4           #isSpeakerInUse:Z
    .end local v5           #isVideoCallActive:Z
    .end local v6           #keepScreenOn:Z
    .end local v7           #showingDisconnectedConnection:Z
    :cond_dc
    move v4, v10

    .line 1361
    goto/16 :goto_1d

    .restart local v4       #isSpeakerInUse:Z
    :cond_df
    move v2, v10

    .line 1401
    goto/16 :goto_5d

    .restart local v2       #isRinging:Z
    :cond_e2
    move v1, v10

    .line 1402
    goto :goto_6c

    .restart local v1       #isDialing:Z
    :cond_e4
    move v7, v10

    .line 1403
    goto :goto_77

    .restart local v5       #isVideoCallActive:Z
    .restart local v7       #showingDisconnectedConnection:Z
    :cond_e6
    move v6, v10

    .line 1406
    goto :goto_8a

    .line 1415
    .restart local v6       #keepScreenOn:Z
    :cond_e8
    sget-object v9, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    goto :goto_d8
.end method

.method wakeUpScreen()V
    .registers 6

    .prologue
    .line 1314
    monitor-enter p0

    .line 1315
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    if-ne v0, v1, :cond_1d

    .line 1316
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_12

    const-string v0, "PhoneApp"

    const-string v1, "pulse screen lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1f

    .line 1318
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IPowerManager;->userActivityWithForce(JZZ)V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1f
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1d} :catch_22

    .line 1323
    :cond_1d
    :goto_1d
    :try_start_1d
    monitor-exit p0

    .line 1324
    return-void

    .line 1323
    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_1f

    throw v0

    .line 1319
    :catch_22
    move-exception v0

    goto :goto_1d
.end method
