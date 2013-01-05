.class public Lcom/android/phone/MSimCallFeaturesSubSetting;
.super Landroid/preference/PreferenceActivity;
.source "MSimCallFeaturesSubSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;,
        Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;
    }
.end annotation


# static fields
.field public static final ACTION_ADD_VOICEMAIL:Ljava/lang/String; = "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

.field public static final ACTION_CONFIGURE_VOICEMAIL:Ljava/lang/String; = "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

.field protected static final BUTTON_CDMA_OPTIONS:Ljava/lang/String; = "button_cdma_more_expand_key"

.field protected static final BUTTON_FDN_KEY:Ljava/lang/String; = "button_fdn_key"

.field protected static final BUTTON_GSM_UMTS_OPTIONS:Ljava/lang/String; = "button_gsm_more_expand_key"

.field private static final BUTTON_RESPOND_VIA_SMS_KEY:Ljava/lang/String; = "button_respond_via_sms_key"

.field private static final BUTTON_SIP_CALL_OPTIONS:Ljava/lang/String; = "sip_call_options_key"

.field private static final BUTTON_SIP_CALL_OPTIONS_WIFI_ONLY:Ljava/lang/String; = "sip_call_options_wifi_only_key"

.field private static final BUTTON_VOICEMAIL_KEY:Ljava/lang/String; = "button_voicemail_key"

.field private static final BUTTON_VOICEMAIL_PROVIDER_KEY:Ljava/lang/String; = "button_voicemail_provider_key"

.field private static final BUTTON_VOICEMAIL_SETTING_KEY:Ljava/lang/String; = "button_voicemail_setting_key"

.field private static final DBG:Z = false

.field public static final DEFAULT_VM_PROVIDER_KEY:Ljava/lang/String; = ""

.field private static final EVENT_FORWARDING_CHANGED:I = 0x1f5

.field private static final EVENT_FORWARDING_GET_COMPLETED:I = 0x1f6

.field private static final EVENT_VOICEMAIL_CHANGED:I = 0x1f4

.field static final FORWARDING_SETTINGS_REASONS:[I = null

.field public static final FWD_NUMBER_EXTRA:Ljava/lang/String; = "com.android.phone.ForwardingNumber"

.field public static final FWD_NUMBER_TIME_EXTRA:Ljava/lang/String; = "com.android.phone.ForwardingNumberTime"

.field public static final FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo; = null

.field public static final FWD_SETTINGS_LENGTH_TAG:Ljava/lang/String; = "#Length"

.field public static final FWD_SETTINGS_TAG:Ljava/lang/String; = "#FWDSettings"

.field public static final FWD_SETTING_NUMBER:Ljava/lang/String; = "#Number"

.field public static final FWD_SETTING_REASON:Ljava/lang/String; = "#Reason"

.field public static final FWD_SETTING_STATUS:Ljava/lang/String; = "#Status"

.field public static final FWD_SETTING_TAG:Ljava/lang/String; = "#Setting"

.field public static final FWD_SETTING_TIME:Ljava/lang/String; = "#Time"

.field private static final FW_GET_RESPONSE_ERROR:I = 0x1f6

.field private static final FW_SET_RESPONSE_ERROR:I = 0x1f5

.field public static final IGNORE_PROVIDER_EXTRA:Ljava/lang/String; = "com.android.phone.ProviderToIgnore"

.field private static final LOG_TAG:Ljava/lang/String; = "MSimCallFeaturesSubSetting"

.field private static final MSG_FW_GET_EXCEPTION:I = 0x192

.field private static final MSG_FW_SET_EXCEPTION:I = 0x191

.field private static final MSG_OK:I = 0x64

.field private static final MSG_VM_EXCEPTION:I = 0x190

.field private static final MSG_VM_NOCHANGE:I = 0x2bc

.field private static final MSG_VM_OK:I = 0x258

.field private static final NUM_PROJECTION:[Ljava/lang/String; = null

.field public static final SIGNOUT_EXTRA:Ljava/lang/String; = "com.android.phone.Signout"

.field private static final SIP_SETTINGS_CATEGORY_KEY:Ljava/lang/String; = "sip_settings_category_key"

.field private static final UP_ACTIVITY_CLASS:Ljava/lang/String; = "com.android.contacts.activities.DialtactsActivity"

.field private static final UP_ACTIVITY_PACKAGE:Ljava/lang/String; = "com.android.contacts"

.field private static final VM_NOCHANGE_ERROR:I = 0x190

.field private static final VM_NUMBERS_SHARED_PREFERENCES_NAME:Ljava/lang/String; = "vm_numbers"

.field public static final VM_NUMBER_EXTRA:Ljava/lang/String; = "com.android.phone.VoicemailNumber"

.field public static final VM_NUMBER_TAG:Ljava/lang/String; = "#VMNumber"

.field private static final VM_RESPONSE_ERROR:I = 0x1f4

.field private static final VOICEMAIL_DIALOG_CONFIRM:I = 0x258

.field private static final VOICEMAIL_FWD_READING_DIALOG:I = 0x25a

.field private static final VOICEMAIL_FWD_SAVING_DIALOG:I = 0x259

.field private static final VOICEMAIL_PREF_ID:I = 0x1

.field private static final VOICEMAIL_PROVIDER_CFG_ID:I = 0x2

.field private static final VOICEMAIL_REVERTING_DIALOG:I = 0x25b


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mButtonSipCallOptions:Landroid/preference/ListPreference;

.field mChangingVMorFwdDueToProviderChange:Z

.field private mContactListIntent:Landroid/content/Intent;

.field mCurrentDialogId:I

.field private mExpectedChangeResultReasons:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mForeground:Z

.field private mForwardingChangeResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/AsyncResult;",
            ">;"
        }
    .end annotation
.end field

.field mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

.field mFwdChangesRequireRollback:Z

.field private final mGetOptionComplete:Landroid/os/Handler;

.field private mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

.field mNewVMNumber:Ljava/lang/String;

.field private mOldVmNumber:Ljava/lang/String;

.field mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

.field protected mPhone:Lcom/android/internal/telephony/Phone;

.field mPreviousVMProviderKey:Ljava/lang/String;

.field private mReadingSettingsForDefaultProvider:Z

.field private final mRevertOptionComplete:Landroid/os/Handler;

.field private final mSetOptionComplete:Landroid/os/Handler;

.field private mSipManager:Landroid/net/sip/SipManager;

.field private mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

.field private mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

.field private mSubscription:I

.field private mSubscriptionPrefCDMA:Landroid/preference/PreferenceScreen;

.field private mSubscriptionPrefFDN:Landroid/preference/PreferenceScreen;

.field private mSubscriptionPrefGSM:Landroid/preference/PreferenceScreen;

.field mVMChangeCompletedSuccesfully:Z

.field mVMOrFwdSetError:I

.field mVMProviderSettingsForced:Z

.field private final mVMProvidersData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;",
            ">;"
        }
    .end annotation
