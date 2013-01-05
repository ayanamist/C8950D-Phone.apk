.class public Lcom/android/phone/MSimSettings;
.super Landroid/preference/PreferenceActivity;
.source "MSimSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final BUTTON_CATEGORY_GENERAL:Ljava/lang/String; = "category_general"

.field private static final BUTTON_CDMA_LTE_DATA_SERVICE_KEY:Ljava/lang/String; = "cdma_lte_data_service_key"

.field private static final BUTTON_DATA_ENABLED_KEY:Ljava/lang/String; = "button_data_enabled_key"

.field private static final BUTTON_DATA_ROAMING_SETTINGS:Ljava/lang/String; = "button_data_roaming_settings"

.field private static final BUTTON_DATA_USAGE_KEY:Ljava/lang/String; = "button_data_usage_key"

.field private static final BUTTON_MANAGE_SUB_KEY:Ljava/lang/String; = "button_settings_manage_sub"

.field private static final BUTTON_NETWORK_ALWAYS_ON_KEY:Ljava/lang/String; = "button_network_always_on_key"

.field private static final BUTTON_PREFER_2G_KEY:Ljava/lang/String; = "button_prefer_2g_key"

.field private static final BUTTON_ROAMING_KEY:Ljava/lang/String; = "button_roaming_key"

.field public static final DATASWICH_ACTION_SETTING_CHANGED:Ljava/lang/String; = "com.android.huawei.DATASERVICE_SETTING_CHANGED"

.field private static final DBG:Z = true

.field private static final DEFAULT_DATA_KEY:Ljava/lang/String; = "default_data_network"

#the value of this static final field might be set in the static constructor
.field private static final IS_MULTI_SIM:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_UMTS_GSM:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "MSimSettings"

.field private static final POWER_SAVING_ON:Ljava/lang/String; = "power_saving_on"

.field private static final isEnablePowerSaving:Z

.field private static mUserToolbox:Z


# instance fields
.field protected final DIALOG_SET_SUBSCRIPTION_IN_PROGRESS:I

.field isChinaTelecom:Z

.field isChinaUnicom:Z

.field private mButtonCategoryGeneral:Landroid/preference/PreferenceCategory;

.field private mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

.field private mButtonDataUsage:Landroid/preference/Preference;

.field private mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

.field private mButtonPreferredNetworkMode:Landroid/preference/Preference;

.field private mCdmaOptions:Lcom/android/phone/MSimCdmaOptions;

.field private mClickOnWhich:Landroid/preference/CheckBoxPreference;

.field private mDataSwitchReceiver:Landroid/content/BroadcastReceiver;

.field private mDataUsageListener:Lcom/android/phone/DataUsageListener;

