.class public Lcom/android/phone/MSimCallFeaturesSetting;
.super Landroid/preference/PreferenceActivity;
.source "MSimCallFeaturesSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;,
        Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProvider;
    }
.end annotation


# static fields
.field public static final ACTION_ADD_VOICEMAIL:Ljava/lang/String; = "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

.field public static final ACTION_CONFIGURE_VOICEMAIL:Ljava/lang/String; = "com.android.phone.CallFeaturesSettingUG.CONFIGURE_VOICEMAIL"

.field private static final BUTTON_DTMF_KEY:Ljava/lang/String; = "button_dtmf_settings"

.field private static final BUTTON_HAC_KEY:Ljava/lang/String; = "button_hac_key"

.field private static final BUTTON_RETRY_KEY:Ljava/lang/String; = "button_auto_retry_key"

.field private static final BUTTON_SELECT_SUB_KEY:Ljava/lang/String; = "button_call_independent_serv"

.field private static final BUTTON_TTY_KEY:Ljava/lang/String; = "button_tty_mode_key"

.field private static final BUTTON_XDIVERT_KEY:Ljava/lang/String; = "button_xdivert"

.field private static final DBG:Z = false

.field public static final DEFAULT_VM_PROVIDER_KEY:[Ljava/lang/String; = null

.field static final DTMF_TONE_TYPE_LONG:I = 0x1

.field static final DTMF_TONE_TYPE_NORMAL:I = 0x0

.field private static final EVENT_FORWARDING_CHANGED:I = 0x1fe

.field private static final EVENT_FORWARDING_GET_COMPLETED:I = 0x208

.field private static final EVENT_VOICEMAIL_CHANGED:I = 0x1f4

.field static final FORWARDING_SETTINGS_REASONS:[I = null

.field public static final FWD_NUMBER_EXTRA:Ljava/lang/String; = "com.android.phone.ForwardingNumber"

.field public static final FWD_NUMBER_TIME_EXTRA:Ljava/lang/String; = "com.android.phone.ForwardingNumberTime"

.field public static final FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo; = null

.field public static final FWD_SETTINGS_LENGTH_TAG:Ljava/lang/String; = "#Length"

.field public static final FWD_SETTINGS_TAG:Ljava/lang/String; = "#FWDSettings1"

.field public static final FWD_SETTING_NUMBER:Ljava/lang/String; = "#Number"

.field public static final FWD_SETTING_REASON:Ljava/lang/String; = "#Reason"

.field public static final FWD_SETTING_STATUS:Ljava/lang/String; = "#Status"

.field public static final FWD_SETTING_TAG:Ljava/lang/String; = "#Setting"

.field public static final FWD_SETTING_TIME:Ljava/lang/String; = "#Time"

.field private static final FW_GET_RESPONSE_ERROR:I = 0x1ae

.field private static final FW_SET_RESPONSE_ERROR:I = 0x1a4

.field public static final HAC_KEY:Ljava/lang/String; = "HACSetting"

.field public static final HAC_VAL_OFF:Ljava/lang/String; = "OFF"

.field public static final HAC_VAL_ON:Ljava/lang/String; = "ON"

.field public static final IGNORE_PROVIDER_EXTRA:Ljava/lang/String; = "com.android.phone.ProviderToIgnore"

.field private static final IP_CALL_SETTINGS_CFG_ID:I = 0x14

#the value of this static final field might be set in the static constructor
.field private static final IS_UMTS_GSM:Z = false

.field private static final KEY_CDMA_CALLFORWARD:Ljava/lang/String; = "button_cdma_cf_key"

.field private static final KEY_CDMA_MORE_EXPAND:Ljava/lang/String; = "button_cdma_more_expand_key"

.field private static final KEY_FDN1:Ljava/lang/String; = "button_fdn_key1"

.field private static final KEY_FDN2:Ljava/lang/String; = "button_fdn_key2"

.field private static final KEY_GSM_CALLFORWARD1:Ljava/lang/String; = "button_gsm_cf_expand_key1"

.field private static final KEY_GSM_CALLFORWARD2:Ljava/lang/String; = "button_gsm_cf_expand_key2"

.field private static final KEY_GSM_MORE_EXPAND1:Ljava/lang/String; = "button_gsm_more_expand_key1"

.field private static final KEY_GSM_MORE_EXPAND2:Ljava/lang/String; = "button_gsm_more_expand_key2"

.field private static final KEY_IPCALL_SETTING1:Ljava/lang/String; = "button_ipcall_setting_key1"

.field private static final KEY_IPCALL_SETTING2:Ljava/lang/String; = "button_ipcall_setting_key2"

.field private static final KEY_RESPOND_VIA_SMS:Ljava/lang/String; = "button_respond_via_sms_key"

.field private static final KEY_SIM1:Ljava/lang/String; = "button_sim_key1"

.field private static final KEY_SIM2:Ljava/lang/String; = "button_sim_key2"

.field private static final KEY_VOICEMAIL_EDIT_SETTING1:Ljava/lang/String; = "button_voicemail_key1"

.field private static final KEY_VOICEMAIL_EDIT_SETTING2:Ljava/lang/String; = "button_voicemail_key2"

.field private static final KEY_VOICEMAIL_PROVIDER1:Ljava/lang/String; = "button_voicemail_provider_key1"

.field private static final KEY_VOICEMAIL_PROVIDER2:Ljava/lang/String; = "button_voicemail_provider_key2"

.field private static final KEY_VOICEMAIL_SETTING1:Ljava/lang/String; = "button_voicemail_setting_key1"

.field private static final KEY_VOICEMAIL_SETTING2:Ljava/lang/String; = "button_voicemail_setting_key2"

.field private static final LOCAL_LOGV:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "MSimCallFeaturesSetting"

.field private static final MSG_FW_GET_EXCEPTION:I = 0x2d0

.field private static final MSG_FW_SET_EXCEPTION:I = 0x2c6

.field private static final MSG_OK:I = 0x64

.field private static final MSG_VM_EXCEPTION:I = 0x2bc

.field private static final MSG_VM_NOCHANGE:I = 0x2e4

.field private static final MSG_VM_OK:I = 0x2da

.field private static final NUM_PROJECTION:[Ljava/lang/String; = null

.field public static final SIGNOUT_EXTRA:Ljava/lang/String; = "com.android.phone.Signout"

.field private static final SIM_COUNT:I = 0x2

.field public static final SUBSCRIPTION_ID:Ljava/lang/String; = "SUBSCRIPTION_ID"

.field private static final VM_NOCHANGE_ERROR:I = 0x190

.field private static final VM_NUMBERS_SHARED_PREFERENCES_NAME1:Ljava/lang/String; = "vm_numbers1"

.field private static final VM_NUMBERS_SHARED_PREFERENCES_NAME2:Ljava/lang/String; = "vm_numbers2"

.field public static final VM_NUMBER_EXTRA:Ljava/lang/String; = "com.android.phone.VoicemailNumber"

.field public static final VM_NUMBER_TAG:Ljava/lang/String; = "#VMNumber1"

.field private static final VM_RESPONSE_ERROR:I = 0x19a

.field private static final VOICEMAIL_DIALOG_CONFIRM:I = 0x258

.field private static final VOICEMAIL_FWD_READING_DIALOG:I = 0x26c

.field private static final VOICEMAIL_FWD_SAVING_DIALOG:I = 0x262

.field private static final VOICEMAIL_PREF_ID:I = 0x1

.field private static final VOICEMAIL_PROVIDER_CFG_ID:I = 0xa

.field private static final VOICEMAIL_REVERTING_DIALOG:I = 0x276

.field static final preferredTtyMode:I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

.field private mButtonDTMF:Landroid/preference/ListPreference;

.field private mButtonHAC:Landroid/preference/CheckBoxPreference;

.field mButtonQuickResponses:Landroid/preference/PreferenceScreen;

.field private mButtonTTY:Landroid/preference/ListPreference;

.field private mButtonXDivert:Landroid/preference/PreferenceScreen;

.field private mCallForward:[Landroid/preference/PreferenceScreen;

.field mChangingVMorFwdDueToProviderChange:[Z

.field mCurrentDialogId:I

.field private mExpectedChangeResultReasons:[Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mForeground:Z

.field private mForwardingChangeResults:[Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/AsyncResult;",
            ">;"
        }
    .end annotation
.end field

.field mForwardingReadResults:[[Lcom/android/internal/telephony/CallForwardInfo;

.field mFwdChangesRequireRollback:[Z

.field private final mGetOptionComplete:Landroid/os/Handler;

.field private mIPCallSettings:[Landroid/preference/PreferenceScreen;

.field private mIsSubActive:[Z

.field private mLine1Number:[Ljava/lang/String;

.field private mMoreOptions:[Landroid/preference/PreferenceScreen;

.field private mNewFwdSettings:[[Lcom/android/internal/telephony/CallForwardInfo;

.field mNewVMNumber:[Ljava/lang/String;

.field private mNumPhones:I

.field private mOldVmNumber:[Ljava/lang/String;

.field mPerProviderSavedVMNumbers:[Landroid/content/SharedPreferences;

.field protected mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneObj:[Lcom/android/internal/telephony/Phone;

.field private mPhoneType:[I

.field mPreviousVMProviderKey:[Ljava/lang/String;

.field private mRawNumber:[Ljava/lang/String;

.field private mReadingSettingsForDefaultProvider:[Z

.field private final mRevertOptionComplete:Landroid/os/Handler;

.field private final mSetOptionComplete:Landroid/os/Handler;

.field mSimCategory:[Landroid/preference/PreferenceCategory;

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSubManager:Lcom/android/internal/telephony/SubscriptionManager;

.field private mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

.field private mSubscriptionPrefFDN:[Landroid/preference/PreferenceScreen;

.field mVMChangeCompletedSuccesfully:[Z

.field mVMOrFwdSetError:[I

.field mVMProviderSettingsForced:[Z

.field private mVMProvidersData:[Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProvider;",
            ">;"
        }
    .end annotation
.end field

.field mVoicemailChangeResult:[Landroid/os/AsyncResult;

.field mVoicemailProviders:[Landroid/preference/ListPreference;

.field mVoicemailSettings:[Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 235
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/MSimCallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 251
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "vm1"

    aput-object v1, v0, v2

    const-string v1, "vm2"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/MSimCallFeaturesSetting;->DEFAULT_VM_PROVIDER_KEY:[Ljava/lang/String;

    .line 259
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/MSimCallFeaturesSetting;->NUM_PROJECTION:[Ljava/lang/String;

    .line 280
    const-string v0, "ro.config.dsds_mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "umts_gsm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/MSimCallFeaturesSetting;->IS_UMTS_GSM:Z

    .line 295
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_32

    sput-object v0, Lcom/android/phone/MSimCallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    return-void

    nop

    :array_32
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x2

    .line 102
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 377
    new-array v0, v1, [Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPerProviderSavedVMNumbers:[Landroid/content/SharedPreferences;

    .line 382
    new-array v0, v1, [[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingReadResults:[[Lcom/android/internal/telephony/CallForwardInfo;

    .line 388
    new-array v0, v1, [Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingChangeResults:[Ljava/util/Map;

    .line 395
    new-array v0, v1, [Ljava/util/Collection;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mExpectedChangeResultReasons:[Ljava/util/Collection;

    .line 400
    new-array v0, v1, [Landroid/os/AsyncResult;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailChangeResult:[Landroid/os/AsyncResult;

    .line 405
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPreviousVMProviderKey:[Ljava/lang/String;

    .line 410
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mCurrentDialogId:I

    .line 416
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMProviderSettingsForced:[Z

    .line 422
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:[Z

    .line 428
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMChangeCompletedSuccesfully:[Z

    .line 434
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mFwdChangesRequireRollback:[Z

    .line 440
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMOrFwdSetError:[I

    .line 450
    new-array v0, v1, [Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMProvidersData:[Ljava/util/Map;

    .line 453
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mOldVmNumber:[Ljava/lang/String;

    .line 458
    new-array v0, v1, [[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNewFwdSettings:[[Lcom/android/internal/telephony/CallForwardInfo;

    .line 459
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNewVMNumber:[Ljava/lang/String;

    .line 478
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mReadingSettingsForDefaultProvider:[Z

    .line 923
    new-instance v0, Lcom/android/phone/MSimCallFeaturesSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MSimCallFeaturesSetting$1;-><init>(Lcom/android/phone/MSimCallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mGetOptionComplete:Landroid/os/Handler;

    .line 1091
    new-instance v0, Lcom/android/phone/MSimCallFeaturesSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/MSimCallFeaturesSetting$2;-><init>(Lcom/android/phone/MSimCallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSetOptionComplete:Landroid/os/Handler;

    .line 1156
    new-instance v0, Lcom/android/phone/MSimCallFeaturesSetting$3;

    invoke-direct {v0, p0}, Lcom/android/phone/MSimCallFeaturesSetting$3;-><init>(Lcom/android/phone/MSimCallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mRevertOptionComplete:Landroid/os/Handler;

    .line 1830
    new-instance v0, Lcom/android/phone/MSimCallFeaturesSetting$6;

    invoke-direct {v0, p0}, Lcom/android/phone/MSimCallFeaturesSetting$6;-><init>(Lcom/android/phone/MSimCallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private DisableSetting(I)V
    .registers 4
    .parameter "sub"

    .prologue
    const/4 v1, 0x0

    .line 1480
    sget-boolean v0, Lcom/android/phone/ipcallsetting/IPCallUtils;->IS_SUPPORT_IPCALL:Z

    if-eqz v0, :cond_c

    .line 1482
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mIPCallSettings:[Landroid/preference/PreferenceScreen;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1485
    :cond_c
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubscriptionPrefFDN:[Landroid/preference/PreferenceScreen;

    aget-object v0, v0, p1

    if-eqz v0, :cond_19

    .line 1487
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubscriptionPrefFDN:[Landroid/preference/PreferenceScreen;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1489
    :cond_19
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    aget-object v0, v0, p1

    if-eqz v0, :cond_26

    .line 1491
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setEnabled(Z)V

    .line 1493
    :cond_26
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailProviders:[Landroid/preference/ListPreference;

    aget-object v0, v0, p1

    if-eqz v0, :cond_33

    .line 1495
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailProviders:[Landroid/preference/ListPreference;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1497
    :cond_33
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mCallForward:[Landroid/preference/PreferenceScreen;

    aget-object v0, v0, p1

    if-eqz v0, :cond_40

    .line 1499
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mCallForward:[Landroid/preference/PreferenceScreen;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1501
    :cond_40
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mMoreOptions:[Landroid/preference/PreferenceScreen;

    aget-object v0, v0, p1

    if-eqz v0, :cond_4d

    .line 1503
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mMoreOptions:[Landroid/preference/PreferenceScreen;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1505
    :cond_4d
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MSimCallFeaturesSetting;I)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->checkVMChangeSuccess(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/MSimCallFeaturesSetting;)[Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingChangeResults:[Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/MSimCallFeaturesSetting;I)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->checkForwardingCompleted(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/MSimCallFeaturesSetting;I)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->checkFwdChangeSuccess(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/MSimCallFeaturesSetting;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->dismissDialogSafely(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/MSimCallFeaturesSetting;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->handleSetVMOrFwdMessage(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/MSimCallFeaturesSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->enableOrDisableCallFeatureSettings()V

    return-void
.end method

.method private checkForwardingCompleted(I)Z
    .registers 6
    .parameter "sub"

    .prologue
    .line 1200
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingChangeResults:[Ljava/util/Map;

    aget-object v3, v3, p1

    if-nez v3, :cond_8

    .line 1201
    const/4 v2, 0x1

    .line 1213
    .local v2, result:Z
    :cond_7
    :goto_7
    return v2

    .line 1205
    .end local v2           #result:Z
    :cond_8
    const/4 v2, 0x1

    .line 1206
    .restart local v2       #result:Z
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mExpectedChangeResultReasons:[Ljava/util/Collection;

    aget-object v3, v3, p1

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1207
    .local v1, reason:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingChangeResults:[Ljava/util/Map;

    aget-object v3, v3, p1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_11

    .line 1208
    const/4 v2, 0x0

    .line 1209
    goto :goto_7
.end method

.method private checkFwdChangeSuccess(I)Ljava/lang/String;
    .registers 7
    .parameter "sub"

    .prologue
    .line 1219
    const/4 v3, 0x0

    .line 1220
    .local v3, result:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingChangeResults:[Ljava/util/Map;

    aget-object v4, v4, p1

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1222
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;>;"
    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1223
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1224
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v1, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1225
    .local v1, exception:Ljava/lang/Throwable;
    if-eqz v1, :cond_d

    .line 1226
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 1227
    if-nez v3, :cond_2b

    .line 1228
    const-string v3, ""

    .line 1233
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    .end local v1           #exception:Ljava/lang/Throwable;
    :cond_2b
    return-object v3
.end method

.method private checkVMChangeSuccess(I)Ljava/lang/String;
    .registers 4
    .parameter "sub"

    .prologue
    .line 1240
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailChangeResult:[Landroid/os/AsyncResult;

    aget-object v1, v1, p1

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_17

    .line 1241
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailChangeResult:[Landroid/os/AsyncResult;

    aget-object v1, v1, p1

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1242
    .local v0, msg:Ljava/lang/String;
    if-nez v0, :cond_16

    .line 1243
    const-string v0, ""

    .line 1247
    .end local v0           #msg:Ljava/lang/String;
    :cond_16
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private deleteSettingsForVoicemailProvider(Ljava/lang/String;I)V
    .registers 6
    .parameter "key"
    .parameter "sub"

    .prologue
    .line 2164
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailProviders:[Landroid/preference/ListPreference;

    aget-object v0, v0, p2

    if-nez v0, :cond_7

    .line 2171
    :goto_6
    return-void

    .line 2167
    :cond_7
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPerProviderSavedVMNumbers:[Landroid/content/SharedPreferences;

    aget-object v0, v0, p2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#VMNumber1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#FWDSettings1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#Length"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_6
.end method

.method private dismissDialogSafely(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 869
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->dismissDialog(I)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    .line 875
    :goto_3
    return-void

    .line 870
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method private enableOrDisableCallFeatureSettings()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1839
    const/4 v0, 0x0

    .local v0, lSubscription:I
    :goto_3
    iget v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    if-ge v0, v1, :cond_3f

    .line 1840
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSimCategory:[Landroid/preference/PreferenceCategory;

    aget-object v1, v1, v0

    if-eqz v1, :cond_30

    .line 1842
    iget-object v4, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mIsSubActive:[Z

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubManager:Lcom/android/internal/telephony/SubscriptionManager;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionManager;->isSubActive(I)Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubManager:Lcom/android/internal/telephony/SubscriptionManager;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionManager;->isCardPresent(I)Z

    move-result v1

    if-eqz v1, :cond_33

    move v1, v2

    :goto_20
    aput-boolean v1, v4, v0

    .line 1844
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSimCategory:[Landroid/preference/PreferenceCategory;

    aget-object v4, v1, v0

    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v3

    :goto_2d
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 1839
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_33
    move v1, v3

    .line 1842
    goto :goto_20

    .line 1844
    :cond_35
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mIsSubActive:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_3d

    move v1, v2

    goto :goto_2d

    :cond_3d
    move v1, v3

    goto :goto_2d

    .line 1848
    :cond_3f
    return-void
.end method

.method private getCurrentVoicemailProviderKey(I)Ljava/lang/String;
    .registers 4
    .parameter "sub"

    .prologue
    .line 2174
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailProviders:[Landroid/preference/ListPreference;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 2175
    .local v0, key:Ljava/lang/String;
    if-eqz v0, :cond_b

    .end local v0           #key:Ljava/lang/String;
    :goto_a
    return-object v0

    .restart local v0       #key:Ljava/lang/String;
    :cond_b
    sget-object v1, Lcom/android/phone/MSimCallFeaturesSetting;->DEFAULT_VM_PROVIDER_KEY:[Ljava/lang/String;

    aget-object v0, v1, p1

    goto :goto_a
.end method

.method private handleSetVMOrFwdMessage(I)V
    .registers 7
    .parameter "sub"

    .prologue
    .line 1254
    const/4 v2, 0x1

    .line 1255
    .local v2, success:Z
    const/4 v1, 0x0

    .line 1256
    .local v1, fwdFailure:Z
    const-string v0, ""

    .line 1257
    .local v0, exceptionMessage:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingChangeResults:[Ljava/util/Map;

    aget-object v3, v3, p1

    if-eqz v3, :cond_12

    .line 1258
    invoke-direct {p0, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->checkFwdChangeSuccess(I)Ljava/lang/String;

    move-result-object v0

    .line 1259
    if-eqz v0, :cond_12

    .line 1260
    const/4 v2, 0x0

    .line 1261
    const/4 v1, 0x1

    .line 1264
    :cond_12
    if-eqz v2, :cond_1b

    .line 1265
    invoke-direct {p0, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->checkVMChangeSuccess(I)Ljava/lang/String;

    move-result-object v0

    .line 1266
    if-eqz v0, :cond_1b

    .line 1267
    const/4 v2, 0x0

    .line 1270
    :cond_1b
    if-eqz v2, :cond_26

    .line 1272
    const/16 v3, 0x2da

    invoke-direct {p0, v3, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->handleVMAndFwdSetSuccess(II)V

    .line 1273
    invoke-direct {p0, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->updateVoiceNumberField(I)V

    .line 1283
    :goto_25
    return-void

    .line 1275
    :cond_26
    if-eqz v1, :cond_44

    .line 1276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change FW failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/MSimCallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1277
    const/16 v3, 0x2c6

    invoke-direct {p0, v3, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->handleVMOrFwdSetError(II)V

    goto :goto_25

    .line 1279
    :cond_44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change VM failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/MSimCallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1280
    const/16 v3, 0x2bc

    invoke-direct {p0, v3, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->handleVMOrFwdSetError(II)V

    goto :goto_25
.end method

.method private handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V
    .registers 9
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 1890
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1891
    .local v0, buttonTtyMode:I
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_tty_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1897
    .local v1, settingsTtyMode:I
    if-eq v0, v1, :cond_36

    .line 1898
    packed-switch v0, :pswitch_data_42

    .line 1907
    const/4 v0, 0x0

    .line 1910
    :goto_1b
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1911
    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->updatePreferredTtyModeSummary(I)V

    .line 1912
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1913
    .local v2, ttyModeChanged:Landroid/content/Intent;
    const-string v3, "ttyPreferredMode"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1914
    invoke-virtual {p0, v2}, Lcom/android/phone/MSimCallFeaturesSetting;->sendBroadcast(Landroid/content/Intent;)V

    .line 1916
    .end local v2           #ttyModeChanged:Landroid/content/Intent;
    :cond_36
    return-void

    .line 1903
    :pswitch_37
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_tty_mode"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1b

    .line 1898
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_37
    .end packed-switch
.end method

.method private handleVMAndFwdSetSuccess(II)V
    .registers 5
    .parameter "msgId"
    .parameter "sub"

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p2

    .line 1299
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MSimCallFeaturesSetting;->showVMDialog(II)V

    .line 1300
    return-void
.end method

.method private handleVMBtnClickRequest(I)V
    .registers 6
    .parameter "sub"

    .prologue
    .line 830
    invoke-direct {p0, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->getCurrentVoicemailProviderKey(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/phone/MSimCallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/MSimCallFeaturesSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v0, v1, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;I)V

    .line 834
    return-void
.end method

.method private handleVMOrFwdSetError(II)V
    .registers 5
    .parameter "msgId"
    .parameter "sub"

    .prologue
    const/4 v1, 0x0

    .line 1286
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:[Z

    aget-boolean v0, v0, p2

    if-eqz v0, :cond_13

    .line 1287
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMOrFwdSetError:[I

    aput p1, v0, p2

    .line 1288
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:[Z

    aput-boolean v1, v0, p2

    .line 1289
    invoke-direct {p0, p2}, Lcom/android/phone/MSimCallFeaturesSetting;->switchToPreviousVoicemailProvider(I)V

    .line 1295
    :goto_12
    return-void

    .line 1292
    :cond_13
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:[Z

    aput-boolean v1, v0, p2

    .line 1293
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MSimCallFeaturesSetting;->showVMDialog(II)V

    .line 1294
    invoke-direct {p0, p2}, Lcom/android/phone/MSimCallFeaturesSetting;->updateVoiceNumberField(I)V

    goto :goto_12
.end method

.method private infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;
    .registers 9
    .parameter "infos"
    .parameter "reason"

    .prologue
    .line 1016
    const/4 v4, 0x0

    .line 1017
    .local v4, result:Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz p1, :cond_f

    .line 1018
    move-object v0, p1

    .local v0, arr$:[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_6
    if-ge v1, v3, :cond_f

    aget-object v2, v0, v1

    .line 1019
    .local v2, info:Lcom/android/internal/telephony/CallForwardInfo;
    iget v5, v2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v5, p2, :cond_10

    .line 1020
    move-object v4, v2

    .line 1025
    .end local v0           #arr$:[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v1           #i$:I
    .end local v2           #info:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v3           #len$:I
    :cond_f
    return-object v4

    .line 1018
    .restart local v0       #arr$:[Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v1       #i$:I
    .restart local v2       #info:Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v3       #len$:I
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method private initVoiceMailProviders(I)V
    .registers 24
    .parameter "sub"

    .prologue
    .line 1976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MSimCallFeaturesSetting;->mPerProviderSavedVMNumbers:[Landroid/content/SharedPreferences;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    if-nez p1, :cond_c0

    const-string v18, "vm_numbers1"

    :goto_e
    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    aput-object v18, v19, p1

    .line 1980
    const/4 v14, 0x0

    .line 1981
    .local v14, providerToIgnore:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4c

    .line 1983
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "com.android.phone.ProviderToIgnore"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_43

    .line 1984
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "com.android.phone.ProviderToIgnore"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1987
    :cond_43
    if-eqz v14, :cond_4c

    .line 1988
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v14, v1}, Lcom/android/phone/MSimCallFeaturesSetting;->deleteSettingsForVoicemailProvider(Ljava/lang/String;I)V

    .line 1992
    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMProvidersData:[Ljava/util/Map;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->clear()V

    .line 1995
    const v18, 0x7f0c00ae

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/MSimCallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1996
    .local v10, myCarrier:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMProvidersData:[Ljava/util/Map;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    sget-object v19, Lcom/android/phone/MSimCallFeaturesSetting;->DEFAULT_VM_PROVIDER_KEY:[Ljava/lang/String;

    aget-object v19, v19, p1

    new-instance v20, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProvider;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v10, v2}, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProvider;-><init>(Lcom/android/phone/MSimCallFeaturesSetting;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-interface/range {v18 .. v20}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1999
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 2000
    .local v12, pm:Landroid/content/pm/PackageManager;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 2001
    .local v7, intent:Landroid/content/Intent;
    const-string v18, "com.android.phone.CallFeaturesSettingUG.CONFIGURE_VOICEMAIL"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2002
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v7, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 2003
    .local v15, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    add-int/lit8 v9, v18, 0x1

    .line 2007
    .local v9, len:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_9d
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_102

    .line 2008
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    .line 2009
    .local v16, ri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2010
    .local v3, currentActivityInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/MSimCallFeaturesSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v8

    .line 2012
    .local v8, key:Ljava/lang/String;
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c4

    .line 2014
    add-int/lit8 v9, v9, -0x1

    .line 2007
    :goto_bd
    add-int/lit8 v6, v6, 0x1

    goto :goto_9d

    .line 1976
    .end local v3           #currentActivityInfo:Landroid/content/pm/ActivityInfo;
    .end local v6           #i:I
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #key:Ljava/lang/String;
    .end local v9           #len:I
    .end local v10           #myCarrier:Ljava/lang/String;
    .end local v12           #pm:Landroid/content/pm/PackageManager;
    .end local v14           #providerToIgnore:Ljava/lang/String;
    .end local v15           #resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v16           #ri:Landroid/content/pm/ResolveInfo;
    :cond_c0
    const-string v18, "vm_numbers2"

    goto/16 :goto_e

    .line 2017
    .restart local v3       #currentActivityInfo:Landroid/content/pm/ActivityInfo;
    .restart local v6       #i:I
    .restart local v7       #intent:Landroid/content/Intent;
    .restart local v8       #key:Ljava/lang/String;
    .restart local v9       #len:I
    .restart local v10       #myCarrier:Ljava/lang/String;
    .restart local v12       #pm:Landroid/content/pm/PackageManager;
    .restart local v14       #providerToIgnore:Ljava/lang/String;
    .restart local v15       #resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v16       #ri:Landroid/content/pm/ResolveInfo;
    :cond_c4
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2018
    .local v11, nameForDisplay:Ljava/lang/String;
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 2019
    .local v13, providerIntent:Landroid/content/Intent;
    const-string v18, "com.android.phone.CallFeaturesSettingUG.CONFIGURE_VOICEMAIL"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2020
    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMProvidersData:[Ljava/util/Map;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    new-instance v19, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProvider;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v13}, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProvider;-><init>(Lcom/android/phone/MSimCallFeaturesSetting;Ljava/lang/String;Landroid/content/Intent;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_bd

    .line 2030
    .end local v3           #currentActivityInfo:Landroid/content/pm/ActivityInfo;
    .end local v8           #key:Ljava/lang/String;
    .end local v11           #nameForDisplay:Ljava/lang/String;
    .end local v13           #providerIntent:Landroid/content/Intent;
    .end local v16           #ri:Landroid/content/pm/ResolveInfo;
    :cond_102
    new-array v4, v9, [Ljava/lang/String;

    .line 2031
    .local v4, entries:[Ljava/lang/String;
    new-array v0, v9, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 2032
    .local v17, values:[Ljava/lang/String;
    const/16 v18, 0x0

    aput-object v10, v4, v18

    .line 2033
    const/16 v18, 0x0

    sget-object v19, Lcom/android/phone/MSimCallFeaturesSetting;->DEFAULT_VM_PROVIDER_KEY:[Ljava/lang/String;

    aget-object v19, v19, p1

    aput-object v19, v17, v18

    .line 2034
    const/4 v5, 0x1

    .line 2035
    .local v5, entryIdx:I
    const/4 v6, 0x0

    :goto_116
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_162

    .line 2036
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/MSimCallFeaturesSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v8

    .line 2037
    .restart local v8       #key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMProvidersData:[Ljava/util/Map;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_145

    .line 2035
    :goto_142
    add-int/lit8 v6, v6, 0x1

    goto :goto_116

    .line 2040
    :cond_145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMProvidersData:[Ljava/util/Map;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProvider;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProvider;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v4, v5

    .line 2041
    aput-object v8, v17, v5

    .line 2042
    add-int/lit8 v5, v5, 0x1

    goto :goto_142

    .line 2045
    .end local v8           #key:Ljava/lang/String;
    :cond_162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailProviders:[Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 2047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailProviders:[Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    const/16 v19, 0x0

    aget-object v19, v17, v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailProviders:[Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 2052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MSimCallFeaturesSetting;->mPreviousVMProviderKey:[Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-direct/range {p0 .. p1}, Lcom/android/phone/MSimCallFeaturesSetting;->getCurrentVoicemailProviderKey(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v18, p1

    .line 2053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MSimCallFeaturesSetting;->mPreviousVMProviderKey:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/phone/MSimCallFeaturesSetting;->updateVMPreferenceWidgets(Ljava/lang/String;I)V

    .line 2054
    return-void
.end method

.method private isAirplaneModeOn()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1827
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method private isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z
    .registers 5
    .parameter "oldInfo"
    .parameter "newInfo"

    .prologue
    .line 1030
    const/4 v0, 0x1

    .line 1031
    .local v0, result:Z
    iget v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_c

    .line 1034
    if-eqz p1, :cond_c

    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_c

    .line 1035
    const/4 v0, 0x0

    .line 1038
    :cond_c
    return v0
.end method

.method private loadSettingsForVoiceMailProvider(Ljava/lang/String;I)Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;
    .registers 15
    .parameter "key"
    .parameter "sub"

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x0

    .line 2125
    iget-object v7, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPerProviderSavedVMNumbers:[Landroid/content/SharedPreferences;

    aget-object v7, v7, p2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#VMNumber1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2127
    .local v6, vmNumberSetting:Ljava/lang/String;
    if-nez v6, :cond_28

    .line 2156
    :goto_27
    return-object v5

    .line 2132
    :cond_28
    sget-object v0, Lcom/android/phone/MSimCallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 2133
    .local v0, cfi:[Lcom/android/internal/telephony/CallForwardInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#FWDSettings1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2134
    .local v1, fwdKey:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPerProviderSavedVMNumbers:[Landroid/content/SharedPreferences;

    aget-object v7, v7, p2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#Length"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2135
    .local v2, fwdLen:I
    if-lez v2, :cond_11a

    .line 2136
    new-array v0, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 2137
    const/4 v3, 0x0

    .local v3, i:I
    :goto_65
    array-length v7, v0

    if-ge v3, v7, :cond_11a

    .line 2138
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Setting"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2139
    .local v4, settingKey:Ljava/lang/String;
    new-instance v7, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v7}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v7, v0, v3

    .line 2140
    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPerProviderSavedVMNumbers:[Landroid/content/SharedPreferences;

    aget-object v8, v8, p2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#Status"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 2142
    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPerProviderSavedVMNumbers:[Landroid/content/SharedPreferences;

    aget-object v8, v8, p2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#Reason"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x5

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 2145
    aget-object v7, v0, v3

    const/4 v8, 0x1

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 2146
    aget-object v7, v0, v3

    const/16 v8, 0x91

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 2147
    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPerProviderSavedVMNumbers:[Landroid/content/SharedPreferences;

    aget-object v8, v8, p2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#Number"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 2149
    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPerProviderSavedVMNumbers:[Landroid/content/SharedPreferences;

    aget-object v8, v8, p2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#Time"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x14

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 2137
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_65

    .line 2154
    .end local v3           #i:I
    .end local v4           #settingKey:Ljava/lang/String;
    :cond_11a
    new-instance v5, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;

    invoke-direct {v5, p0, v6, v0}, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/MSimCallFeaturesSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 2156
    .local v5, settings:Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;
    goto/16 :goto_27
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 1934
    const-string v0, "MSimCallFeaturesSetting"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    return-void
.end method

.method private makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .registers 3
    .parameter "ai"

    .prologue
    .line 2057
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method private maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;I)V
    .registers 13
    .parameter "key"
    .parameter "newSettings"
    .parameter "sub"

    .prologue
    .line 2087
    iget-object v7, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailProviders:[Landroid/preference/ListPreference;

    aget-object v7, v7, p3

    if-nez v7, :cond_7

    .line 2114
    :cond_6
    :goto_6
    return-void

    .line 2090
    :cond_7
    invoke-direct {p0, p1, p3}, Lcom/android/phone/MSimCallFeaturesSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;I)Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;

    move-result-object v0

    .line 2091
    .local v0, curSettings:Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;
    invoke-virtual {p2, v0}, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 2096
    iget-object v7, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPerProviderSavedVMNumbers:[Landroid/content/SharedPreferences;

    aget-object v7, v7, p3

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2097
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#VMNumber1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p2, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2098
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#FWDSettings1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2099
    .local v3, fwdKey:Ljava/lang/String;
    iget-object v5, p2, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 2100
    .local v5, s:[Lcom/android/internal/telephony/CallForwardInfo;
    sget-object v7, Lcom/android/phone/MSimCallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v5, v7, :cond_f6

    .line 2101
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Length"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    array-length v8, v5

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2102
    const/4 v4, 0x0

    .local v4, i:I
    :goto_6a
    array-length v7, v5

    if-ge v4, v7, :cond_10d

    .line 2103
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Setting"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2104
    .local v6, settingKey:Ljava/lang/String;
    aget-object v2, v5, v4

    .line 2105
    .local v2, fi:Lcom/android/internal/telephony/CallForwardInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Status"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2106
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Reason"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2107
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Number"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2108
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Time"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v2, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2102
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6a

    .line 2111
    .end local v2           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v4           #i:I
    .end local v6           #settingKey:Ljava/lang/String;
    :cond_f6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Length"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2113
    :cond_10d
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_6
.end method

.method private resetForwardingChangeState(I)V
    .registers 4
    .parameter "sub"

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingChangeResults:[Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, p1

    .line 1043
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mExpectedChangeResultReasons:[Ljava/util/Collection;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    aput-object v1, v0, p1

    .line 1044
    return-void
.end method

.method private saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;I)V
    .registers 10
    .parameter "key"
    .parameter "newSettings"
    .parameter "sub"

    .prologue
    const/4 v5, 0x0

    .line 880
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNewVMNumber:[Ljava/lang/String;

    iget-object v2, p2, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    aput-object v2, v1, p3

    .line 882
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNewVMNumber:[Ljava/lang/String;

    aget-object v1, v1, p3

    if-nez v1, :cond_13

    .line 883
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNewVMNumber:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, p3

    .line 886
    :cond_13
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNewFwdSettings:[[Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v2, p2, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    aput-object v2, v1, p3

    .line 892
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, p3

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2a

    .line 894
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNewFwdSettings:[[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v2, Lcom/android/phone/MSimCallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    aput-object v2, v1, p3

    .line 898
    :cond_2a
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNewVMNumber:[Ljava/lang/String;

    aget-object v1, v1, p3

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mOldVmNumber:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNewFwdSettings:[[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v1, v1, p3

    sget-object v2, Lcom/android/phone/MSimCallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-ne v1, v2, :cond_46

    .line 899
    const/16 v1, 0x2e4

    invoke-direct {p0, v1, p3}, Lcom/android/phone/MSimCallFeaturesSetting;->showVMDialog(II)V

    .line 921
    :goto_45
    return-void

    .line 903
    :cond_46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/MSimCallFeaturesSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;I)V

    .line 904
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMChangeCompletedSuccesfully:[Z

    aput-boolean v5, v1, p3

    .line 905
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mFwdChangesRequireRollback:[Z

    aput-boolean v5, v1, p3

    .line 906
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMOrFwdSetError:[I

    aput v5, v1, p3

    .line 907
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPreviousVMProviderKey:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a1

    .line 908
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mReadingSettingsForDefaultProvider:[Z

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPreviousVMProviderKey:[Ljava/lang/String;

    aget-object v2, v2, p3

    sget-object v3, Lcom/android/phone/MSimCallFeaturesSetting;->DEFAULT_VM_PROVIDER_KEY:[Ljava/lang/String;

    aget-object v3, v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    aput-boolean v2, v1, p3

    .line 911
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingReadResults:[[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v2, Lcom/android/phone/MSimCallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v2, v2

    new-array v2, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    aput-object v2, v1, p3

    .line 912
    const/4 v0, 0x0

    .local v0, i:I
    :goto_79
    sget-object v1, Lcom/android/phone/MSimCallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_9b

    .line 913
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingReadResults:[[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v1, v1, p3

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 914
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, p3

    sget-object v2, Lcom/android/phone/MSimCallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mGetOptionComplete:Landroid/os/Handler;

    add-int/lit16 v4, p3, 0x208

    invoke-virtual {v3, v4, v0, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 912
    add-int/lit8 v0, v0, 0x1

    goto :goto_79

    .line 917
    :cond_9b
    const/16 v1, 0x26c

    invoke-direct {p0, v1}, Lcom/android/phone/MSimCallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_45

    .line 919
    .end local v0           #i:I
    :cond_a1
    invoke-direct {p0, p3}, Lcom/android/phone/MSimCallFeaturesSetting;->saveVoiceMailAndForwardingNumberStage2(I)V

    goto :goto_45
.end method

.method private saveVoiceMailAndForwardingNumberStage2(I)V
    .registers 14
    .parameter "sub"

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x0

    .line 1049
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingChangeResults:[Ljava/util/Map;

    aput-object v1, v0, p1

    .line 1050
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailChangeResult:[Landroid/os/AsyncResult;

    aput-object v1, v0, p1

    .line 1051
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNewFwdSettings:[[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/phone/MSimCallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v0, v1, :cond_66

    .line 1052
    invoke-direct {p0, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->resetForwardingChangeState(I)V

    .line 1053
    const/4 v8, 0x0

    .local v8, i:I
    :goto_16
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNewFwdSettings:[[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v0, v0, p1

    array-length v0, v0

    if-ge v8, v0, :cond_60

    .line 1054
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNewFwdSettings:[[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v0, v0, p1

    aget-object v7, v0, v8

    .line 1056
    .local v7, fi:Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingReadResults:[[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v0, v0, p1

    iget v1, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/MSimCallFeaturesSetting;->infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lcom/android/phone/MSimCallFeaturesSetting;->isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z

    move-result v6

    .line 1058
    .local v6, doUpdate:Z
    if-eqz v6, :cond_5b

    .line 1060
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mExpectedChangeResultReasons:[Ljava/util/Collection;

    aget-object v0, v0, p1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1062
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    iget v1, v7, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5e

    const/4 v1, 0x3

    :goto_48
    iget v2, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v7, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSetOptionComplete:Landroid/os/Handler;

    add-int/lit16 v10, p1, 0x1fe

    iget v11, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-virtual {v5, v10, v11, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 1053
    :cond_5b
    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    :cond_5e
    move v1, v9

    .line 1062
    goto :goto_48

    .line 1073
    .end local v6           #doUpdate:Z
    .end local v7           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    :cond_60
    const/16 v0, 0x262

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->showDialogIfForeground(I)V

    .line 1078
    .end local v8           #i:I
    :goto_65
    return-void

    .line 1076
    :cond_66
    invoke-virtual {p0, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->setVMNumberWithCarrier(I)V

    goto :goto_65
.end method

.method private showDialogIfForeground(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 862
    iget-boolean v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForeground:Z

    if-eqz v0, :cond_7

    .line 863
    invoke-virtual {p0, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->showDialog(I)V

    .line 865
    :cond_7
    return-void
.end method

.method private showVMDialog(II)V
    .registers 4
    .parameter "msgStatus"
    .parameter "sub"

    .prologue
    .line 1453
    sparse-switch p1, :sswitch_data_22

    .line 1475
    :goto_3
    return-void

    .line 1457
    :sswitch_4
    const/16 v0, 0x19a

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_3

    .line 1460
    :sswitch_a
    const/16 v0, 0x1a4

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_3

    .line 1463
    :sswitch_10
    add-int/lit16 v0, p2, 0x1ae

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_3

    .line 1466
    :sswitch_16
    const/16 v0, 0x190

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_3

    .line 1469
    :sswitch_1c
    const/16 v0, 0x258

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_3

    .line 1453
    :sswitch_data_22
    .sparse-switch
        0x2bc -> :sswitch_4
        0x2c6 -> :sswitch_a
        0x2d0 -> :sswitch_10
        0x2da -> :sswitch_1c
        0x2e4 -> :sswitch_16
    .end sparse-switch
.end method

.method private simulatePreferenceClick(Landroid/preference/Preference;I)V
    .registers 10
    .parameter "preference"
    .parameter "sub"

    .prologue
    .line 2069
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 2070
    .local v6, adapter:Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    .local v3, idx:I
    :goto_9
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_25

    .line 2071
    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_26

    .line 2072
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 2077
    :cond_25
    return-void

    .line 2070
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_9
.end method

.method private switchToPreviousVoicemailProvider(I)V
    .registers 16
    .parameter "sub"

    .prologue
    const/4 v12, 0x0

    .line 659
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPreviousVMProviderKey:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_a4

    .line 660
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMChangeCompletedSuccesfully:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mFwdChangesRequireRollback:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_a1

    .line 662
    :cond_13
    const/16 v0, 0x276

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->showDialogIfForeground(I)V

    .line 663
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPreviousVMProviderKey:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-direct {p0, v0, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;I)Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;

    move-result-object v9

    .line 665
    .local v9, prevSettings:Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMChangeCompletedSuccesfully:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_4b

    .line 666
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNewVMNumber:[Ljava/lang/String;

    iget-object v1, v9, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    aput-object v1, v0, p1

    .line 668
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, p1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNewVMNumber:[Ljava/lang/String;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mRevertOptionComplete:Landroid/os/Handler;

    add-int/lit16 v4, p1, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 673
    :cond_4b
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mFwdChangesRequireRollback:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_a4

    .line 675
    iget-object v8, v9, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 677
    .local v8, prevFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz v8, :cond_a4

    .line 678
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingChangeResults:[Ljava/util/Map;

    aget-object v11, v0, p1

    .line 680
    .local v11, results:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-direct {p0, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->resetForwardingChangeState(I)V

    .line 681
    const/4 v7, 0x0

    .local v7, i:I
    :goto_5d
    array-length v0, v8

    if-ge v7, v0, :cond_a4

    .line 682
    aget-object v6, v8, v7

    .line 686
    .local v6, fi:Lcom/android/internal/telephony/CallForwardInfo;
    iget v0, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/AsyncResult;

    .line 687
    .local v10, result:Landroid/os/AsyncResult;
    if-eqz v10, :cond_9c

    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_9c

    .line 688
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mExpectedChangeResultReasons:[Ljava/util/Collection;

    aget-object v0, v0, p1

    iget v1, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 689
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    iget v1, v6, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9f

    const/4 v1, 0x3

    :goto_8b
    iget v2, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v6, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mRevertOptionComplete:Landroid/os/Handler;

    add-int/lit16 v13, p1, 0x1fe

    invoke-virtual {v5, v13, v7, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 681
    :cond_9c
    add-int/lit8 v7, v7, 0x1

    goto :goto_5d

    :cond_9f
    move v1, v12

    .line 689
    goto :goto_8b

    .line 704
    .end local v6           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v7           #i:I
    .end local v8           #prevFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v9           #prevSettings:Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;
    .end local v10           #result:Landroid/os/AsyncResult;
    .end local v11           #results:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_a1
    invoke-virtual {p0, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->onRevertDone(I)V

    .line 707
    :cond_a4
    return-void
.end method

.method private updatePreferredTtyModeSummary(I)V
    .registers 6
    .parameter "TtyMode"

    .prologue
    const/4 v3, 0x0

    .line 1919
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1920
    .local v0, txts:[Ljava/lang/String;
    packed-switch p1, :pswitch_data_24

    .line 1928
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1929
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1931
    :goto_1b
    return-void

    .line 1925
    :pswitch_1c
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1b

    .line 1920
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method private updateVMPreferenceWidgets(Ljava/lang/String;I)V
    .registers 12
    .parameter "currentProviderSetting"
    .parameter "sub"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1944
    move-object v0, p1

    .line 1945
    .local v0, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMProvidersData:[Ljava/util/Map;

    aget-object v3, v3, p2

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProvider;

    .line 1951
    .local v1, provider:Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProvider;
    if-nez v1, :cond_36

    .line 1952
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailProviders:[Landroid/preference/ListPreference;

    aget-object v3, v3, p2

    const v4, 0x7f0c00ad

    invoke-virtual {p0, v4}, Lcom/android/phone/MSimCallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1953
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailSettings:[Landroid/preference/PreferenceScreen;

    aget-object v3, v3, p2

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1954
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailSettings:[Landroid/preference/PreferenceScreen;

    aget-object v3, v3, p2

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1955
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailSettings:[Landroid/preference/PreferenceScreen;

    aget-object v3, v3, p2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 1964
    :goto_35
    return-void

    .line 1957
    :cond_36
    iget-object v2, v1, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProvider;->name:Ljava/lang/String;

    .line 1958
    .local v2, providerName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailProviders:[Landroid/preference/ListPreference;

    aget-object v3, v3, p2

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1959
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailSettings:[Landroid/preference/PreferenceScreen;

    aget-object v3, v3, p2

    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c0229

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1961
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailSettings:[Landroid/preference/PreferenceScreen;

    aget-object v3, v3, p2

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1962
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailSettings:[Landroid/preference/PreferenceScreen;

    aget-object v3, v3, p2

    iget-object v4, v1, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProvider;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    goto :goto_35
.end method

.method private updateVoiceNumberField(I)V
    .registers 5
    .parameter "sub"

    .prologue
    .line 1306
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    aget-object v1, v1, p1

    if-nez v1, :cond_7

    .line 1318
    :goto_6
    return-void

    .line 1310
    :cond_7
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mOldVmNumber:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, p1

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    .line 1311
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mOldVmNumber:[Ljava/lang/String;

    aget-object v1, v1, p1

    if-nez v1, :cond_1f

    .line 1312
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mOldVmNumber:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, p1

    .line 1314
    :cond_1f
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mOldVmNumber:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 1315
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mOldVmNumber:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_40

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mOldVmNumber:[Ljava/lang/String;

    aget-object v0, v1, p1

    .line 1317
    .local v0, summary:Ljava/lang/String;
    :goto_38
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 1315
    .end local v0           #summary:Ljava/lang/String;
    :cond_40
    const v1, 0x7f0c0227

    invoke-virtual {p0, v1}, Lcom/android/phone/MSimCallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_38
.end method


# virtual methods
.method public displayAlertDialog(I)V
    .registers 5
    .parameter "resId"

    .prologue
    .line 1799
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c01f3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/android/phone/MSimCallFeaturesSetting$5;

    invoke-direct {v2, p0}, Lcom/android/phone/MSimCallFeaturesSetting$5;-><init>(Lcom/android/phone/MSimCallFeaturesSetting;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/phone/MSimCallFeaturesSetting$4;

    invoke-direct {v1, p0}, Lcom/android/phone/MSimCallFeaturesSetting$4;-><init>(Lcom/android/phone/MSimCallFeaturesSetting;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1813
    return-void
.end method

.method handleForwardingSettingsReadResult(Landroid/os/AsyncResult;II)V
    .registers 14
    .parameter "ar"
    .parameter "idx"
    .parameter "sub"

    .prologue
    const/16 v7, 0x26c

    const/4 v9, 0x0

    .line 938
    const/4 v2, 0x0

    .line 939
    .local v2, error:Ljava/lang/Throwable;
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_a

    .line 942
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 944
    :cond_a
    iget-object v5, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_14

    .line 947
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v2           #error:Ljava/lang/Throwable;
    check-cast v2, Ljava/lang/Throwable;

    .line 951
    .restart local v2       #error:Ljava/lang/Throwable;
    :cond_14
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingReadResults:[[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v5, v5, p3

    if-nez v5, :cond_1b

    .line 1013
    :cond_1a
    :goto_1a
    return-void

    .line 957
    :cond_1b
    if-eqz v2, :cond_2b

    .line 959
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingReadResults:[[Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v6, 0x0

    aput-object v6, v5, p3

    .line 960
    invoke-direct {p0, v7}, Lcom/android/phone/MSimCallFeaturesSetting;->dismissDialogSafely(I)V

    .line 961
    const/16 v5, 0x2d0

    invoke-direct {p0, v5, p3}, Lcom/android/phone/MSimCallFeaturesSetting;->showVMDialog(II)V

    goto :goto_1a

    .line 966
    :cond_2b
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v0, v5

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 967
    .local v0, cfInfoArray:[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v3, 0x0

    .line 968
    .local v3, fi:Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_34
    array-length v5, v0

    if-ge v4, v5, :cond_41

    .line 969
    aget-object v5, v0, v4

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_92

    .line 970
    aget-object v3, v0, v4

    .line 974
    :cond_41
    if-nez v3, :cond_95

    .line 979
    new-instance v3, Lcom/android/internal/telephony/CallForwardInfo;

    .end local v3           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    invoke-direct {v3}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 980
    .restart local v3       #fi:Lcom/android/internal/telephony/CallForwardInfo;
    iput v9, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 981
    sget-object v5, Lcom/android/phone/MSimCallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v5, v5, p2

    iput v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 982
    const/4 v5, 0x1

    iput v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 991
    :cond_53
    :goto_53
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingReadResults:[[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v5, v5, p3

    aput-object v3, v5, p2

    .line 994
    const/4 v1, 0x1

    .line 995
    .local v1, done:Z
    const/4 v4, 0x0

    :goto_5b
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingReadResults:[[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v5, v5, p3

    array-length v5, v5

    if-ge v4, v5, :cond_6b

    .line 996
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingReadResults:[[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v5, v5, p3

    aget-object v5, v5, v4

    if-nez v5, :cond_a4

    .line 997
    const/4 v1, 0x0

    .line 1001
    :cond_6b
    if-eqz v1, :cond_1a

    .line 1003
    invoke-direct {p0, v7}, Lcom/android/phone/MSimCallFeaturesSetting;->dismissDialogSafely(I)V

    .line 1004
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mReadingSettingsForDefaultProvider:[Z

    aget-boolean v5, v5, p3

    if-eqz v5, :cond_8e

    .line 1005
    sget-object v5, Lcom/android/phone/MSimCallFeaturesSetting;->DEFAULT_VM_PROVIDER_KEY:[Ljava/lang/String;

    aget-object v5, v5, p3

    new-instance v6, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;

    iget-object v7, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mOldVmNumber:[Ljava/lang/String;

    aget-object v7, v7, p3

    iget-object v8, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForwardingReadResults:[[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v8, v8, p3

    invoke-direct {v6, p0, v7, v8}, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/MSimCallFeaturesSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v5, v6, p3}, Lcom/android/phone/MSimCallFeaturesSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;I)V

    .line 1007
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mReadingSettingsForDefaultProvider:[Z

    aput-boolean v9, v5, p3

    .line 1009
    :cond_8e
    invoke-direct {p0, p3}, Lcom/android/phone/MSimCallFeaturesSetting;->saveVoiceMailAndForwardingNumberStage2(I)V

    goto :goto_1a

    .line 968
    .end local v1           #done:Z
    :cond_92
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 985
    :cond_95
    iget-object v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    if-eqz v5, :cond_a1

    iget-object v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_53

    .line 986
    :cond_a1
    iput v9, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    goto :goto_53

    .line 995
    .restart local v1       #done:Z
    :cond_a4
    add-int/lit8 v4, v4, 0x1

    goto :goto_5b
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 22
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 726
    const/16 v2, 0xa

    move/from16 v0, p1

    if-eq v0, v2, :cond_c

    const/16 v2, 0xb

    move/from16 v0, p1

    if-ne v0, v2, :cond_af

    .line 727
    :cond_c
    const/4 v10, 0x0

    .line 728
    .local v10, failure:Z
    const/16 v2, 0xa

    move/from16 v0, p1

    if-ne v0, v2, :cond_33

    const/4 v15, 0x0

    .line 732
    .local v15, sub:I
    :goto_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMProviderSettingsForced:[Z

    aget-boolean v14, v2, v15

    .line 733
    .local v14, isVMProviderSettingsForced:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMProviderSettingsForced:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v15

    .line 735
    const/16 v17, 0x0

    .line 736
    .local v17, vmNum:Ljava/lang/String;
    const/4 v2, -0x1

    move/from16 v0, p2

    if-eq v0, v2, :cond_35

    .line 738
    const/4 v10, 0x1

    .line 767
    :cond_29
    :goto_29
    if-eqz v10, :cond_82

    .line 769
    if-eqz v14, :cond_32

    .line 770
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/phone/MSimCallFeaturesSetting;->switchToPreviousVoicemailProvider(I)V

    .line 821
    .end local v10           #failure:Z
    .end local v14           #isVMProviderSettingsForced:Z
    .end local v15           #sub:I
    .end local v17           #vmNum:Ljava/lang/String;
    :cond_32
    :goto_32
    return-void

    .line 728
    .restart local v10       #failure:Z
    :cond_33
    const/4 v15, 0x1

    goto :goto_14

    .line 740
    .restart local v14       #isVMProviderSettingsForced:Z
    .restart local v15       #sub:I
    .restart local v17       #vmNum:Ljava/lang/String;
    :cond_35
    if-nez p3, :cond_39

    .line 742
    const/4 v10, 0x1

    goto :goto_29

    .line 744
    :cond_39
    const-string v2, "com.android.phone.Signout"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 746
    if-eqz v14, :cond_4c

    .line 748
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/phone/MSimCallFeaturesSetting;->switchToPreviousVoicemailProvider(I)V

    goto :goto_32

    .line 750
    :cond_4c
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/phone/MSimCallFeaturesSetting;->getCurrentVoicemailProviderKey(I)Ljava/lang/String;

    move-result-object v16

    .line 752
    .local v16, victim:Ljava/lang/String;
    new-instance v13, Landroid/content/Intent;

    const-string v2, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 753
    .local v13, i:Landroid/content/Intent;
    const-string v2, "com.android.phone.ProviderToIgnore"

    move-object/from16 v0, v16

    invoke-virtual {v13, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 754
    const-string v2, "SUBSCRIPTION_ID"

    invoke-virtual {v13, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 755
    const/high16 v2, 0x400

    invoke-virtual {v13, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 756
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/phone/MSimCallFeaturesSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_32

    .line 760
    .end local v13           #i:Landroid/content/Intent;
    .end local v16           #victim:Ljava/lang/String;
    :cond_70
    const-string v2, "com.android.phone.VoicemailNumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 761
    if-eqz v17, :cond_80

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_29

    .line 763
    :cond_80
    const/4 v10, 0x1

    goto :goto_29

    .line 776
    :cond_82
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimCallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:[Z

    aput-boolean v14, v2, v15

    .line 777
    const-string v2, "com.android.phone.ForwardingNumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 781
    .local v11, fwdNum:Ljava/lang/String;
    const-string v2, "com.android.phone.ForwardingNumberTime"

    const/16 v3, 0x14

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 785
    .local v12, fwdNumTime:I
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/phone/MSimCallFeaturesSetting;->getCurrentVoicemailProviderKey(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v1, v11, v12}, Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/MSimCallFeaturesSetting;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v15}, Lcom/android/phone/MSimCallFeaturesSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;I)V

    goto :goto_32

    .line 790
    .end local v10           #failure:Z
    .end local v11           #fwdNum:Ljava/lang/String;
    .end local v12           #fwdNumTime:I
    .end local v14           #isVMProviderSettingsForced:Z
    .end local v15           #sub:I
    .end local v17           #vmNum:Ljava/lang/String;
    :cond_af
    const/16 v2, 0x14

    move/from16 v0, p1

    if-eq v0, v2, :cond_bb

    const/16 v2, 0x15

    move/from16 v0, p1

    if-ne v0, v2, :cond_f0

    .line 791
    :cond_bb
    const/16 v2, 0x14

    move/from16 v0, p1

    if-ne v0, v2, :cond_ee

    const/4 v15, 0x0

    .line 792
    .restart local v15       #sub:I
    :goto_c2
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v15}, Lcom/android/phone/HWPhoneProvider;->getDefaultIPDialNumberData(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 793
    .local v8, IPData:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimCallFeaturesSetting;->mIPCallSettings:[Landroid/preference/PreferenceScreen;

    aget-object v2, v2, v15

    if-eqz v2, :cond_32

    .line 794
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimCallFeaturesSetting;->mIPCallSettings:[Landroid/preference/PreferenceScreen;

    aget-object v2, v2, v15

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e9

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c02e3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .end local v8           #IPData:Ljava/lang/String;
    :cond_e9
    invoke-virtual {v2, v8}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_32

    .line 791
    .end local v15           #sub:I
    :cond_ee
    const/4 v15, 0x1

    goto :goto_c2

    .line 801
    :cond_f0
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_32

    .line 806
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/phone/MSimCallFeaturesSetting;->NUM_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 808
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_32

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 813
    packed-switch p1, :pswitch_data_126

    goto/16 :goto_32

    .line 816
    :pswitch_113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto/16 :goto_32

    .line 813
    nop

    :pswitch_data_126
    .packed-switch 0x1
        :pswitch_113
        :pswitch_113
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/16 v2, 0x1af

    const/16 v1, 0x1ae

    .line 1417
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1418
    packed-switch p2, :pswitch_data_42

    .line 1446
    :cond_a
    :goto_a
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1447
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->finish()V

    .line 1449
    :cond_1d
    :goto_1d
    return-void

    .line 1424
    :pswitch_1e
    iget v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mCurrentDialogId:I

    if-eq v0, v1, :cond_26

    iget v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mCurrentDialogId:I

    if-ne v0, v2, :cond_a

    .line 1427
    :cond_26
    iget v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mCurrentDialogId:I

    add-int/lit16 v0, v0, -0x1ae

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->switchToPreviousVoicemailProvider(I)V

    goto :goto_a

    .line 1432
    :pswitch_2e
    iget v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mCurrentDialogId:I

    if-eq v0, v1, :cond_36

    iget v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mCurrentDialogId:I

    if-ne v0, v2, :cond_3e

    .line 1435
    :cond_36
    iget v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mCurrentDialogId:I

    add-int/lit16 v0, v0, -0x1ae

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->saveVoiceMailAndForwardingNumberStage2(I)V

    goto :goto_1d

    .line 1437
    :cond_3e
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->finish()V

    goto :goto_1d

    .line 1418
    :pswitch_data_42
    .packed-switch -0x3
        :pswitch_a
        :pswitch_1e
        :pswitch_2e
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 16
    .parameter "icicle"

    .prologue
    .line 1511
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1513
    invoke-static {}, Lcom/android/phone/MSimPhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1515
    const v11, 0x7f050014

    invoke-virtual {p0, v11}, Lcom/android/phone/MSimCallFeaturesSetting;->addPreferencesFromResource(I)V

    .line 1517
    const-string v11, "audio"

    invoke-virtual {p0, v11}, Lcom/android/phone/MSimCallFeaturesSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioManager;

    iput-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mAudioManager:Landroid/media/AudioManager;

    .line 1520
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 1521
    .local v8, prefSet:Landroid/preference/PreferenceScreen;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/SubscriptionManager;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubManager:Lcom/android/internal/telephony/SubscriptionManager;

    .line 1523
    const-string v11, "button_respond_via_sms_key"

    invoke-virtual {p0, v11}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceScreen;

    iput-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonQuickResponses:Landroid/preference/PreferenceScreen;

    .line 1524
    const/4 v7, 0x0

    .line 1526
    .local v7, pTempPref:Landroid/preference/PreferenceScreen;
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v11

    iput v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    .line 1527
    iget v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    new-array v11, v11, [Lcom/android/internal/telephony/Phone;

    iput-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    .line 1528
    iget v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    new-array v11, v11, [Landroid/preference/PreferenceCategory;

    iput-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSimCategory:[Landroid/preference/PreferenceCategory;

    .line 1529
    iget v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    new-array v11, v11, [Landroid/preference/ListPreference;

    iput-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailProviders:[Landroid/preference/ListPreference;

    .line 1530
    iget v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    new-array v11, v11, [Landroid/preference/PreferenceScreen;

    iput-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailSettings:[Landroid/preference/PreferenceScreen;

    .line 1531
    iget v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    new-array v11, v11, [Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    .line 1532
    iget v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    new-array v11, v11, [Landroid/preference/PreferenceScreen;

    iput-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubscriptionPrefFDN:[Landroid/preference/PreferenceScreen;

    .line 1533
    iget v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    new-array v11, v11, [I

    iput-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneType:[I

    .line 1534
    iget v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    new-array v11, v11, [Z

    iput-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mIsSubActive:[Z

    .line 1535
    iget v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    new-array v11, v11, [Landroid/preference/PreferenceScreen;

    iput-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mIPCallSettings:[Landroid/preference/PreferenceScreen;

    .line 1536
    iget v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    new-array v11, v11, [Landroid/preference/PreferenceScreen;

    iput-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mCallForward:[Landroid/preference/PreferenceScreen;

    .line 1537
    iget v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    new-array v11, v11, [Landroid/preference/PreferenceScreen;

    iput-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mMoreOptions:[Landroid/preference/PreferenceScreen;

    .line 1539
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMProvidersData:[Ljava/util/Map;

    const/4 v12, 0x0

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    aput-object v13, v11, v12

    .line 1540
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMProvidersData:[Ljava/util/Map;

    const/4 v12, 0x1

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    aput-object v13, v11, v12

    .line 1542
    iget-object v12, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubscriptionPrefFDN:[Landroid/preference/PreferenceScreen;

    const/4 v13, 0x0

    const-string v11, "button_fdn_key1"

    invoke-virtual {p0, v11}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceScreen;

    aput-object v11, v12, v13

    .line 1543
    iget-object v12, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubscriptionPrefFDN:[Landroid/preference/PreferenceScreen;

    const/4 v13, 0x1

    const-string v11, "button_fdn_key2"

    invoke-virtual {p0, v11}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceScreen;

    aput-object v11, v12, v13

    .line 1544
    iget-object v12, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v13, 0x0

    const-string v11, "button_voicemail_key1"

    invoke-virtual {p0, v11}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Lcom/android/phone/EditPhoneNumberPreference;

    aput-object v11, v12, v13

    .line 1545
    iget-object v12, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v13, 0x1

    const-string v11, "button_voicemail_key2"

    invoke-virtual {p0, v11}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Lcom/android/phone/EditPhoneNumberPreference;

    aput-object v11, v12, v13

    .line 1546
    iget-object v12, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailProviders:[Landroid/preference/ListPreference;

    const/4 v13, 0x0

    const-string v11, "button_voicemail_provider_key1"

    invoke-virtual {p0, v11}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/ListPreference;

    aput-object v11, v12, v13

    .line 1547
    iget-object v12, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailProviders:[Landroid/preference/ListPreference;

    const/4 v13, 0x1

    const-string v11, "button_voicemail_provider_key2"

    invoke-virtual {p0, v11}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/ListPreference;

    aput-object v11, v12, v13

    .line 1548
    iget-object v12, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mIPCallSettings:[Landroid/preference/PreferenceScreen;

    const/4 v13, 0x0

    const-string v11, "button_ipcall_setting_key1"

    invoke-virtual {p0, v11}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceScreen;

    aput-object v11, v12, v13

    .line 1549
    iget-object v12, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mIPCallSettings:[Landroid/preference/PreferenceScreen;

    const/4 v13, 0x1

    const-string v11, "button_ipcall_setting_key2"

    invoke-virtual {p0, v11}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceScreen;

    aput-object v11, v12, v13

    .line 1550
    iget-object v12, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSimCategory:[Landroid/preference/PreferenceCategory;

    const/4 v13, 0x0

    const-string v11, "button_sim_key1"

    invoke-virtual {p0, v11}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceCategory;

    aput-object v11, v12, v13

    .line 1551
    iget-object v12, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSimCategory:[Landroid/preference/PreferenceCategory;

    const/4 v13, 0x1

    const-string v11, "button_sim_key2"

    invoke-virtual {p0, v11}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceCategory;

    aput-object v11, v12, v13

    .line 1552
    iget-object v12, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailSettings:[Landroid/preference/PreferenceScreen;

    const/4 v13, 0x0

    const-string v11, "button_voicemail_setting_key1"

    invoke-virtual {p0, v11}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceScreen;

    aput-object v11, v12, v13

    .line 1553
    iget-object v12, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailSettings:[Landroid/preference/PreferenceScreen;

    const/4 v13, 0x1

    const-string v11, "button_voicemail_setting_key2"

    invoke-virtual {p0, v11}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceScreen;

    aput-object v11, v12, v13

    .line 1555
    const/4 v6, 0x0

    .local v6, lSubscription:I
    :goto_12e
    iget v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    if-ge v6, v11, :cond_3a9

    .line 1557
    const-string v11, "MSimCallFeaturesSetting"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "lSubscription = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v12

    invoke-virtual {v12, v6}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v12

    aput-object v12, v11, v6

    .line 1560
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneType:[I

    iget-object v12, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v12, v12, v6

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v12

    aput v12, v11, v6

    .line 1562
    iget-object v12, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mIsSubActive:[Z

    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubManager:Lcom/android/internal/telephony/SubscriptionManager;

    invoke-virtual {v11, v6}, Lcom/android/internal/telephony/SubscriptionManager;->isSubActive(I)Z

    move-result v11

    if-eqz v11, :cond_2e2

    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubManager:Lcom/android/internal/telephony/SubscriptionManager;

    invoke-virtual {v11, v6}, Lcom/android/internal/telephony/SubscriptionManager;->isCardPresent(I)Z

    move-result v11

    if-eqz v11, :cond_2e2

    const/4 v11, 0x1

    :goto_175
    aput-boolean v11, v12, v6

    .line 1564
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneType:[I

    aget v11, v11, v6

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2e5

    .line 1566
    const-string v11, "MSimCallFeaturesSetting"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "lSubscription = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is Phone.PHONE_TYPE_CDMA"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSimCategory:[Landroid/preference/PreferenceCategory;

    aget-object v11, v11, v6

    iget-object v12, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubscriptionPrefFDN:[Landroid/preference/PreferenceScreen;

    aget-object v12, v12, v6

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    move-result v9

    .line 1570
    .local v9, ret:Z
    const-string v11, "MSimCallFeaturesSetting"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "boolean ret = prefSet.removePreference(mSubscriptionPrefFDN[lSubscription]) = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSimCategory:[Landroid/preference/PreferenceCategory;

    aget-object v11, v11, v6

    const-string v12, "button_gsm_cf_expand_key1"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .end local v7           #pTempPref:Landroid/preference/PreferenceScreen;
    check-cast v7, Landroid/preference/PreferenceScreen;

    .line 1574
    .restart local v7       #pTempPref:Landroid/preference/PreferenceScreen;
    if-eqz v7, :cond_1d6

    .line 1576
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSimCategory:[Landroid/preference/PreferenceCategory;

    aget-object v11, v11, v6

    invoke-virtual {v11, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    move-result v9

    .line 1579
    :cond_1d6
    const-string v11, "MSimCallFeaturesSetting"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ret = prefSet.removePreference(findPreference(KEY_GSM_CALLFORWARD1)) = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    const-string v11, "button_gsm_more_expand_key1"

    invoke-virtual {p0, v11}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .end local v7           #pTempPref:Landroid/preference/PreferenceScreen;
    check-cast v7, Landroid/preference/PreferenceScreen;

    .line 1584
    .restart local v7       #pTempPref:Landroid/preference/PreferenceScreen;
    if-eqz v7, :cond_200

    .line 1586
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSimCategory:[Landroid/preference/PreferenceCategory;

    aget-object v11, v11, v6

    invoke-virtual {v11, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    move-result v9

    .line 1589
    :cond_200
    const-string v11, "MSimCallFeaturesSetting"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ret = prefSet.removePreference(findPreference(KEY_GSM_MORE_EXPAND1)) = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    iget-object v12, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mCallForward:[Landroid/preference/PreferenceScreen;

    const-string v11, "button_cdma_cf_key"

    invoke-virtual {p0, v11}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceScreen;

    aput-object v11, v12, v6

    .line 1593
    iget-object v12, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mMoreOptions:[Landroid/preference/PreferenceScreen;

    const-string v11, "button_cdma_more_expand_key"

    invoke-virtual {p0, v11}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceScreen;

    aput-object v11, v12, v6

    .line 1626
    .end local v9           #ret:Z
    :cond_230
    :goto_230
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSimCategory:[Landroid/preference/PreferenceCategory;

    aget-object v11, v11, v6

    if-eqz v11, :cond_244

    .line 1627
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSimCategory:[Landroid/preference/PreferenceCategory;

    aget-object v12, v11, v6

    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mIsSubActive:[Z

    aget-boolean v11, v11, v6

    if-eqz v11, :cond_38d

    const/4 v11, 0x1

    :goto_241
    invoke-virtual {v12, v11}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 1629
    :cond_244
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubscriptionPrefFDN:[Landroid/preference/PreferenceScreen;

    aget-object v11, v11, v6

    if-eqz v11, :cond_25c

    .line 1630
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubscriptionPrefFDN:[Landroid/preference/PreferenceScreen;

    aget-object v11, v11, v6

    invoke-virtual {v11}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 1631
    .local v5, lIntent:Landroid/content/Intent;
    if-eqz v5, :cond_25c

    .line 1632
    const-string v12, "subscription"

    if-nez v6, :cond_390

    const/4 v11, 0x0

    :goto_259
    invoke-virtual {v5, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1636
    .end local v5           #lIntent:Landroid/content/Intent;
    :cond_25c
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mIPCallSettings:[Landroid/preference/PreferenceScreen;

    aget-object v11, v11, v6

    if-eqz v11, :cond_2a8

    .line 1639
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "ipcall_enabled"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1641
    .local v2, hwdefault_ipcall_enabled:I
    if-eqz v2, :cond_393

    const/4 v4, 0x1

    .line 1642
    .local v4, ipcallenabled:Z
    :goto_270
    if-nez v4, :cond_276

    sget-boolean v11, Lcom/android/phone/ipcallsetting/IPCallUtils;->IS_SUPPORT_IPCALL:Z

    if-eqz v11, :cond_399

    .line 1644
    :cond_276
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mIPCallSettings:[Landroid/preference/PreferenceScreen;

    aget-object v11, v11, v6

    invoke-virtual {v11}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 1645
    .restart local v5       #lIntent:Landroid/content/Intent;
    if-eqz v5, :cond_288

    .line 1646
    const-string v12, "subscription"

    if-nez v6, :cond_396

    const/4 v11, 0x0

    :goto_285
    invoke-virtual {v5, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1649
    :cond_288
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v6}, Lcom/android/phone/HWPhoneProvider;->getDefaultIPDialNumberData(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1650
    .local v0, IPData:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mIPCallSettings:[Landroid/preference/PreferenceScreen;

    aget-object v11, v11, v6

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2a5

    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0c02e3

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .end local v0           #IPData:Ljava/lang/String;
    :cond_2a5
    invoke-virtual {v11, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1658
    .end local v2           #hwdefault_ipcall_enabled:I
    .end local v4           #ipcallenabled:Z
    .end local v5           #lIntent:Landroid/content/Intent;
    :cond_2a8
    :goto_2a8
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailProviders:[Landroid/preference/ListPreference;

    aget-object v11, v11, v6

    if-eqz v11, :cond_2b8

    .line 1659
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailProviders:[Landroid/preference/ListPreference;

    aget-object v11, v11, v6

    invoke-virtual {v11, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1660
    invoke-direct {p0, v6}, Lcom/android/phone/MSimCallFeaturesSetting;->initVoiceMailProviders(I)V

    .line 1662
    :cond_2b8
    invoke-direct {p0, v6}, Lcom/android/phone/MSimCallFeaturesSetting;->updateVoiceNumberField(I)V

    .line 1665
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    aget-object v11, v11, v6

    if-eqz v11, :cond_2de

    .line 1666
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    aget-object v12, v11, v6

    if-nez v6, :cond_3a6

    const/4 v11, 0x0

    :goto_2c8
    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v12, p0, v11, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 1668
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    aget-object v11, v11, v6

    invoke-virtual {v11, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 1670
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    aget-object v11, v11, v6

    const v12, 0x7f0c019a

    invoke-virtual {v11, v12}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 1555
    :cond_2de
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_12e

    .line 1562
    :cond_2e2
    const/4 v11, 0x0

    goto/16 :goto_175

    .line 1594
    :cond_2e5
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneType:[I

    aget v11, v11, v6

    const/4 v12, 0x1

    if-ne v11, v12, :cond_230

    .line 1596
    const-string v11, "MSimCallFeaturesSetting"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "lSubscription = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is Phone.PHONE_TYPE_GSM"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    if-nez v6, :cond_370

    .line 1600
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSimCategory:[Landroid/preference/PreferenceCategory;

    aget-object v11, v11, v6

    const-string v12, "button_cdma_cf_key"

    invoke-virtual {p0, v12}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1602
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSimCategory:[Landroid/preference/PreferenceCategory;

    aget-object v11, v11, v6

    const-string v12, "button_cdma_more_expand_key"

    invoke-virtual {p0, v12}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1603
    iget-object v12, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mCallForward:[Landroid/preference/PreferenceScreen;

    const-string v11, "button_gsm_cf_expand_key1"

    invoke-virtual {p0, v11}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceScreen;

    aput-object v11, v12, v6

    .line 1604
    iget-object v12, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mMoreOptions:[Landroid/preference/PreferenceScreen;

    const-string v11, "button_gsm_more_expand_key1"

    invoke-virtual {p0, v11}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceScreen;

    aput-object v11, v12, v6

    .line 1609
    :goto_33e
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mCallForward:[Landroid/preference/PreferenceScreen;

    aget-object v11, v11, v6

    if-eqz v11, :cond_356

    .line 1610
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mCallForward:[Landroid/preference/PreferenceScreen;

    aget-object v11, v11, v6

    invoke-virtual {v11}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 1611
    .restart local v5       #lIntent:Landroid/content/Intent;
    if-eqz v5, :cond_356

    .line 1612
    const-string v12, "subscription"

    if-nez v6, :cond_389

    const/4 v11, 0x0

    :goto_353
    invoke-virtual {v5, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1616
    .end local v5           #lIntent:Landroid/content/Intent;
    :cond_356
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mMoreOptions:[Landroid/preference/PreferenceScreen;

    aget-object v11, v11, v6

    if-eqz v11, :cond_230

    .line 1617
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mMoreOptions:[Landroid/preference/PreferenceScreen;

    aget-object v11, v11, v6

    invoke-virtual {v11}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 1618
    .restart local v5       #lIntent:Landroid/content/Intent;
    if-eqz v5, :cond_230

    .line 1619
    const-string v12, "subscription"

    if-nez v6, :cond_38b

    const/4 v11, 0x0

    :goto_36b
    invoke-virtual {v5, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_230

    .line 1606
    .end local v5           #lIntent:Landroid/content/Intent;
    :cond_370
    iget-object v12, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mCallForward:[Landroid/preference/PreferenceScreen;

    const-string v11, "button_gsm_cf_expand_key2"

    invoke-virtual {p0, v11}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceScreen;

    aput-object v11, v12, v6

    .line 1607
    iget-object v12, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mMoreOptions:[Landroid/preference/PreferenceScreen;

    const-string v11, "button_gsm_more_expand_key2"

    invoke-virtual {p0, v11}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceScreen;

    aput-object v11, v12, v6

    goto :goto_33e

    .line 1612
    .restart local v5       #lIntent:Landroid/content/Intent;
    :cond_389
    const/4 v11, 0x1

    goto :goto_353

    .line 1619
    :cond_38b
    const/4 v11, 0x1

    goto :goto_36b

    .line 1627
    .end local v5           #lIntent:Landroid/content/Intent;
    :cond_38d
    const/4 v11, 0x0

    goto/16 :goto_241

    .line 1632
    .restart local v5       #lIntent:Landroid/content/Intent;
    :cond_390
    const/4 v11, 0x1

    goto/16 :goto_259

    .line 1641
    .end local v5           #lIntent:Landroid/content/Intent;
    .restart local v2       #hwdefault_ipcall_enabled:I
    :cond_393
    const/4 v4, 0x0

    goto/16 :goto_270

    .line 1646
    .restart local v4       #ipcallenabled:Z
    .restart local v5       #lIntent:Landroid/content/Intent;
    :cond_396
    const/4 v11, 0x1

    goto/16 :goto_285

    .line 1654
    .end local v5           #lIntent:Landroid/content/Intent;
    :cond_399
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSimCategory:[Landroid/preference/PreferenceCategory;

    aget-object v11, v11, v6

    iget-object v12, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mIPCallSettings:[Landroid/preference/PreferenceScreen;

    aget-object v12, v12, v6

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2a8

    .line 1666
    .end local v2           #hwdefault_ipcall_enabled:I
    .end local v4           #ipcallenabled:Z
    :cond_3a6
    const/4 v11, 0x1

    goto/16 :goto_2c8

    .line 1679
    :cond_3a9
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSimCategory:[Landroid/preference/PreferenceCategory;

    const/4 v12, 0x0

    aget-object v12, v11, v12

    sget-boolean v11, Lcom/android/phone/MSimCallFeaturesSetting;->IS_UMTS_GSM:Z

    if-eqz v11, :cond_489

    const v11, 0x7f0c0414

    :goto_3b5
    invoke-virtual {v12, v11}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 1680
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSimCategory:[Landroid/preference/PreferenceCategory;

    const/4 v12, 0x1

    aget-object v12, v11, v12

    sget-boolean v11, Lcom/android/phone/MSimCallFeaturesSetting;->IS_UMTS_GSM:Z

    if-eqz v11, :cond_48e

    const v11, 0x7f0c0415

    :goto_3c4
    invoke-virtual {v12, v11}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 1683
    const-string v11, "button_dtmf_settings"

    invoke-virtual {p0, v11}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/ListPreference;

    iput-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    .line 1684
    const-string v11, "button_auto_retry_key"

    invoke-virtual {p0, v11}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    .line 1685
    const-string v11, "button_hac_key"

    invoke-virtual {p0, v11}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    .line 1686
    const-string v11, "button_tty_mode_key"

    invoke-virtual {p0, v11}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/ListPreference;

    iput-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    .line 1687
    const-string v11, "button_xdivert"

    invoke-virtual {p0, v11}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceScreen;

    iput-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonXDivert:Landroid/preference/PreferenceScreen;

    .line 1689
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-eqz v11, :cond_40f

    .line 1690
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080007

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-eqz v11, :cond_493

    .line 1691
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    invoke-virtual {v11, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1698
    :cond_40f
    :goto_40f
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-eqz v11, :cond_425

    .line 1699
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080008

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-eqz v11, :cond_49d

    .line 1700
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1707
    :cond_425
    :goto_425
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v11, :cond_43b

    .line 1708
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080006

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-eqz v11, :cond_4a6

    .line 1710
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1717
    :cond_43b
    :goto_43b
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-eqz v11, :cond_451

    .line 1718
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080005

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-eqz v11, :cond_4af

    .line 1719
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v11, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1726
    :cond_451
    :goto_451
    const-string v11, "button_call_independent_serv"

    invoke-virtual {p0, v11}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    .line 1727
    .local v10, selectSub:Landroid/preference/PreferenceScreen;
    if-eqz v10, :cond_46d

    .line 1728
    invoke-virtual {v10}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1729
    .local v3, intent:Landroid/content/Intent;
    const-string v11, "PACKAGE"

    const-string v12, "com.android.phone"

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1730
    const-string v11, "TARGET_CLASS"

    const-string v12, "com.android.phone.MSimCallFeaturesSubSetting"

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1734
    .end local v3           #intent:Landroid/content/Intent;
    :cond_46d
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonXDivert:Landroid/preference/PreferenceScreen;

    if-eqz v11, :cond_488

    .line 1735
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v11

    iput v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    .line 1736
    iget v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    const/4 v12, 0x1

    if-ge v11, v12, :cond_4b8

    .line 1737
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonXDivert:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1738
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonXDivert:Landroid/preference/PreferenceScreen;

    .line 1750
    :cond_488
    :goto_488
    return-void

    .line 1679
    .end local v10           #selectSub:Landroid/preference/PreferenceScreen;
    :cond_489
    const v11, 0x7f0c03fa

    goto/16 :goto_3b5

    .line 1680
    :cond_48e
    const v11, 0x7f0c03fb

    goto/16 :goto_3c4

    .line 1693
    :cond_493
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1694
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    goto/16 :goto_40f

    .line 1702
    :cond_49d
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1703
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    goto :goto_425

    .line 1712
    :cond_4a6
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1713
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    goto :goto_43b

    .line 1721
    :cond_4af
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1722
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    goto :goto_451

    .line 1740
    .restart local v10       #selectSub:Landroid/preference/PreferenceScreen;
    :cond_4b8
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonXDivert:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1743
    :try_start_4bd
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->preProcessXDivert()V
    :try_end_4c0
    .catch Ljava/lang/Exception; {:try_start_4bd .. :try_end_4c0} :catch_4c1

    goto :goto_488

    .line 1744
    :catch_4c1
    move-exception v1

    .line 1745
    .local v1, e:Ljava/lang/Exception;
    const-string v11, "MSimCallFeaturesSetting"

    const-string v12, "mSubManager is null."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_488
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 12
    .parameter "id"

    .prologue
    const/16 v9, 0x276

    const/16 v8, 0x262

    const/4 v7, 0x0

    const v6, 0x7f0c00a3

    .line 1338
    const/16 v5, 0x19a

    if-eq p1, v5, :cond_20

    const/16 v5, 0x190

    if-eq p1, v5, :cond_20

    const/16 v5, 0x1a4

    if-eq p1, v5, :cond_20

    const/16 v5, 0x1ae

    if-eq p1, v5, :cond_20

    const/16 v5, 0x1af

    if-eq p1, v5, :cond_20

    const/16 v5, 0x258

    if-ne p1, v5, :cond_85

    .line 1342
    :cond_20
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1345
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0c0098

    .line 1346
    .local v4, titleId:I
    sparse-switch p1, :sswitch_data_bc

    .line 1378
    const v3, 0x7f0c009d

    .line 1381
    .local v3, msgId:I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1385
    :goto_31
    invoke-virtual {p0, v4}, Lcom/android/phone/MSimCallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1386
    invoke-virtual {p0, v3}, Lcom/android/phone/MSimCallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1387
    .local v2, message:Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1388
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1389
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1392
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 1409
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #message:Ljava/lang/String;
    .end local v3           #msgId:I
    .end local v4           #titleId:I
    :goto_52
    return-object v1

    .line 1348
    .restart local v0       #b:Landroid/app/AlertDialog$Builder;
    .restart local v4       #titleId:I
    :sswitch_53
    const v3, 0x7f0c00a8

    .line 1349
    .restart local v3       #msgId:I
    const v4, 0x7f0c006f

    .line 1351
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_31

    .line 1356
    .end local v3           #msgId:I
    :sswitch_5d
    const v3, 0x7f0c00ac

    .line 1357
    .restart local v3       #msgId:I
    const v4, 0x7f0c006f

    .line 1359
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_31

    .line 1362
    .end local v3           #msgId:I
    :sswitch_67
    const v3, 0x7f0c00a9

    .line 1364
    .restart local v3       #msgId:I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_31

    .line 1367
    .end local v3           #msgId:I
    :sswitch_6e
    const v3, 0x7f0c00aa

    .line 1369
    .restart local v3       #msgId:I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_31

    .line 1373
    .end local v3           #msgId:I
    :sswitch_75
    const v3, 0x7f0c00ab

    .line 1374
    .restart local v3       #msgId:I
    const v5, 0x7f0c0222

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1375
    const v5, 0x7f0c0223

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_31

    .line 1395
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v3           #msgId:I
    .end local v4           #titleId:I
    :cond_85
    if-eq p1, v8, :cond_8d

    const/16 v5, 0x26c

    if-eq p1, v5, :cond_8d

    if-ne p1, v9, :cond_ba

    .line 1397
    :cond_8d
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1398
    .local v1, dialog:Landroid/app/ProgressDialog;
    const v5, 0x7f0c0097

    invoke-virtual {p0, v5}, Lcom/android/phone/MSimCallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1399
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1400
    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1401
    if-ne p1, v8, :cond_b0

    const v5, 0x7f0c009a

    :goto_a8
    invoke-virtual {p0, v5}, Lcom/android/phone/MSimCallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_52

    :cond_b0
    if-ne p1, v9, :cond_b6

    const v5, 0x7f0c009b

    goto :goto_a8

    :cond_b6
    const v5, 0x7f0c0099

    goto :goto_a8

    .line 1409
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :cond_ba
    const/4 v1, 0x0

    goto :goto_52

    .line 1346
    :sswitch_data_bc
    .sparse-switch
        0x190 -> :sswitch_5d
        0x19a -> :sswitch_67
        0x1a4 -> :sswitch_6e
        0x1ae -> :sswitch_75
        0x1af -> :sswitch_75
        0x258 -> :sswitch_53
    .end sparse-switch
.end method

.method public onDialogClosed(Lcom/android/phone/EditPhoneNumberPreference;I)V
    .registers 7
    .parameter "preference"
    .parameter "buttonClicked"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 602
    const/4 v3, -0x2

    if-ne p2, v3, :cond_6

    .line 613
    :cond_5
    :goto_5
    return-void

    .line 605
    :cond_6
    instance-of v3, p1, Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v3, :cond_5

    .line 606
    move-object v0, p1

    .line 608
    .local v0, epn:Lcom/android/phone/EditPhoneNumberPreference;
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    aget-object v3, v3, v1

    if-eq v0, v3, :cond_17

    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    aget-object v3, v3, v2

    if-ne v0, v3, :cond_5

    .line 609
    :cond_17
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    aget-object v3, v3, v1

    if-ne p1, v3, :cond_21

    .line 610
    .local v1, sub:I
    :goto_1d
    invoke-direct {p0, v1}, Lcom/android/phone/MSimCallFeaturesSetting;->handleVMBtnClickRequest(I)V

    goto :goto_5

    .end local v1           #sub:I
    :cond_21
    move v1, v2

    .line 609
    goto :goto_1d
.end method

.method public onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;
    .registers 8
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 621
    const/4 v0, 0x0

    .line 622
    .local v0, sub:I
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    aget-object v5, v5, v2

    if-eq p1, v5, :cond_10

    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    aget-object v5, v5, v3

    if-ne p1, v5, :cond_1e

    .line 623
    :cond_10
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    aget-object v5, v5, v2

    if-ne p1, v5, :cond_1c

    move v0, v2

    .line 627
    :goto_17
    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->updateVoiceNumberField(I)V

    move-object v2, v4

    .line 640
    :goto_1b
    return-object v2

    :cond_1c
    move v0, v3

    .line 623
    goto :goto_17

    .line 631
    :cond_1e
    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    .line 632
    .local v1, vmDisplay:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2e

    move-object v2, v4

    .line 635
    goto :goto_1b

    .line 640
    :cond_2e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0c0070

    invoke-virtual {p0, v3}, Lcom/android/phone/MSimCallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1b
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 465
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 466
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForeground:Z

    .line 468
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 470
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 11
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 550
    iget-object v6, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailProviders:[Landroid/preference/ListPreference;

    aget-object v6, v6, v4

    if-eq p1, v6, :cond_e

    iget-object v6, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailProviders:[Landroid/preference/ListPreference;

    aget-object v6, v6, v5

    if-ne p1, v6, :cond_40

    .line 551
    :cond_e
    iget-object v6, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailProviders:[Landroid/preference/ListPreference;

    aget-object v6, v6, v4

    if-ne p1, v6, :cond_26

    .line 552
    .local v4, sub:I
    :goto_14
    invoke-direct {p0, v4}, Lcom/android/phone/MSimCallFeaturesSetting;->getCurrentVoicemailProviderKey(I)Ljava/lang/String;

    move-result-object v0

    .local v0, currentProviderKey:Ljava/lang/String;
    move-object v2, p2

    .line 553
    check-cast v2, Ljava/lang/String;

    .line 556
    .local v2, newProviderKey:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPreviousVMProviderKey:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 594
    .end local v0           #currentProviderKey:Ljava/lang/String;
    .end local v2           #newProviderKey:Ljava/lang/String;
    .end local v4           #sub:I
    .end local p2
    :cond_25
    :goto_25
    return v5

    .restart local p2
    :cond_26
    move v4, v5

    .line 551
    goto :goto_14

    .line 560
    .restart local v0       #currentProviderKey:Ljava/lang/String;
    .restart local v2       #newProviderKey:Ljava/lang/String;
    .restart local v4       #sub:I
    :cond_28
    invoke-direct {p0, v2, v4}, Lcom/android/phone/MSimCallFeaturesSetting;->updateVMPreferenceWidgets(Ljava/lang/String;I)V

    .line 562
    iget-object v6, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPreviousVMProviderKey:[Ljava/lang/String;

    aput-object v0, v6, v4

    .line 564
    invoke-direct {p0, v2, v4}, Lcom/android/phone/MSimCallFeaturesSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;I)Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;

    move-result-object v3

    .line 573
    .local v3, newProviderSettings:Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;
    if-nez v3, :cond_5c

    .line 576
    iget-object v6, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMProviderSettingsForced:[Z

    aput-boolean v5, v6, v4

    .line 577
    iget-object v6, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailSettings:[Landroid/preference/PreferenceScreen;

    aget-object v6, v6, v4

    invoke-direct {p0, v6, v4}, Lcom/android/phone/MSimCallFeaturesSetting;->simulatePreferenceClick(Landroid/preference/Preference;I)V

    .line 586
    .end local v0           #currentProviderKey:Ljava/lang/String;
    .end local v2           #newProviderKey:Ljava/lang/String;
    .end local v3           #newProviderSettings:Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;
    .end local v4           #sub:I
    :cond_40
    :goto_40
    iget-object v6, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_64

    .line 587
    iget-object v6, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 588
    .local v1, index:I
    iget-object v6, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dtmf_tone_type"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_25

    .line 581
    .end local v1           #index:I
    .restart local v0       #currentProviderKey:Ljava/lang/String;
    .restart local v2       #newProviderKey:Ljava/lang/String;
    .restart local v3       #newProviderSettings:Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;
    .restart local v4       #sub:I
    .restart local p2
    :cond_5c
    iget-object v6, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:[Z

    aput-boolean v5, v6, v4

    .line 582
    invoke-direct {p0, v2, v3, v4}, Lcom/android/phone/MSimCallFeaturesSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;I)V

    goto :goto_40

    .line 590
    .end local v0           #currentProviderKey:Ljava/lang/String;
    .end local v2           #newProviderKey:Ljava/lang/String;
    .end local v3           #newProviderSettings:Lcom/android/phone/MSimCallFeaturesSetting$VoiceMailProviderSettings;
    .end local v4           #sub:I
    :cond_64
    iget-object v6, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_25

    .line 591
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MSimCallFeaturesSetting;->handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto :goto_25
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 487
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-ne p2, v3, :cond_7

    .line 537
    :cond_6
    :goto_6
    return v2

    .line 489
    :cond_7
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-eq p2, v3, :cond_6

    .line 491
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_28

    .line 492
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "call_auto_retry"

    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_24

    move v1, v2

    :cond_24
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    .line 496
    :cond_28
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_55

    .line 497
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_50

    move v0, v2

    .line 499
    .local v0, hac:I
    :goto_35
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "hearing_aid"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 503
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "HACSetting"

    if-eqz v0, :cond_52

    const-string v1, "ON"

    :goto_4c
    invoke-virtual {v3, v4, v1}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .end local v0           #hac:I
    :cond_50
    move v0, v1

    .line 497
    goto :goto_35

    .line 503
    .restart local v0       #hac:I
    :cond_52
    const-string v1, "OFF"

    goto :goto_4c

    .line 505
    .end local v0           #hac:I
    :cond_55
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonXDivert:Landroid/preference/PreferenceScreen;

    if-ne p2, v3, :cond_60

    .line 506
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->preProcessXDivert()V

    .line 507
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->processXDivert()V

    goto :goto_6

    .line 511
    :cond_60
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    aget-object v3, v3, v1

    if-eq p2, v3, :cond_6

    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubMenuVoicemailSettings:[Lcom/android/phone/EditPhoneNumberPreference;

    aget-object v3, v3, v2

    if-eq p2, v3, :cond_6

    .line 515
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailSettings:[Landroid/preference/PreferenceScreen;

    aget-object v3, v3, v1

    if-ne p2, v3, :cond_82

    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_82

    .line 518
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {p0, v1, v3}, Lcom/android/phone/MSimCallFeaturesSetting;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_6

    .line 521
    :cond_82
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailSettings:[Landroid/preference/PreferenceScreen;

    aget-object v3, v3, v2

    if-ne p2, v3, :cond_99

    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_99

    .line 524
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/16 v3, 0xb

    invoke-virtual {p0, v1, v3}, Lcom/android/phone/MSimCallFeaturesSetting;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_6

    .line 529
    :cond_99
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mIPCallSettings:[Landroid/preference/PreferenceScreen;

    aget-object v3, v3, v1

    if-eq p2, v3, :cond_a5

    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mIPCallSettings:[Landroid/preference/PreferenceScreen;

    aget-object v3, v3, v2

    if-ne p2, v3, :cond_c0

    :cond_a5
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_c0

    .line 532
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "subscription"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    invoke-virtual {p0, v3, v1}, Lcom/android/phone/MSimCallFeaturesSetting;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_6

    :cond_c0
    move v2, v1

    .line 537
    goto/16 :goto_6
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1331
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1332
    iput p1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mCurrentDialogId:I

    .line 1333
    return-void
.end method

.method protected onResume()V
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1853
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 1855
    iput-boolean v6, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForeground:Z

    .line 1858
    new-instance v2, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1859
    .local v2, filter:Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v2}, Lcom/android/phone/MSimCallFeaturesSetting;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1862
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-eqz v5, :cond_26

    .line 1863
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "dtmf_tone_type"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1865
    .local v1, dtmf:I
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1868
    .end local v1           #dtmf:I
    :cond_26
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_3c

    .line 1869
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "call_auto_retry"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1871
    .local v0, autoretry:I
    iget-object v8, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_6c

    move v5, v6

    :goto_39
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1874
    .end local v0           #autoretry:I
    :cond_3c
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_51

    .line 1875
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "hearing_aid"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1876
    .local v3, hac:I
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_6e

    :goto_4e
    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1879
    .end local v3           #hac:I
    :cond_51
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-eqz v5, :cond_6b

    .line 1880
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "preferred_tty_mode"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1883
    .local v4, settingsTtyMode:I
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1884
    invoke-direct {p0, v4}, Lcom/android/phone/MSimCallFeaturesSetting;->updatePreferredTtyModeSummary(I)V

    .line 1886
    .end local v4           #settingsTtyMode:I
    :cond_6b
    return-void

    .restart local v0       #autoretry:I
    :cond_6c
    move v5, v7

    .line 1871
    goto :goto_39

    .end local v0           #autoretry:I
    .restart local v3       #hac:I
    :cond_6e
    move v6, v7

    .line 1876
    goto :goto_4e
.end method

.method onRevertDone(I)V
    .registers 4
    .parameter "sub"

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVoicemailProviders:[Landroid/preference/ListPreference;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPreviousVMProviderKey:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 712
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPreviousVMProviderKey:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-direct {p0, v0, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->updateVMPreferenceWidgets(Ljava/lang/String;I)V

    .line 713
    invoke-direct {p0, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->updateVoiceNumberField(I)V

    .line 714
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMOrFwdSetError:[I

    aget v0, v0, p1

    if-eqz v0, :cond_27

    .line 715
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMOrFwdSetError:[I

    aget v0, v0, p1

    invoke-direct {p0, v0, p1}, Lcom/android/phone/MSimCallFeaturesSetting;->showVMDialog(II)V

    .line 716
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mVMOrFwdSetError:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 718
    :cond_27
    return-void
.end method

.method public preProcessXDivert()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1753
    iget v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    new-array v1, v1, [Lcom/android/internal/telephony/Phone;

    iput-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    .line 1754
    iget v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mRawNumber:[Ljava/lang/String;

    .line 1755
    iget v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mLine1Number:[Ljava/lang/String;

    .line 1756
    iget v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneType:[I

    .line 1757
    iget v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mIsSubActive:[Z

    .line 1758
    const/4 v0, 0x0

    .local v0, i:I
    :goto_20
    iget v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    if-ge v0, v1, :cond_b9

    .line 1759
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/phone/MSimPhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1760
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mRawNumber:[Ljava/lang/String;

    aput-object v4, v1, v0

    .line 1761
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mRawNumber:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1762
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mLine1Number:[Ljava/lang/String;

    aput-object v4, v1, v0

    .line 1763
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mRawNumber:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5a

    .line 1764
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mLine1Number:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mRawNumber:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1766
    :cond_5a
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneType:[I

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    aput v2, v1, v0

    .line 1768
    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mIsSubActive:[Z

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubManager:Lcom/android/internal/telephony/SubscriptionManager;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionManager;->isSubActive(I)Z

    move-result v1

    if-eqz v1, :cond_b7

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubManager:Lcom/android/internal/telephony/SubscriptionManager;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionManager;->isCardPresent(I)Z

    move-result v1

    if-eqz v1, :cond_b7

    const/4 v1, 0x1

    :goto_79
    aput-boolean v1, v2, v0

    .line 1770
    const-string v1, "MSimCallFeaturesSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phonetype = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneType:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mIsSubActive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mIsSubActive:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mLine1Number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mLine1Number:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_20

    .line 1768
    :cond_b7
    const/4 v1, 0x0

    goto :goto_79

    .line 1773
    :cond_b9
    return-void
.end method

.method public processXDivert()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1776
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mIsSubActive:[Z

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mIsSubActive:[Z

    aget-boolean v1, v1, v3

    if-nez v1, :cond_16

    .line 1779
    :cond_f
    const v1, 0x7f0c0200

    invoke-virtual {p0, v1}, Lcom/android/phone/MSimCallFeaturesSetting;->displayAlertDialog(I)V

    .line 1796
    :goto_15
    return-void

    .line 1780
    :cond_16
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneType:[I

    aget v1, v1, v2

    if-eq v1, v4, :cond_22

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneType:[I

    aget v1, v1, v3

    if-ne v1, v4, :cond_29

    .line 1784
    :cond_22
    const v1, 0x7f0c01fd

    invoke-virtual {p0, v1}, Lcom/android/phone/MSimCallFeaturesSetting;->displayAlertDialog(I)V

    goto :goto_15

    .line 1785
    :cond_29
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mLine1Number:[Ljava/lang/String;

    aget-object v1, v1, v2

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mLine1Number:[Ljava/lang/String;

    aget-object v1, v1, v3

    if-nez v1, :cond_43

    .line 1788
    :cond_35
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1789
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/phone/XDivertPhoneNumbers;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1790
    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_15

    .line 1794
    .end local v0           #intent:Landroid/content/Intent;
    :cond_43
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->processXDivertCheckBox()V

    goto :goto_15
.end method

.method public processXDivertCheckBox()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1816
    const-string v1, "MSimCallFeaturesSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processXDivertCheckBox line1 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mLine1Number:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "line2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mLine1Number:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1819
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/phone/XDivertSetting;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1820
    const-string v1, "Sub1_Line1Number"

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mLine1Number:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1821
    const-string v1, "Sub2_Line1Number"

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mLine1Number:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1822
    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->startActivity(Landroid/content/Intent;)V

    .line 1823
    return-void
.end method

.method setVMNumberWithCarrier(I)V
    .registers 7
    .parameter "sub"

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, p1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNewVMNumber:[Ljava/lang/String;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSetOptionComplete:Landroid/os/Handler;

    add-int/lit16 v4, p1, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1086
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 647
    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    .line 649
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 655
    :goto_6
    return-void

    .line 654
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_6
.end method