.end field

.field mVoicemailChangeResult:Landroid/os/AsyncResult;

.field private mVoicemailProviders:Landroid/preference/ListPreference;

.field private mVoicemailSettings:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 114
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/MSimCallFeaturesSubSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 141
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/MSimCallFeaturesSubSetting;->NUM_PROJECTION:[Ljava/lang/String;

    .line 226
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_16

    sput-object v0, Lcom/android/phone/MSimCallFeaturesSubSetting;->FORWARDING_SETTINGS_REASONS:[I

    return-void

    :array_16
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
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 212
    iput v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscription:I

    .line 312
    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 318
    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 325
    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    .line 330
    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 335
    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 340
    iput v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mCurrentDialogId:I

    .line 346
    iput-boolean v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProviderSettingsForced:Z

    .line 352
    iput-boolean v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 358
    iput-boolean v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMChangeCompletedSuccesfully:Z

    .line 364
    iput-boolean v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mFwdChangesRequireRollback:Z

    .line 370
    iput v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMOrFwdSetError:I

    .line 380
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProvidersData:Ljava/util/Map;

    .line 406
    iput-boolean v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mReadingSettingsForDefaultProvider:Z

    .line 782
    new-instance v0, Lcom/android/phone/MSimCallFeaturesSubSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MSimCallFeaturesSubSetting$1;-><init>(Lcom/android/phone/MSimCallFeaturesSubSetting;)V

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mGetOptionComplete:Landroid/os/Handler;

    .line 951
    new-instance v0, Lcom/android/phone/MSimCallFeaturesSubSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/MSimCallFeaturesSubSetting$2;-><init>(Lcom/android/phone/MSimCallFeaturesSubSetting;)V

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSetOptionComplete:Landroid/os/Handler;

    .line 1011
    new-instance v0, Lcom/android/phone/MSimCallFeaturesSubSetting$3;

    invoke-direct {v0, p0}, Lcom/android/phone/MSimCallFeaturesSubSetting$3;-><init>(Lcom/android/phone/MSimCallFeaturesSubSetting;)V

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mRevertOptionComplete:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MSimCallFeaturesSubSetting;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->checkVMChangeSuccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/MSimCallFeaturesSubSetting;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/MSimCallFeaturesSubSetting;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->checkForwardingCompleted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/MSimCallFeaturesSubSetting;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->checkFwdChangeSuccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/MSimCallFeaturesSubSetting;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->dismissDialogSafely(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/MSimCallFeaturesSubSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->handleSetVMOrFwdMessage()V

    return-void
.end method

.method private checkForwardingCompleted()Z
    .registers 5

    .prologue
    .line 1049
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;

    if-nez v3, :cond_6

    .line 1050
    const/4 v2, 0x1

    .line 1062
    .local v2, result:Z
    :cond_5
    :goto_5
    return v2

    .line 1054
    .end local v2           #result:Z
    :cond_6
    const/4 v2, 0x1

    .line 1055
    .restart local v2       #result:Z
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1056
    .local v1, reason:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_d

    .line 1057
    const/4 v2, 0x0

    .line 1058
    goto :goto_5
.end method

.method private checkFwdChangeSuccess()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1068
    const/4 v3, 0x0

    .line 1069
    .local v3, result:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1071
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;>;"
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 1072
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1073
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v1, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1074
    .local v1, exception:Ljava/lang/Throwable;
    if-eqz v1, :cond_b

    .line 1075
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 1076
    if-nez v3, :cond_29

    .line 1077
    const-string v3, ""

    .line 1082
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    .end local v1           #exception:Ljava/lang/Throwable;
    :cond_29
    return-object v3
.end method

.method private checkVMChangeSuccess()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1089
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_13

    .line 1090
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1091
    .local v0, msg:Ljava/lang/String;
    if-nez v0, :cond_12

    .line 1092
    const-string v0, ""

    .line 1096
    .end local v0           #msg:Ljava/lang/String;
    :cond_12
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private createSipCallSettings()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1426
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isVoipSupported"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_4d

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVoipSupported()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1427
    invoke-static {p0}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSipManager:Landroid/net/sip/SipManager;

    .line 1428
    new-instance v0, Lcom/android/phone/sip/SipSharedPreferences;

    invoke-direct {v0, p0}, Lcom/android/phone/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    .line 1429
    const v0, 0x7f050024

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->addPreferencesFromResource(I)V

    .line 1430
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getSipCallOptionPreference()Landroid/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    .line 1431
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1432
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v2}, Lcom/android/phone/sip/SipSharedPreferences;->getSipCallOption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1435
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1438
    :cond_4d
    return-void
.end method

.method private deleteSettingsForVoicemailProvider(Ljava/lang/String;)V
    .registers 5
    .parameter "key"

    .prologue
    .line 1715
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-nez v0, :cond_5

    .line 1722
    :goto_4
    return-void

    .line 1718
    :cond_5
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#VMNumber"

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

    const-string v2, "#FWDSettings"

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

    goto :goto_4
.end method

.method private dismissDialogSafely(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 728
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->dismissDialog(I)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    .line 734
    :goto_3
    return-void

    .line 729
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method private getCurrentVoicemailProviderKey()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1725
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1726
    .local v0, key:Ljava/lang/String;
    if-eqz v0, :cond_9

    .end local v0           #key:Ljava/lang/String;
    :goto_8
    return-object v0

    .restart local v0       #key:Ljava/lang/String;
    :cond_9
    const-string v0, ""

    goto :goto_8
.end method

.method private getSipCallOptionPreference()Landroid/preference/ListPreference;
    .registers 5

    .prologue
    .line 1443
    const-string v3, "sip_call_options_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/MSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 1445
    .local v1, wifiAnd3G:Landroid/preference/ListPreference;
    const-string v3, "sip_call_options_wifi_only_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/MSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 1447
    .local v2, wifiOnly:Landroid/preference/ListPreference;
    const-string v3, "sip_settings_category_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/MSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 1449
    .local v0, sipSettings:Landroid/preference/PreferenceGroup;
    invoke-static {p0}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1450
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1454
    .end local v2           #wifiOnly:Landroid/preference/ListPreference;
    :goto_21
    return-object v2

    .line 1453
    .restart local v2       #wifiOnly:Landroid/preference/ListPreference;
    :cond_22
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-object v2, v1

    .line 1454
    goto :goto_21
.end method

.method public static goUpToTopLevelSetting(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 1748
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1749
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1750
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1751
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1752
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1753
    return-void
.end method

.method private handleSetVMOrFwdMessage()V
    .registers 6

    .prologue
    .line 1103
    const/4 v2, 0x1

    .line 1104
    .local v2, success:Z
    const/4 v1, 0x0

    .line 1105
    .local v1, fwdFailure:Z
    const-string v0, ""

    .line 1106
    .local v0, exceptionMessage:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;

    if-eqz v3, :cond_10

    .line 1107
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->checkFwdChangeSuccess()Ljava/lang/String;

    move-result-object v0

    .line 1108
    if-eqz v0, :cond_10

    .line 1109
    const/4 v2, 0x0

    .line 1110
    const/4 v1, 0x1

    .line 1113
    :cond_10
    if-eqz v2, :cond_19

    .line 1114
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->checkVMChangeSuccess()Ljava/lang/String;

    move-result-object v0

    .line 1115
    if-eqz v0, :cond_19

    .line 1116
    const/4 v2, 0x0

    .line 1119
    :cond_19
    if-eqz v2, :cond_24

    .line 1121
    const/16 v3, 0x258

    invoke-direct {p0, v3}, Lcom/android/phone/MSimCallFeaturesSubSetting;->handleVMAndFwdSetSuccess(I)V

    .line 1122
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->updateVoiceNumberField()V

    .line 1132
    :goto_23
    return-void

    .line 1124
    :cond_24
    if-eqz v1, :cond_42

    .line 1125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change FW failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 1126
    const/16 v3, 0x191

    invoke-direct {p0, v3}, Lcom/android/phone/MSimCallFeaturesSubSetting;->handleVMOrFwdSetError(I)V

    goto :goto_23

    .line 1128
    :cond_42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change VM failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 1129
    const/16 v3, 0x190

    invoke-direct {p0, v3}, Lcom/android/phone/MSimCallFeaturesSubSetting;->handleVMOrFwdSetError(I)V

    goto :goto_23
.end method

.method private handleSipCallOptionsChange(Ljava/lang/Object;)V
    .registers 5
    .parameter "objValue"

    .prologue
    .line 1482
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1483
    .local v0, option:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/android/phone/sip/SipSharedPreferences;->setSipCallOption(Ljava/lang/String;)V

    .line 1484
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1486
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1487
    return-void
.end method

.method private handleVMAndFwdSetSuccess(I)V
    .registers 3
    .parameter "msgId"

    .prologue
    .line 1147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1148
    invoke-direct {p0, p1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showVMDialog(I)V

    .line 1149
    return-void
.end method

.method private handleVMBtnClickRequest()V
    .registers 5

    .prologue
    .line 689
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/phone/MSimCallFeaturesSubSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/MSimCallFeaturesSubSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v0, v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;)V

    .line 693
    return-void
.end method

.method private handleVMOrFwdSetError(I)V
    .registers 4
    .parameter "msgId"

    .prologue
    const/4 v1, 0x0

    .line 1135
    iget-boolean v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mChangingVMorFwdDueToProviderChange:Z

    if-eqz v0, :cond_d

    .line 1136
    iput p1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMOrFwdSetError:I

    .line 1137
    iput-boolean v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1138
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->switchToPreviousVoicemailProvider()V

    .line 1144
    :goto_c
    return-void

    .line 1141
    :cond_d
    iput-boolean v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1142
    invoke-direct {p0, p1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showVMDialog(I)V

    .line 1143
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->updateVoiceNumberField()V

    goto :goto_c
.end method

.method private infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;
    .registers 9
    .parameter "infos"
    .parameter "reason"

    .prologue
    .line 875
    const/4 v4, 0x0

    .line 876
    .local v4, result:Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz p1, :cond_f

    .line 877
    move-object v0, p1

    .local v0, arr$:[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_6
    if-ge v1, v3, :cond_f

    aget-object v2, v0, v1

    .line 878
    .local v2, info:Lcom/android/internal/telephony/CallForwardInfo;
    iget v5, v2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v5, p2, :cond_10

    .line 879
    move-object v4, v2

    .line 884
    .end local v0           #arr$:[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v1           #i$:I
    .end local v2           #info:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v3           #len$:I
    :cond_f
    return-object v4

    .line 877
    .restart local v0       #arr$:[Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v1       #i$:I
    .restart local v2       #info:Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v3       #len$:I
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method private initVoiceMailProviders()V
    .registers 23

    .prologue
    .line 1531
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    const-string v19, "vm_numbers"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    .line 1535
    const/4 v14, 0x0

    .line 1536
    .local v14, providerToIgnore:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getIntent()Landroid/content/Intent;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_40

    .line 1538
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "com.android.phone.ProviderToIgnore"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_39

    .line 1539
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "com.android.phone.ProviderToIgnore"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1542
    :cond_39
    if-eqz v14, :cond_40

    .line 1543
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/MSimCallFeaturesSubSetting;->deleteSettingsForVoicemailProvider(Ljava/lang/String;)V

    .line 1547
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->clear()V

    .line 1550
    const v18, 0x7f0c00ae

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1551
    .local v10, myCarrier:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v18, v0

    const-string v19, ""

    new-instance v20, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v10, v2}, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;-><init>(Lcom/android/phone/MSimCallFeaturesSubSetting;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-interface/range {v18 .. v20}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1554
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 1555
    .local v12, pm:Landroid/content/pm/PackageManager;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1556
    .local v7, intent:Landroid/content/Intent;
    const-string v18, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1557
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v7, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 1558
    .local v15, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    add-int/lit8 v9, v18, 0x1

    .line 1562
    .local v9, len:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_8b
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_ea

    .line 1563
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    .line 1564
    .local v16, ri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1565
    .local v3, currentActivityInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/MSimCallFeaturesSubSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v8

    .line 1567
    .local v8, key:Ljava/lang/String;
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_ae

    .line 1569
    add-int/lit8 v9, v9, -0x1

    .line 1562
    :goto_ab
    add-int/lit8 v6, v6, 0x1

    goto :goto_8b

    .line 1572
    :cond_ae
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1573
    .local v11, nameForDisplay:Ljava/lang/String;
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 1574
    .local v13, providerIntent:Landroid/content/Intent;
    const-string v18, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1575
    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v13}, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;-><init>(Lcom/android/phone/MSimCallFeaturesSubSetting;Ljava/lang/String;Landroid/content/Intent;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ab

    .line 1585
    .end local v3           #currentActivityInfo:Landroid/content/pm/ActivityInfo;
    .end local v8           #key:Ljava/lang/String;
    .end local v11           #nameForDisplay:Ljava/lang/String;
    .end local v13           #providerIntent:Landroid/content/Intent;
    .end local v16           #ri:Landroid/content/pm/ResolveInfo;
    :cond_ea
    new-array v4, v9, [Ljava/lang/String;

    .line 1586
    .local v4, entries:[Ljava/lang/String;
    new-array v0, v9, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1587
    .local v17, values:[Ljava/lang/String;
    const/16 v18, 0x0

    aput-object v10, v4, v18

    .line 1588
    const/16 v18, 0x0

    const-string v19, ""

    aput-object v19, v17, v18

    .line 1589
    const/4 v5, 0x1

    .line 1590
    .local v5, entryIdx:I
    const/4 v6, 0x0

    :goto_fc
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_144

    .line 1591
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v8

    .line 1592
    .restart local v8       #key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_129

    .line 1590
    :goto_126
    add-int/lit8 v6, v6, 0x1

    goto :goto_fc

    .line 1595
    :cond_129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v4, v5

    .line 1596
    aput-object v8, v17, v5

    .line 1597
    add-int/lit8 v5, v5, 0x1

    goto :goto_126

    .line 1600
    .end local v8           #key:Ljava/lang/String;
    :cond_144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1603
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 1604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 1605
    return-void
.end method

.method private isAirplaneModeOn()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1477
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getContentResolver()Landroid/content/ContentResolver;

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
    .line 889
    const/4 v0, 0x1

    .line 890
    .local v0, result:Z
    iget v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_c

    .line 893
    if-eqz p1, :cond_c

    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_c

    .line 894
    const/4 v0, 0x0

    .line 897
    :cond_c
    return v0
.end method

.method private loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;
    .registers 14
    .parameter "key"

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x0

    .line 1676
    iget-object v7, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#VMNumber"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1678
    .local v6, vmNumberSetting:Ljava/lang/String;
    if-nez v6, :cond_1e

    .line 1707
    :goto_1d
    return-object v5

    .line 1683
    :cond_1e
    sget-object v0, Lcom/android/phone/MSimCallFeaturesSubSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 1684
    .local v0, cfi:[Lcom/android/internal/telephony/CallForwardInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#FWDSettings"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1685
    .local v1, fwdKey:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

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

    .line 1686
    .local v2, fwdLen:I
    if-lez v2, :cond_fe

    .line 1687
    new-array v0, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 1688
    const/4 v3, 0x0

    .local v3, i:I
    :goto_51
    array-length v7, v0

    if-ge v3, v7, :cond_fe

    .line 1689
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

    .line 1690
    .local v4, settingKey:Ljava/lang/String;
    new-instance v7, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v7}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v7, v0, v3

    .line 1691
    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

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

    .line 1693
    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

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

    .line 1696
    aget-object v7, v0, v3

    const/4 v8, 0x1

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 1697
    aget-object v7, v0, v3

    const/16 v8, 0x91

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 1698
    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

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

    .line 1700
    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

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

    .line 1688
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_51

    .line 1705
    .end local v3           #i:I
    .end local v4           #settingKey:Ljava/lang/String;
    :cond_fe
    new-instance v5, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;

    invoke-direct {v5, p0, v6, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/MSimCallFeaturesSubSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 1707
    .local v5, settings:Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;
    goto/16 :goto_1d
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 1490
    const-string v0, "MSimCallFeaturesSubSetting"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    return-void
.end method

.method private makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .registers 3
    .parameter "ai"

    .prologue
    .line 1608
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method private maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;)V
    .registers 12
    .parameter "key"
    .parameter "newSettings"

    .prologue
    .line 1638
    iget-object v7, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-nez v7, :cond_5

    .line 1665
    :cond_4
    :goto_4
    return-void

    .line 1641
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;

    move-result-object v0

    .line 1642
    .local v0, curSettings:Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;
    invoke-virtual {p2, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1647
    iget-object v7, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1648
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#VMNumber"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p2, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1649
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#FWDSettings"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1650
    .local v3, fwdKey:Ljava/lang/String;
    iget-object v5, p2, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 1651
    .local v5, s:[Lcom/android/internal/telephony/CallForwardInfo;
    sget-object v7, Lcom/android/phone/MSimCallFeaturesSubSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v5, v7, :cond_e2

    .line 1652
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

    .line 1653
    const/4 v4, 0x0

    .local v4, i:I
    :goto_5e
    array-length v7, v5

    if-ge v4, v7, :cond_f9

    .line 1654
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Setting"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1655
    .local v6, settingKey:Ljava/lang/String;
    aget-object v2, v5, v4

    .line 1656
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

    .line 1657
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

    .line 1658
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

    .line 1659
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

    .line 1653
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5e

    .line 1662
    .end local v2           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v4           #i:I
    .end local v6           #settingKey:Ljava/lang/String;
    :cond_e2
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

    .line 1664
    :cond_f9
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_4
.end method

.method private resetForwardingChangeState()V
    .registers 2

    .prologue
    .line 901
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 902
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    .line 903
    return-void
.end method

.method private saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;)V
    .registers 9
    .parameter "key"
    .parameter "newSettings"

    .prologue
    const/4 v5, 0x0

    .line 739
    iget-object v1, p2, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewVMNumber:Ljava/lang/String;

    .line 741
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewVMNumber:Ljava/lang/String;

    if-nez v1, :cond_d

    .line 742
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewVMNumber:Ljava/lang/String;

    .line 745
    :cond_d
    iget-object v1, p2, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 751
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1e

    .line 753
    sget-object v1, Lcom/android/phone/MSimCallFeaturesSubSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 757
    :cond_1e
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v2, Lcom/android/phone/MSimCallFeaturesSubSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-ne v1, v2, :cond_34

    .line 758
    const/16 v1, 0x2bc

    invoke-direct {p0, v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showVMDialog(I)V

    .line 780
    :goto_33
    return-void

    .line 762
    :cond_34
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MSimCallFeaturesSubSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;)V

    .line 763
    iput-boolean v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMChangeCompletedSuccesfully:Z

    .line 764
    iput-boolean v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mFwdChangesRequireRollback:Z

    .line 765
    iput v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMOrFwdSetError:I

    .line 766
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7b

    .line 767
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mReadingSettingsForDefaultProvider:Z

    .line 770
    sget-object v1, Lcom/android/phone/MSimCallFeaturesSubSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v1, v1

    new-array v1, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 771
    const/4 v0, 0x0

    .local v0, i:I
    :goto_57
    sget-object v1, Lcom/android/phone/MSimCallFeaturesSubSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_75

    .line 772
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 773
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/android/phone/MSimCallFeaturesSubSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mGetOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f6

    invoke-virtual {v3, v4, v0, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 771
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    .line 776
    :cond_75
    const/16 v1, 0x25a

    invoke-direct {p0, v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showDialogIfForeground(I)V

    goto :goto_33

    .line 778
    .end local v0           #i:I
    :cond_7b
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_33
.end method

.method private saveVoiceMailAndForwardingNumberStage2()V
    .registers 13

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 908
    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 909
    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 910
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v1, Lcom/android/phone/MSimCallFeaturesSubSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v0, v1, :cond_56

    .line 911
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->resetForwardingChangeState()V

    .line 912
    const/4 v8, 0x0

    .local v8, i:I
    :goto_10
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v0, v0

    if-ge v8, v0, :cond_50

    .line 913
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v7, v0, v8

    .line 915
    .local v7, fi:Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    iget v1, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lcom/android/phone/MSimCallFeaturesSubSetting;->isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z

    move-result v6

    .line 918
    .local v6, doUpdate:Z
    if-eqz v6, :cond_4b

    .line 920
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 922
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, v7, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4e

    const/4 v1, 0x3

    :goto_38
    iget v2, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v7, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v10, 0x1f5

    iget v11, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-virtual {v5, v10, v11, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 912
    :cond_4b
    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    :cond_4e
    move v1, v9

    .line 922
    goto :goto_38

    .line 933
    .end local v6           #doUpdate:Z
    .end local v7           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    :cond_50
    const/16 v0, 0x259

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showDialogIfForeground(I)V

    .line 938
    .end local v8           #i:I
    :goto_55
    return-void

    .line 936
    :cond_56
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->setVMNumberWithCarrier()V

    goto :goto_55
.end method

.method private showDialogIfForeground(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 721
    iget-boolean v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForeground:Z

    if-eqz v0, :cond_7

    .line 722
    invoke-virtual {p0, p1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showDialog(I)V

    .line 724
    :cond_7
    return-void
.end method

.method private showVMDialog(I)V
    .registers 3
    .parameter "msgStatus"

    .prologue
    .line 1302
    sparse-switch p1, :sswitch_data_22

    .line 1324
    :goto_3
    return-void

    .line 1306
    :sswitch_4
    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showDialogIfForeground(I)V

    goto :goto_3

    .line 1309
    :sswitch_a
    const/16 v0, 0x1f5

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showDialogIfForeground(I)V

    goto :goto_3

    .line 1312
    :sswitch_10
    const/16 v0, 0x1f6

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showDialogIfForeground(I)V

    goto :goto_3

    .line 1315
    :sswitch_16
    const/16 v0, 0x190

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showDialogIfForeground(I)V

    goto :goto_3

    .line 1318
    :sswitch_1c
    const/16 v0, 0x258

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showDialogIfForeground(I)V

    goto :goto_3

    .line 1302
    :sswitch_data_22
    .sparse-switch
        0x190 -> :sswitch_4
        0x191 -> :sswitch_a
        0x192 -> :sswitch_10
        0x258 -> :sswitch_1c
        0x2bc -> :sswitch_16
    .end sparse-switch
.end method

.method private simulatePreferenceClick(Landroid/preference/Preference;)V
    .registers 9
    .parameter "preference"

    .prologue
    .line 1620
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 1621
    .local v6, adapter:Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    .local v3, idx:I
    :goto_9
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_25

    .line 1622
    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_26

    .line 1623
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1628
    :cond_25
    return-void

    .line 1621
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_9
.end method

.method private switchToPreviousVoicemailProvider()V
    .registers 15

    .prologue
    const/4 v12, 0x0

    .line 532
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    if-eqz v0, :cond_8a

    .line 533
    iget-boolean v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMChangeCompletedSuccesfully:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mFwdChangesRequireRollback:Z

    if-eqz v0, :cond_87

    .line 535
    :cond_d
    const/16 v0, 0x25b

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showDialogIfForeground(I)V

    .line 536
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;

    move-result-object v9

    .line 538
    .local v9, prevSettings:Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;
    iget-boolean v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMChangeCompletedSuccesfully:Z

    if-eqz v0, :cond_39

    .line 539
    iget-object v0, v9, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewVMNumber:Ljava/lang/String;

    .line 541
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 546
    :cond_39
    iget-boolean v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mFwdChangesRequireRollback:Z

    if-eqz v0, :cond_8a

    .line 548
    iget-object v8, v9, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 550
    .local v8, prevFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz v8, :cond_8a

    .line 551
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 553
    .local v11, results:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->resetForwardingChangeState()V

    .line 554
    const/4 v7, 0x0

    .local v7, i:I
    :goto_47
    array-length v0, v8

    if-ge v7, v0, :cond_8a

    .line 555
    aget-object v6, v8, v7

    .line 559
    .local v6, fi:Lcom/android/internal/telephony/CallForwardInfo;
    iget v0, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/AsyncResult;

    .line 560
    .local v10, result:Landroid/os/AsyncResult;
    if-eqz v10, :cond_82

    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_82

    .line 561
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    iget v1, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 562
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, v6, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_85

    const/4 v1, 0x3

    :goto_71
    iget v2, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v6, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v13, 0x1f5

    invoke-virtual {v5, v13, v7, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 554
    :cond_82
    add-int/lit8 v7, v7, 0x1

    goto :goto_47

    :cond_85
    move v1, v12

    .line 562
    goto :goto_71

    .line 577
    .end local v6           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v7           #i:I
    .end local v8           #prevFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v9           #prevSettings:Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;
    .end local v10           #result:Landroid/os/AsyncResult;
    .end local v11           #results:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_87
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->onRevertDone()V

    .line 580
    :cond_8a
    return-void
.end method

.method private updateVMPreferenceWidgets(Ljava/lang/String;)V
    .registers 11
    .parameter "currentProviderSetting"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1499
    move-object v0, p1

    .line 1500
    .local v0, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;

    .line 1506
    .local v1, provider:Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;
    if-nez v1, :cond_2c

    .line 1507
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const v4, 0x7f0c00ad

    invoke-virtual {p0, v4}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1508
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1509
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1510
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 1519
    :goto_2b
    return-void

    .line 1512
    :cond_2c
    iget-object v2, v1, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;->name:Ljava/lang/String;

    .line 1513
    .local v2, providerName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1514
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c0229

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1516
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1517
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    iget-object v4, v1, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    goto :goto_2b
.end method

.method private updateVoiceNumberField()V
    .registers 4

    .prologue
    .line 1156
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-nez v1, :cond_5

    .line 1168
    :goto_4
    return-void

    .line 1160
    :cond_5
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1161
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mOldVmNumber:Ljava/lang/String;

    if-nez v1, :cond_15

    .line 1162
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1164
    :cond_15
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 1165
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2c

    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1167
    .local v0, summary:Ljava/lang/String;
    :goto_26
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1165
    .end local v0           #summary:Ljava/lang/String;
    :cond_2c
    const v1, 0x7f0c0227

    invoke-virtual {p0, v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_26
.end method


# virtual methods
.method handleForwardingSettingsReadResult(Landroid/os/AsyncResult;I)V
    .registers 13
    .parameter "ar"
    .parameter "idx"

    .prologue
    const/16 v6, 0x25a

    const/4 v9, 0x0

    .line 796
    const/4 v2, 0x0

    .line 797
    .local v2, error:Ljava/lang/Throwable;
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_a

    .line 800
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 802
    :cond_a
    iget-object v5, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_14

    .line 805
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v2           #error:Ljava/lang/Throwable;
    check-cast v2, Ljava/lang/Throwable;

    .line 809
    .restart local v2       #error:Ljava/lang/Throwable;
    :cond_14
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    if-nez v5, :cond_19

    .line 872
    :cond_18
    :goto_18
    return-void

    .line 815
    :cond_19
    if-eqz v2, :cond_27

    .line 817
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 818
    invoke-direct {p0, v6}, Lcom/android/phone/MSimCallFeaturesSubSetting;->dismissDialogSafely(I)V

    .line 819
    const/16 v5, 0x192

    invoke-direct {p0, v5}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showVMDialog(I)V

    goto :goto_18

    .line 824
    :cond_27
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v0, v5

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 825
    .local v0, cfInfoArray:[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v3, 0x0

    .line 826
    .local v3, fi:Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_30
    array-length v5, v0

    if-ge v4, v5, :cond_3d

    .line 827
    aget-object v5, v0, v4

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_7e

    .line 828
    aget-object v3, v0, v4

    .line 832
    :cond_3d
    if-nez v3, :cond_81

    .line 837
    new-instance v3, Lcom/android/internal/telephony/CallForwardInfo;

    .end local v3           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    invoke-direct {v3}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 838
    .restart local v3       #fi:Lcom/android/internal/telephony/CallForwardInfo;
    iput v9, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 839
    sget-object v5, Lcom/android/phone/MSimCallFeaturesSubSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v5, v5, p2

    iput v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 840
    const/4 v5, 0x1

    iput v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 849
    :cond_4f
    :goto_4f
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aput-object v3, v5, p2

    .line 852
    const/4 v1, 0x1

    .line 853
    .local v1, done:Z
    const/4 v4, 0x0

    :goto_55
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v5, v5

    if-ge v4, v5, :cond_61

    .line 854
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v5, v5, v4

    if-nez v5, :cond_90

    .line 855
    const/4 v1, 0x0

    .line 859
    :cond_61
    if-eqz v1, :cond_18

    .line 861
    invoke-direct {p0, v6}, Lcom/android/phone/MSimCallFeaturesSubSetting;->dismissDialogSafely(I)V

    .line 862
    iget-boolean v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mReadingSettingsForDefaultProvider:Z

    if-eqz v5, :cond_7a

    .line 863
    const-string v5, ""

    new-instance v6, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;

    iget-object v7, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mOldVmNumber:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v6, p0, v7, v8}, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/MSimCallFeaturesSubSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v5, v6}, Lcom/android/phone/MSimCallFeaturesSubSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;)V

    .line 866
    iput-boolean v9, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mReadingSettingsForDefaultProvider:Z

    .line 868
    :cond_7a
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_18

    .line 826
    .end local v1           #done:Z
    :cond_7e
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 843
    :cond_81
    iget-object v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    if-eqz v5, :cond_8d

    iget-object v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4f

    .line 844
    :cond_8d
    iput v9, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    goto :goto_4f

    .line 853
    .restart local v1       #done:Z
    :cond_90
    add-int/lit8 v4, v4, 0x1

    goto :goto_55
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 19
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 599
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_7b

    .line 600
    const/4 v8, 0x0

    .line 604
    .local v8, failure:Z
    iget-boolean v12, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProviderSettingsForced:Z

    .line 605
    .local v12, isVMProviderSettingsForced:Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProviderSettingsForced:Z

    .line 607
    const/4 v14, 0x0

    .line 608
    .local v14, vmNum:Ljava/lang/String;
    const/4 v1, -0x1

    move/from16 v0, p2

    if-eq v0, v1, :cond_1a

    .line 610
    const/4 v8, 0x1

    .line 638
    :cond_12
    :goto_12
    if-eqz v8, :cond_5a

    .line 640
    if-eqz v12, :cond_19

    .line 641
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->switchToPreviousVoicemailProvider()V

    .line 680
    .end local v8           #failure:Z
    .end local v12           #isVMProviderSettingsForced:Z
    .end local v14           #vmNum:Ljava/lang/String;
    :cond_19
    :goto_19
    return-void

    .line 612
    .restart local v8       #failure:Z
    .restart local v12       #isVMProviderSettingsForced:Z
    .restart local v14       #vmNum:Ljava/lang/String;
    :cond_1a
    if-nez p3, :cond_1e

    .line 614
    const/4 v8, 0x1

    goto :goto_12

    .line 616
    :cond_1e
    const-string v1, "com.android.phone.Signout"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 618
    if-eqz v12, :cond_2f

    .line 620
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_19

    .line 622
    :cond_2f
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v13

    .line 624
    .local v13, victim:Ljava/lang/String;
    new-instance v11, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 625
    .local v11, i:Landroid/content/Intent;
    const-string v1, "com.android.phone.ProviderToIgnore"

    invoke-virtual {v11, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 626
    const/high16 v1, 0x400

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 627
    invoke-virtual {p0, v11}, Lcom/android/phone/MSimCallFeaturesSubSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_19

    .line 631
    .end local v11           #i:Landroid/content/Intent;
    .end local v13           #victim:Ljava/lang/String;
    :cond_48
    const-string v1, "com.android.phone.VoicemailNumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 632
    if-eqz v14, :cond_58

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_12

    .line 634
    :cond_58
    const/4 v8, 0x1

    goto :goto_12

    .line 647
    :cond_5a
    iput-boolean v12, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 648
    const-string v1, "com.android.phone.ForwardingNumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 652
    .local v9, fwdNum:Ljava/lang/String;
    const-string v1, "com.android.phone.ForwardingNumberTime"

    const/16 v2, 0x14

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 656
    .local v10, fwdNumTime:I
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;

    invoke-direct {v2, p0, v14, v9, v10}, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/MSimCallFeaturesSubSetting;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v1, v2}, Lcom/android/phone/MSimCallFeaturesSubSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;)V

    goto :goto_19

    .line 661
    .end local v8           #failure:Z
    .end local v9           #fwdNum:Ljava/lang/String;
    .end local v10           #fwdNumTime:I
    .end local v12           #isVMProviderSettingsForced:Z
    .end local v14           #vmNum:Ljava/lang/String;
    :cond_7b
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_19

    .line 666
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/phone/MSimCallFeaturesSubSetting;->NUM_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 668
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_19

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 673
    packed-switch p1, :pswitch_data_aa

    goto/16 :goto_19

    .line 675
    :pswitch_9e
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 673
    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_9e
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/16 v1, 0x1f6

    .line 1266
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1267
    packed-switch p2, :pswitch_data_30

    .line 1295
    :cond_8
    :goto_8
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1296
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->finish()V

    .line 1298
    :cond_1b
    :goto_1b
    return-void

    .line 1273
    :pswitch_1c
    iget v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mCurrentDialogId:I

    if-ne v0, v1, :cond_8

    .line 1276
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_8

    .line 1281
    :pswitch_24
    iget v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mCurrentDialogId:I

    if-ne v0, v1, :cond_2c

    .line 1284
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_1b

    .line 1286
    :cond_2c
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->finish()V

    goto :goto_1b

    .line 1267
    :pswitch_data_30
    .packed-switch -0x3
        :pswitch_8
        :pswitch_1c
        :pswitch_24
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "icicle"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1332
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1335
    const v5, 0x7f050015

    invoke-virtual {p0, v5}, Lcom/android/phone/MSimCallFeaturesSubSetting;->addPreferencesFromResource(I)V

    .line 1338
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "subscription"

    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscription:I

    .line 1340
    const-string v5, "button_fdn_key"

    invoke-virtual {p0, v5}, Lcom/android/phone/MSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscriptionPrefFDN:Landroid/preference/PreferenceScreen;

    .line 1341
    const-string v5, "button_gsm_more_expand_key"

    invoke-virtual {p0, v5}, Lcom/android/phone/MSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscriptionPrefGSM:Landroid/preference/PreferenceScreen;

    .line 1342
    const-string v5, "button_cdma_more_expand_key"

    invoke-virtual {p0, v5}, Lcom/android/phone/MSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscriptionPrefCDMA:Landroid/preference/PreferenceScreen;

    .line 1343
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscriptionPrefFDN:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "subscription"

    iget v7, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscription:I

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1344
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscriptionPrefGSM:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "subscription"

    iget v7, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscription:I

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1345
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscriptionPrefCDMA:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "subscription"

    iget v7, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscription:I

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1347
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "settings onCreate subscription ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscription:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 1348
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget v6, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscription:I

    invoke-virtual {v5, v6}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1350
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mAudioManager:Landroid/media/AudioManager;

    .line 1353
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 1354
    .local v4, prefSet:Landroid/preference/PreferenceScreen;
    const-string v5, "button_voicemail_key"

    invoke-virtual {p0, v5}, Lcom/android/phone/MSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    .line 1355
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v5, :cond_ae

    .line 1356
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v5, p0, v8, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 1357
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v5, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 1358
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const v6, 0x7f0c019a

    invoke-virtual {v5, v6}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 1361
    :cond_ae
    const-string v5, "button_voicemail_provider_key"

    invoke-virtual {p0, v5}, Lcom/android/phone/MSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    .line 1362
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-eqz v5, :cond_ce

    .line 1363
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1364
    const-string v5, "button_voicemail_setting_key"

    invoke-virtual {p0, v5}, Lcom/android/phone/MSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    .line 1366
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->initVoiceMailProviders()V

    .line 1369
    :cond_ce
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_118

    .line 1370
    const-string v5, "button_cdma_more_expand_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 1371
    .local v2, options:Landroid/preference/Preference;
    if-eqz v2, :cond_e6

    .line 1372
    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1373
    :cond_e6
    const-string v5, "button_gsm_more_expand_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 1374
    if-eqz v2, :cond_f1

    .line 1375
    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1377
    :cond_f1
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 1378
    .local v3, phoneType:I
    const/4 v5, 0x2

    if-ne v3, v5, :cond_15d

    .line 1379
    const-string v5, "button_fdn_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 1380
    .local v1, fdnButton:Landroid/preference/Preference;
    if-eqz v1, :cond_105

    .line 1381
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1382
    :cond_105
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_118

    .line 1383
    const v5, 0x7f050004

    invoke-virtual {p0, v5}, Lcom/android/phone/MSimCallFeaturesSubSetting;->addPreferencesFromResource(I)V

    .line 1393
    .end local v1           #fdnButton:Landroid/preference/Preference;
    .end local v2           #options:Landroid/preference/Preference;
    .end local v3           #phoneType:I
    :cond_118
    :goto_118
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.GET_CONTENT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mContactListIntent:Landroid/content/Intent;

    .line 1394
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mContactListIntent:Landroid/content/Intent;

    const-string v6, "vnd.android.cursor.item/phone"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1401
    if-nez p1, :cond_14b

    .line 1402
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14b

    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-eqz v5, :cond_14b

    .line 1404
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-le v5, v8, :cond_17f

    .line 1405
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-direct {p0, v5}, Lcom/android/phone/MSimCallFeaturesSubSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    .line 1412
    :cond_14b
    :goto_14b
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->updateVoiceNumberField()V

    .line 1413
    iput-boolean v9, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProviderSettingsForced:Z

    .line 1414
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->createSipCallSettings()V

    .line 1416
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1417
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_15c

    .line 1419
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1421
    :cond_15c
    return-void

    .line 1385
    .end local v0           #actionBar:Landroid/app/ActionBar;
    .restart local v2       #options:Landroid/preference/Preference;
    .restart local v3       #phoneType:I
    :cond_15d
    if-ne v3, v8, :cond_166

    .line 1386
    const v5, 0x7f05000f

    invoke-virtual {p0, v5}, Lcom/android/phone/MSimCallFeaturesSubSetting;->addPreferencesFromResource(I)V

    goto :goto_118

    .line 1388
    :cond_166
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected phone type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1407
    .end local v2           #options:Landroid/preference/Preference;
    .end local v3           #phoneType:I
    :cond_17f
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const-string v6, ""

    invoke-virtual {p0, v5, v6}, Lcom/android/phone/MSimCallFeaturesSubSetting;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1408
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_14b
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 12
    .parameter "id"

    .prologue
    const/16 v9, 0x25b

    const/16 v8, 0x259

    const/4 v7, 0x0

    const v6, 0x7f0c00a3

    .line 1188
    const/16 v5, 0x1f4

    if-eq p1, v5, :cond_1c

    const/16 v5, 0x190

    if-eq p1, v5, :cond_1c

    const/16 v5, 0x1f5

    if-eq p1, v5, :cond_1c

    const/16 v5, 0x1f6

    if-eq p1, v5, :cond_1c

    const/16 v5, 0x258

    if-ne p1, v5, :cond_81

    .line 1192
    :cond_1c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1195
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0c0098

    .line 1196
    .local v4, titleId:I
    sparse-switch p1, :sswitch_data_b8

    .line 1227
    const v3, 0x7f0c009d

    .line 1230
    .local v3, msgId:I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1234
    :goto_2d
    invoke-virtual {p0, v4}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1235
    invoke-virtual {p0, v3}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1236
    .local v2, message:Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1237
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1238
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1241
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 1258
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #message:Ljava/lang/String;
    .end local v3           #msgId:I
    .end local v4           #titleId:I
    :goto_4e
    return-object v1

    .line 1198
    .restart local v0       #b:Landroid/app/AlertDialog$Builder;
    .restart local v4       #titleId:I
    :sswitch_4f
    const v3, 0x7f0c00a8

    .line 1199
    .restart local v3       #msgId:I
    const v4, 0x7f0c006f

    .line 1201
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2d

    .line 1206
    .end local v3           #msgId:I
    :sswitch_59
    const v3, 0x7f0c00ac

    .line 1207
    .restart local v3       #msgId:I
    const v4, 0x7f0c006f

    .line 1209
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2d

    .line 1212
    .end local v3           #msgId:I
    :sswitch_63
    const v3, 0x7f0c00a9

    .line 1214
    .restart local v3       #msgId:I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2d

    .line 1217
    .end local v3           #msgId:I
    :sswitch_6a
    const v3, 0x7f0c00aa

    .line 1219
    .restart local v3       #msgId:I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2d

    .line 1222
    .end local v3           #msgId:I
    :sswitch_71
    const v3, 0x7f0c00ab

    .line 1223
    .restart local v3       #msgId:I
    const v5, 0x7f0c0222

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1224
    const v5, 0x7f0c0223

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2d

    .line 1244
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v3           #msgId:I
    .end local v4           #titleId:I
    :cond_81
    if-eq p1, v8, :cond_89

    const/16 v5, 0x25a

    if-eq p1, v5, :cond_89

    if-ne p1, v9, :cond_b6

    .line 1246
    :cond_89
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1247
    .local v1, dialog:Landroid/app/ProgressDialog;
    const v5, 0x7f0c0097

    invoke-virtual {p0, v5}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1248
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1249
    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1250
    if-ne p1, v8, :cond_ac

    const v5, 0x7f0c009a

    :goto_a4
    invoke-virtual {p0, v5}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_4e

    :cond_ac
    if-ne p1, v9, :cond_b2

    const v5, 0x7f0c009b

    goto :goto_a4

    :cond_b2
    const v5, 0x7f0c0099

    goto :goto_a4

    .line 1258
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :cond_b6
    const/4 v1, 0x0

    goto :goto_4e

    .line 1196
    :sswitch_data_b8
    .sparse-switch
        0x190 -> :sswitch_59
        0x1f4 -> :sswitch_63
        0x1f5 -> :sswitch_6a
        0x1f6 -> :sswitch_71
        0x258 -> :sswitch_4f
    .end sparse-switch
.end method

.method public onDialogClosed(Lcom/android/phone/EditPhoneNumberPreference;I)V
    .registers 5
    .parameter "preference"
    .parameter "buttonClicked"

    .prologue
    .line 478
    const/4 v1, -0x2

    if-ne p2, v1, :cond_4

    .line 488
    :cond_3
    :goto_3
    return-void

    .line 481
    :cond_4
    instance-of v1, p1, Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v1, :cond_3

    .line 482
    move-object v0, p1

    .line 484
    .local v0, epn:Lcom/android/phone/EditPhoneNumberPreference;
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne v0, v1, :cond_3

    .line 485
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->handleVMBtnClickRequest()V

    goto :goto_3
.end method

.method public onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;
    .registers 5
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    .line 496
    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v2, :cond_9

    .line 500
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->updateVoiceNumberField()V

    .line 513
    :cond_8
    :goto_8
    return-object v1

    .line 504
    :cond_9
    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, vmDisplay:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0c0070

    invoke-virtual {p0, v2}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    .line 1731
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 1732
    .local v1, itemId:I
    const v2, 0x102002c

    if-ne v1, v2, :cond_22

    .line 1733
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1734
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.contacts"

    const-string v3, "com.android.contacts.activities.DialtactsActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1735
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1736
    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->startActivity(Landroid/content/Intent;)V

    .line 1737
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->finish()V

    .line 1738
    const/4 v2, 0x1

    .line 1740
    .end local v0           #intent:Landroid/content/Intent;
    :goto_21
    return v2

    :cond_22
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_21
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 396
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 397
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForeground:Z

    .line 398
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 8
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v4, 0x1

    .line 434
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_2e

    .line 435
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    .local v0, currentProviderKey:Ljava/lang/String;
    move-object v1, p2

    .line 436
    check-cast v1, Ljava/lang/String;

    .line 439
    .local v1, newProviderKey:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 471
    .end local v0           #currentProviderKey:Ljava/lang/String;
    .end local v1           #newProviderKey:Ljava/lang/String;
    :cond_14
    :goto_14
    return v4

    .line 443
    .restart local v0       #currentProviderKey:Ljava/lang/String;
    .restart local v1       #newProviderKey:Ljava/lang/String;
    :cond_15
    invoke-direct {p0, v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 445
    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 447
    invoke-direct {p0, v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;

    move-result-object v2

    .line 456
    .local v2, newProviderSettings:Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;
    if-nez v2, :cond_28

    .line 459
    iput-boolean v4, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProviderSettingsForced:Z

    .line 460
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v3}, Lcom/android/phone/MSimCallFeaturesSubSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    goto :goto_14

    .line 464
    :cond_28
    iput-boolean v4, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 465
    invoke-direct {p0, v1, v2}, Lcom/android/phone/MSimCallFeaturesSubSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;)V

    goto :goto_14

    .line 467
    .end local v0           #currentProviderKey:Ljava/lang/String;
    .end local v1           #newProviderKey:Ljava/lang/String;
    .end local v2           #newProviderSettings:Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;
    :cond_2e
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_14

    .line 468
    invoke-direct {p0, p2}, Lcom/android/phone/MSimCallFeaturesSubSetting;->handleSipCallOptionsChange(Ljava/lang/Object;)V

    goto :goto_14
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 415
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p2, v1, :cond_6

    .line 422
    :goto_5
    return v0

    .line 417
    :cond_6
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_19

    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 419
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/MSimCallFeaturesSubSetting;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_5

    .line 422
    :cond_19
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1181
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1182
    iput p1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mCurrentDialogId:I

    .line 1183
    return-void
.end method

.method protected onResume()V
    .registers 7

    .prologue
    .line 1460
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 1461
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForeground:Z

    .line 1463
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->isAirplaneModeOn()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 1464
    const-string v5, "sip_settings_category_key"

    invoke-virtual {p0, v5}, Lcom/android/phone/MSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 1465
    .local v4, sipSettings:Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 1466
    .local v3, screen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 1467
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1b
    if-ge v1, v0, :cond_2a

    .line 1468
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 1469
    .local v2, pref:Landroid/preference/Preference;
    if-eq v2, v4, :cond_27

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1467
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 1474
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #pref:Landroid/preference/Preference;
    .end local v3           #screen:Landroid/preference/PreferenceScreen;
    .end local v4           #sipSettings:Landroid/preference/Preference;
    :cond_2a
    return-void
.end method

.method onRevertDone()V
    .registers 3

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 586
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->updateVoiceNumberField()V

    .line 587
    iget v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMOrFwdSetError:I

    if-eqz v0, :cond_1b

    .line 588
    iget v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMOrFwdSetError:I

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showVMDialog(I)V

    .line 589
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMOrFwdSetError:I

    .line 591
    :cond_1b
    return-void
.end method

.method setVMNumberWithCarrier()V
    .registers 6

    .prologue
    .line 942
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 946
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 520
    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    .line 522
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 528
    :goto_6
    return-void

    .line 527
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_6
.end method