.field private mGsmUmtsOptions:[Lcom/android/phone/MSimGsmUmtsOptions;

.field private mListPreferredDataNetwork:Landroid/preference/ListPreference;

.field private mLteDataServicePref:Landroid/preference/Preference;

.field private mOkClicked:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 100
    const-string v0, "ro.config.hw_power_saving"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/MSimSettings;->isEnablePowerSaving:Z

    .line 136
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/MSimSettings;->IS_MULTI_SIM:Z

    .line 138
    const-string v0, "ro.config.hw_toolbox"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/MSimSettings;->mUserToolbox:Z

    .line 144
    const-string v0, "ro.config.dsds_mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "umts_gsm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/MSimSettings;->IS_UMTS_GSM:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 104
    const-string v0, "ro.config.hw_opta"

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "92"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    const-string v0, "ro.config.hw_optb"

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "156"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    move v0, v1

    :goto_26
    iput-boolean v0, p0, Lcom/android/phone/MSimSettings;->isChinaTelecom:Z

    .line 107
    const-string v0, "ro.config.hw_opta"

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "17"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const-string v0, "ro.config.hw_optb"

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "156"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    :goto_48
    iput-boolean v1, p0, Lcom/android/phone/MSimSettings;->isChinaUnicom:Z

    .line 141
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/MSimSettings;->DIALOG_SET_SUBSCRIPTION_IN_PROGRESS:I

    .line 148
    new-instance v0, Lcom/android/phone/MSimSettings$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MSimSettings$1;-><init>(Lcom/android/phone/MSimSettings;)V

    iput-object v0, p0, Lcom/android/phone/MSimSettings;->mDataSwitchReceiver:Landroid/content/BroadcastReceiver;

    .line 586
    new-instance v0, Lcom/android/phone/MSimSettings$2;

    invoke-direct {v0, p0}, Lcom/android/phone/MSimSettings$2;-><init>(Lcom/android/phone/MSimSettings;)V

    iput-object v0, p0, Lcom/android/phone/MSimSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    return-void

    :cond_5d
    move v0, v2

    .line 104
    goto :goto_26

    :cond_5f
    move v1, v2

    .line 107
    goto :goto_48
.end method

.method static synthetic access$000(Lcom/android/phone/MSimSettings;)Landroid/preference/CheckBoxPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/phone/MSimSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/MSimSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/phone/MSimSettings;->enableOrDisableNetworkSettings()V

    return-void
.end method

.method private enableOrDisableNetworkSettings()V
    .registers 15

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x7

    const/4 v11, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 600
    invoke-static {}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getSlotIdFromSubId(I)I

    move-result v4

    .line 601
    .local v4, slotId1:I
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v2

    .line 603
    .local v2, simState1:I
    const/4 v0, 0x0

    .line 605
    .local v0, enableCard1:Z
    if-eq v2, v8, :cond_137

    if-eqz v2, :cond_137

    if-eq v2, v11, :cond_137

    if-eq v2, v12, :cond_137

    if-eq v2, v13, :cond_137

    .line 611
    const/4 v0, 0x1

    .line 617
    :goto_22
    const-string v6, "MSimSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "enableOrDisableNetworkSettings SUB1 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , slotId1 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ,simstate1 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-static {}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getSlotIdFromSubId(I)I

    move-result v5

    .line 622
    .local v5, slotId2:I
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v3

    .line 624
    .local v3, simState2:I
    const/4 v1, 0x0

    .line 626
    .local v1, enableCard2:Z
    if-eq v3, v8, :cond_13a

    if-eqz v3, :cond_13a

    if-eq v3, v11, :cond_13a

    if-eq v3, v12, :cond_13a

    if-eq v3, v13, :cond_13a

    .line 632
    const/4 v1, 0x1

    .line 638
    :goto_6a
    const-string v6, "MSimSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "enableOrDisableNetworkSettings SUB2 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , slotId2 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ,simstate2 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v6, p0, Lcom/android/phone/MSimSettings;->mCdmaOptions:Lcom/android/phone/MSimCdmaOptions;

    if-eqz v6, :cond_9f

    .line 643
    iget-object v6, p0, Lcom/android/phone/MSimSettings;->mCdmaOptions:Lcom/android/phone/MSimCdmaOptions;

    invoke-virtual {v6, v0}, Lcom/android/phone/MSimCdmaOptions;->setEnabled(Z)V

    .line 645
    :cond_9f
    iget-object v6, p0, Lcom/android/phone/MSimSettings;->mGsmUmtsOptions:[Lcom/android/phone/MSimGsmUmtsOptions;

    aget-object v6, v6, v7

    if-eqz v6, :cond_ac

    .line 646
    iget-object v6, p0, Lcom/android/phone/MSimSettings;->mGsmUmtsOptions:[Lcom/android/phone/MSimGsmUmtsOptions;

    aget-object v6, v6, v7

    invoke-virtual {v6, v0}, Lcom/android/phone/MSimGsmUmtsOptions;->setEnabled(Z)V

    .line 648
    :cond_ac
    iget-object v6, p0, Lcom/android/phone/MSimSettings;->mGsmUmtsOptions:[Lcom/android/phone/MSimGsmUmtsOptions;

    aget-object v6, v6, v8

    if-eqz v6, :cond_b9

    .line 649
    iget-object v6, p0, Lcom/android/phone/MSimSettings;->mGsmUmtsOptions:[Lcom/android/phone/MSimGsmUmtsOptions;

    aget-object v6, v6, v8

    invoke-virtual {v6, v1}, Lcom/android/phone/MSimGsmUmtsOptions;->setEnabled(Z)V

    .line 651
    :cond_b9
    iget-object v6, p0, Lcom/android/phone/MSimSettings;->mButtonCategoryGeneral:Landroid/preference/PreferenceCategory;

    if-eqz v6, :cond_c7

    .line 652
    iget-object v9, p0, Lcom/android/phone/MSimSettings;->mButtonCategoryGeneral:Landroid/preference/PreferenceCategory;

    if-nez v0, :cond_13d

    if-nez v1, :cond_13d

    move v6, v7

    :goto_c4
    invoke-virtual {v9, v6}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 657
    :cond_c7
    const-string v6, "MSimSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isMultiSimEnabled() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/phone/MSimSettings;->IS_MULTI_SIM:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ,persist.service.gsmdataservice = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "persist.service.gsmdataservice"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ,IS_UMTS_GSM = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/phone/MSimSettings;->IS_UMTS_GSM:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    sget-boolean v6, Lcom/android/phone/MSimSettings;->IS_MULTI_SIM:Z

    if-eqz v6, :cond_129

    sget-boolean v6, Lcom/android/phone/MSimSettings;->IS_UMTS_GSM:Z

    if-nez v6, :cond_129

    const-string v6, "persist.service.gsmdataservice"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "1"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_129

    .line 667
    if-nez v0, :cond_13f

    if-nez v1, :cond_13f

    .line 669
    iget-object v6, p0, Lcom/android/phone/MSimSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_120

    .line 670
    iget-object v6, p0, Lcom/android/phone/MSimSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 672
    :cond_120
    iget-object v6, p0, Lcom/android/phone/MSimSettings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_129

    .line 673
    iget-object v6, p0, Lcom/android/phone/MSimSettings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 686
    :cond_129
    :goto_129
    iget-object v6, p0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    if-eqz v6, :cond_136

    .line 687
    if-eqz v1, :cond_152

    if-eqz v0, :cond_152

    .line 688
    iget-object v6, p0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 705
    :cond_136
    :goto_136
    return-void

    .line 613
    .end local v1           #enableCard2:Z
    .end local v3           #simState2:I
    .end local v5           #slotId2:I
    :cond_137
    const/4 v0, 0x0

    goto/16 :goto_22

    .line 634
    .restart local v1       #enableCard2:Z
    .restart local v3       #simState2:I
    .restart local v5       #slotId2:I
    :cond_13a
    const/4 v1, 0x0

    goto/16 :goto_6a

    :cond_13d
    move v6, v8

    .line 652
    goto :goto_c4

    .line 676
    :cond_13f
    iget-object v6, p0, Lcom/android/phone/MSimSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_148

    .line 677
    iget-object v6, p0, Lcom/android/phone/MSimSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 679
    :cond_148
    iget-object v6, p0, Lcom/android/phone/MSimSettings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_129

    .line 680
    iget-object v6, p0, Lcom/android/phone/MSimSettings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_129

    .line 690
    :cond_152
    iget-object v6, p0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 693
    if-eqz v1, :cond_15b

    if-eqz v0, :cond_15f

    :cond_15b
    if-nez v1, :cond_136

    if-eqz v0, :cond_136

    .line 695
    :cond_15f
    iget-object v6, p0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    invoke-static {}, Lcom/android/internal/telephony/MSimPhoneFactory;->getDataSubscription()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 697
    iget-object v6, p0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_136
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 549
    const-string v0, "MSimSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 176
    iget-object v0, p0, Lcom/android/phone/MSimSettings;->mClickOnWhich:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/MSimSettings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    if-ne v0, v1, :cond_1f

    sget-boolean v0, Lcom/android/phone/MSimSettings;->isEnablePowerSaving:Z

    if-eqz v0, :cond_1f

    .line 177
    const/4 v0, -0x1

    if-ne p2, v0, :cond_20

    .line 178
    iget-object v0, p0, Lcom/android/phone/MSimSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_saving_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Systemex;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 180
    iput-boolean v2, p0, Lcom/android/phone/MSimSettings;->mOkClicked:Z

    .line 187
    :cond_1f
    :goto_1f
    return-void

    .line 183
    :cond_20
    iget-object v0, p0, Lcom/android/phone/MSimSettings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1f
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 20
    .parameter "icicle"

    .prologue
    .line 314
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 316
    const-string v15, "onCreate"

    invoke-static {v15}, Lcom/android/phone/MSimSettings;->log(Ljava/lang/String;)V

    .line 318
    const v15, 0x7f05001b

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/phone/MSimSettings;->addPreferencesFromResource(I)V

    .line 321
    invoke-static {}, Lcom/android/phone/MSimPhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/phone/PhoneApp;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/MSimSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MSimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    .line 327
    .local v13, prefSet:Landroid/preference/PreferenceScreen;
    const-string v15, "button_data_enabled_key"

    invoke-virtual {v13, v15}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/MSimSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    .line 329
    const-string v15, "default_data_network"

    invoke-virtual {v13, v15}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    sget-boolean v15, Lcom/android/phone/MSimSettings;->IS_UMTS_GSM:Z

    if-eqz v15, :cond_11e

    const v15, 0x7f06002b

    :goto_45
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    sget-boolean v15, Lcom/android/phone/MSimSettings;->IS_UMTS_GSM:Z

    if-eqz v15, :cond_123

    const v15, 0x7f06002c

    :goto_57
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 336
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    invoke-static {}, Lcom/android/internal/telephony/MSimPhoneFactory;->getDataSubscription()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 339
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 345
    const-string v15, "cdma_lte_data_service_key"

    invoke-virtual {v13, v15}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/MSimSettings;->mLteDataServicePref:Landroid/preference/Preference;

    .line 346
    const-string v15, "button_data_usage_key"

    invoke-virtual {v13, v15}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/MSimSettings;->mButtonDataUsage:Landroid/preference/Preference;

    .line 348
    const-string v15, "button_network_always_on_key"

    invoke-virtual {v13, v15}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/MSimSettings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    .line 349
    const-string v15, "category_general"

    invoke-virtual {v13, v15}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/MSimSettings;->mButtonCategoryGeneral:Landroid/preference/PreferenceCategory;

    .line 355
    sget-boolean v15, Lcom/android/phone/MSimSettings;->isEnablePowerSaving:Z

    if-nez v15, :cond_b8

    .line 356
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/MSimSettings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v13, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 360
    :cond_b8
    const-string v15, "category_general"

    invoke-virtual {v13, v15}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    .line 362
    .local v9, mSimcategory:Landroid/preference/PreferenceCategory;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v9, v15}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 368
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/MSimSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_128

    const/4 v5, 0x1

    .line 371
    .local v5, isLteOnCdma:Z
    :goto_d6
    const/4 v15, 0x2

    new-array v15, v15, [Lcom/android/phone/MSimGsmUmtsOptions;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/MSimSettings;->mGsmUmtsOptions:[Lcom/android/phone/MSimGsmUmtsOptions;

    .line 374
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v15

    if-eqz v15, :cond_171

    .line 377
    const/4 v7, 0x0

    .local v7, lSubscription:I
    :goto_e8
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v15

    if-ge v7, v15, :cond_19a

    .line 379
    invoke-static {}, Lcom/android/phone/MSimPhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v15

    invoke-virtual {v15, v7}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    .line 381
    .local v6, lPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v12

    .line 383
    .local v12, phoneType:I
    invoke-static {}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDualCardMode()I

    move-result v2

    .line 384
    .local v2, CTNationRoaming:I
    const/4 v15, 0x1

    if-ne v7, v15, :cond_10d

    const/4 v15, 0x1

    if-ne v2, v15, :cond_10d

    .line 385
    const/4 v12, 0x1

    .line 388
    :cond_10d
    const/4 v15, 0x2

    if-ne v12, v15, :cond_12a

    .line 390
    new-instance v15, Lcom/android/phone/MSimCdmaOptions;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v13, v6}, Lcom/android/phone/MSimCdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/MSimSettings;->mCdmaOptions:Lcom/android/phone/MSimCdmaOptions;

    .line 378
    :cond_11b
    :goto_11b
    add-int/lit8 v7, v7, 0x1

    goto :goto_e8

    .line 331
    .end local v2           #CTNationRoaming:I
    .end local v5           #isLteOnCdma:Z
    .end local v6           #lPhone:Lcom/android/internal/telephony/Phone;
    .end local v7           #lSubscription:I
    .end local v9           #mSimcategory:Landroid/preference/PreferenceCategory;
    .end local v12           #phoneType:I
    :cond_11e
    const v15, 0x7f060027

    goto/16 :goto_45

    .line 333
    :cond_123
    const v15, 0x7f060028

    goto/16 :goto_57

    .line 368
    .restart local v9       #mSimcategory:Landroid/preference/PreferenceCategory;
    :cond_128
    const/4 v5, 0x0

    goto :goto_d6

    .line 392
    .restart local v2       #CTNationRoaming:I
    .restart local v5       #isLteOnCdma:Z
    .restart local v6       #lPhone:Lcom/android/internal/telephony/Phone;
    .restart local v7       #lSubscription:I
    .restart local v12       #phoneType:I
    :cond_12a
    const/4 v15, 0x1

    if-ne v12, v15, :cond_156

    .line 394
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/MSimSettings;->mGsmUmtsOptions:[Lcom/android/phone/MSimGsmUmtsOptions;

    new-instance v16, Lcom/android/phone/MSimGsmUmtsOptions;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13, v7}, Lcom/android/phone/MSimGsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;I)V

    aput-object v16, v15, v7

    .line 398
    const-string v15, "button_prefer_2g_key"

    invoke-virtual {v13, v15}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    .line 402
    .local v8, lUseOnly2GNetworksPreference:Landroid/preference/CheckBoxPreference;
    if-eqz v7, :cond_150

    const-string v15, "ro.config.remove_useonly2G"

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_11b

    :cond_150
    if-eqz v8, :cond_11b

    .line 407
    invoke-virtual {v13, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_11b

    .line 410
    .end local v8           #lUseOnly2GNetworksPreference:Landroid/preference/CheckBoxPreference;
    :cond_156
    new-instance v15, Ljava/lang/IllegalStateException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unexpected phone type: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 415
    .end local v2           #CTNationRoaming:I
    .end local v6           #lPhone:Lcom/android/internal/telephony/Phone;
    .end local v7           #lSubscription:I
    .end local v12           #phoneType:I
    :cond_171
    if-nez v5, :cond_17a

    .line 416
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/MSimSettings;->mButtonPreferredNetworkMode:Landroid/preference/Preference;

    invoke-virtual {v13, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 419
    :cond_17a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/MSimSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v12

    .line 421
    .restart local v12       #phoneType:I
    const/4 v15, 0x2

    if-ne v12, v15, :cond_1f5

    .line 423
    new-instance v15, Lcom/android/phone/MSimCdmaOptions;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MSimSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v13, v1}, Lcom/android/phone/MSimCdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/MSimSettings;->mCdmaOptions:Lcom/android/phone/MSimCdmaOptions;

    .line 426
    if-eqz v5, :cond_19a

    .line 448
    .end local v12           #phoneType:I
    :cond_19a
    :goto_19a
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/MSimSettings;->enableOrDisableNetworkSettings()V

    .line 450
    const-string v15, "button_settings_manage_sub"

    invoke-virtual {v13, v15}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    .line 451
    .local v10, manageSub:Landroid/preference/PreferenceScreen;
    if-eqz v10, :cond_1bd

    .line 452
    invoke-virtual {v10}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 453
    .local v3, intent:Landroid/content/Intent;
    const-string v15, "PACKAGE"

    const-string v16, "com.android.phone"

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    const-string v15, "TARGET_CLASS"

    const-string v16, "com.android.phone.MSimNetworkSettings"

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    .end local v3           #intent:Landroid/content/Intent;
    :cond_1bd
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MSimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "setup_prepaid_data_service_url"

    invoke-static/range {v15 .. v16}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    .line 460
    .local v11, missingDataServiceUrl:Z
    if-eqz v5, :cond_1cf

    if-eqz v11, :cond_225

    .line 468
    :cond_1cf
    :goto_1cf
    const-string v15, "throttle"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/phone/MSimSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/ThrottleManager;

    .line 480
    .local v14, tm:Landroid/net/ThrottleManager;
    sget-boolean v15, Lcom/android/phone/MSimSettings;->IS_MULTI_SIM:Z

    if-eqz v15, :cond_1f4

    sget-boolean v15, Lcom/android/phone/MSimSettings;->mUserToolbox:Z

    if-eqz v15, :cond_1f4

    .line 481
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 482
    .local v4, intentFilter:Landroid/content/IntentFilter;
    const-string v15, "com.android.huawei.DATASERVICE_SETTING_CHANGED"

    invoke-virtual {v4, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 483
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/MSimSettings;->mDataSwitchReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v4}, Lcom/android/phone/MSimSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 486
    .end local v4           #intentFilter:Landroid/content/IntentFilter;
    :cond_1f4
    return-void

    .line 438
    .end local v10           #manageSub:Landroid/preference/PreferenceScreen;
    .end local v11           #missingDataServiceUrl:Z
    .end local v14           #tm:Landroid/net/ThrottleManager;
    .restart local v12       #phoneType:I
    :cond_1f5
    const/4 v15, 0x1

    if-ne v12, v15, :cond_20a

    .line 440
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/MSimSettings;->mGsmUmtsOptions:[Lcom/android/phone/MSimGsmUmtsOptions;

    const/16 v16, 0x1

    new-instance v17, Lcom/android/phone/MSimGsmUmtsOptions;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/android/phone/MSimGsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    aput-object v17, v15, v16

    goto :goto_19a

    .line 443
    :cond_20a
    new-instance v15, Ljava/lang/IllegalStateException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unexpected phone type: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 465
    .end local v12           #phoneType:I
    .restart local v10       #manageSub:Landroid/preference/PreferenceScreen;
    .restart local v11       #missingDataServiceUrl:Z
    :cond_225
    const-string v15, "MSimSettings"

    const-string v16, "keep ltePref"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1cf
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 299
    const/16 v1, 0x64

    if-ne p1, v1, :cond_20

    .line 300
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 302
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/phone/MSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 303
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 304
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 308
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :goto_1f
    return-object v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 530
    sget-boolean v0, Lcom/android/phone/MSimSettings;->IS_MULTI_SIM:Z

    if-eqz v0, :cond_d

    sget-boolean v0, Lcom/android/phone/MSimSettings;->mUserToolbox:Z

    if-eqz v0, :cond_d

    .line 531
    iget-object v0, p0, Lcom/android/phone/MSimSettings;->mDataSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 534
    :cond_d
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 535
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/android/phone/MSimSettings;->mOkClicked:Z

    if-nez v0, :cond_10

    .line 198
    iget-object v0, p0, Lcom/android/phone/MSimSettings;->mClickOnWhich:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/MSimSettings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    if-ne v0, v1, :cond_10

    .line 199
    iget-object v0, p0, Lcom/android/phone/MSimSettings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 203
    :cond_10
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 539
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 544
    iget-object v0, p0, Lcom/android/phone/MSimSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 546
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 8
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 556
    const-string v3, "MSimSettings"

    const-string v4, "Msimsettings onPreferenceChange"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v3, p0, Lcom/android/phone/MSimSettings;->mCdmaOptions:Lcom/android/phone/MSimCdmaOptions;

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/android/phone/MSimSettings;->mCdmaOptions:Lcom/android/phone/MSimCdmaOptions;

    invoke-virtual {v3, p1, p2}, Lcom/android/phone/MSimCdmaOptions;->preferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v3

    if-ne v1, v3, :cond_16

    .line 583
    :cond_15
    :goto_15
    return v1

    .line 564
    :cond_16
    iget-object v3, p0, Lcom/android/phone/MSimSettings;->mGsmUmtsOptions:[Lcom/android/phone/MSimGsmUmtsOptions;

    aget-object v3, v3, v2

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/android/phone/MSimSettings;->mGsmUmtsOptions:[Lcom/android/phone/MSimGsmUmtsOptions;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2}, Lcom/android/phone/MSimGsmUmtsOptions;->preferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v3

    if-eq v1, v3, :cond_15

    .line 568
    :cond_26
    iget-object v3, p0, Lcom/android/phone/MSimSettings;->mGsmUmtsOptions:[Lcom/android/phone/MSimGsmUmtsOptions;

    aget-object v3, v3, v1

    if-eqz v3, :cond_36

    iget-object v3, p0, Lcom/android/phone/MSimSettings;->mGsmUmtsOptions:[Lcom/android/phone/MSimGsmUmtsOptions;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1, p2}, Lcom/android/phone/MSimGsmUmtsOptions;->preferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v3

    if-eq v1, v3, :cond_15

    .line 572
    :cond_36
    iget-object v3, p0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_5e

    .line 573
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 575
    .local v0, option:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/MSimPhoneFactory;->setDataSubscription(I)V

    .line 577
    iget-object v2, p0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 579
    iget-object v2, p0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_15

    .end local v0           #option:Ljava/lang/String;
    :cond_5e
    move v1, v2

    .line 583
    goto :goto_15
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 13
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 234
    iget-object v8, p0, Lcom/android/phone/MSimSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v8, :cond_1d

    .line 235
    const-string v7, "onPreferenceTreeClick: preference == mButtonDataEnabled."

    invoke-static {v7}, Lcom/android/phone/MSimSettings;->log(Ljava/lang/String;)V

    .line 236
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/android/phone/MSimSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 239
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v7, p0, Lcom/android/phone/MSimSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 292
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :cond_1c
    :goto_1c
    return v6

    .line 241
    :cond_1d
    iget-object v8, p0, Lcom/android/phone/MSimSettings;->mLteDataServicePref:Landroid/preference/Preference;

    if-ne p2, v8, :cond_6c

    .line 242
    invoke-virtual {p0}, Lcom/android/phone/MSimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "setup_prepaid_data_service_url"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, tmpl:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_64

    .line 245
    const-string v8, "phone"

    invoke-virtual {p0, v8}, Lcom/android/phone/MSimSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 247
    .local v3, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, imsi:Ljava/lang/String;
    if-nez v1, :cond_41

    .line 249
    const-string v1, ""

    .line 251
    :cond_41
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_57

    const/4 v5, 0x0

    .line 253
    .local v5, url:Ljava/lang/String;
    :goto_48
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 254
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/phone/MSimSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1c

    .line 251
    .end local v2           #intent:Landroid/content/Intent;
    .end local v5           #url:Ljava/lang/String;
    :cond_57
    new-array v8, v6, [Ljava/lang/CharSequence;

    aput-object v1, v8, v7

    invoke-static {v4, v8}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_48

    .line 256
    .end local v1           #imsi:Ljava/lang/String;
    .end local v3           #tm:Landroid/telephony/TelephonyManager;
    :cond_64
    const-string v7, "MSimSettings"

    const-string v8, "Missing SETUP_PREPAID_DATA_SERVICE_URL"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 261
    .end local v4           #tmpl:Ljava/lang/String;
    :cond_6c
    iget-object v8, p0, Lcom/android/phone/MSimSettings;->mListPreferredDataNetwork:Landroid/preference/ListPreference;

    if-eq p2, v8, :cond_1c

    .line 263
    iget-object v8, p0, Lcom/android/phone/MSimSettings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    if-ne p2, v8, :cond_cb

    .line 264
    iget-object v8, p0, Lcom/android/phone/MSimSettings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/phone/MSimSettings;->mClickOnWhich:Landroid/preference/CheckBoxPreference;

    .line 265
    iget-object v8, p0, Lcom/android/phone/MSimSettings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_90

    .line 266
    iget-object v8, p0, Lcom/android/phone/MSimSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "power_saving_on"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Systemex;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1c

    .line 270
    :cond_90
    iput-boolean v7, p0, Lcom/android/phone/MSimSettings;->mOkClicked:Z

    .line 271
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/MSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c02f4

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1040014

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1080027

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1040013

    invoke-virtual {v7, v8, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1040009

    invoke-virtual {v7, v8, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_1c

    :cond_cb
    move v6, v7

    .line 292
    goto/16 :goto_1c
.end method

.method protected onResume()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 490
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 494
    invoke-virtual {p0}, Lcom/android/phone/MSimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 496
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/phone/MSimSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 499
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v2, p0, Lcom/android/phone/MSimSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 507
    sget-boolean v2, Lcom/android/phone/MSimSettings;->isEnablePowerSaving:Z

    if-eqz v2, :cond_38

    .line 508
    iget-object v2, p0, Lcom/android/phone/MSimSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_saving_on"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_45

    .line 510
    iget-object v2, p0, Lcom/android/phone/MSimSettings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 516
    :cond_38
    :goto_38
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 517
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/phone/MSimSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/phone/MSimSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 519
    return-void

    .line 512
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_45
    iget-object v2, p0, Lcom/android/phone/MSimSettings;->mButtonNetworkAlwaysOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_38
.end method
