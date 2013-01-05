.class public Lcom/android/phone/MSimCdmaOptions;
.super Ljava/lang/Object;
.source "MSimCdmaOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode;
    }
.end annotation


# static fields
.field private static final BUTTON_APN_EXPAND_KEY:Ljava/lang/String; = "cdma_button_apn_key"

.field private static final BUTTON_CDMA_ACTIVATE_DEVICE_KEY:Ljava/lang/String; = "cdma_activate_device_key"

.field private static final BUTTON_CDMA_SUBSCRIPTION_KEY:Ljava/lang/String; = "cdma_subscription_key"

.field private static final BUTTON_CDMA_SYSTEM_SELECT_KEY:Ljava/lang/String; = "cdma_system_select_key"

.field private static final CATEGORY_CDMA_NETWORK:Ljava/lang/String; = "category_cdma_network"

.field private static final DBG:Z = true

.field public static final DUALMODE_CARD1_DEACTIVATINGCDMA_ACTIVATEGSM:I = 0x2

.field public static final DUALMODE_CARD2_DEACTIVATINGGSM:I = 0x0

.field public static final DUALMODE_CARD2_DEACTIVATINGGSMSUCCESS:I = 0x1

.field public static final DUALMODE_INIT_STAGE:I = -0x1

.field private static final DUAL_MODE_CARD_SETTINGS_KEY:Ljava/lang/String; = "cdma_dual_mode_card_settings_key"

.field public static final EVENT_SET_SUBSCRIPTION_DONE:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final IS_UMTS_GSM:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "MSimCdmaOptions"

.field private static final SELECT_CDMA_NETWORK_KEY:Ljava/lang/String; = "select_cdma_network_key"

.field public static final SUBSCRIPTION_CDMA_MODE:I = 0x0

.field public static final SUBSCRIPTION_GSM_MODE:I = 0x1

.field public static final SUBSCRIPTION_INDEX_INVALID:I = -0x1


# instance fields
.field protected final DIALOG_SET_SUBSCRIPTION_IN_PROGRESS:I

.field public card1DualModeStageinProgress:I

.field private mButtonAPNExpand:Landroid/preference/PreferenceScreen;

.field private mButtonCdmaSubscription:Lcom/android/phone/CdmaSubscriptionListPreference;

.field private mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

.field private mCardSubscrInfo:[Lcom/android/internal/telephony/SubscriptionData;

.field private mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

.field public mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPrefActivity:Landroid/preference/PreferenceActivity;

.field private mPrefCategory:Landroid/preference/PreferenceCategory;

.field public mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

.field private mPrefCdmaNetworkSelect:Landroid/preference/PreferenceScreen;

.field private mPrefScreen:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 114
    const-string v0, "ro.config.dsds_mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "umts_gsm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/MSimCdmaOptions;->IS_UMTS_GSM:Z

    return-void
.end method

.method public constructor <init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V
    .registers 5
    .parameter "prefActivity"
    .parameter "prefScreen"
    .parameter "phone"

    .prologue
    .line 117
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/MSimCdmaOptions;->DIALOG_SET_SUBSCRIPTION_IN_PROGRESS:I

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/MSimCdmaOptions;->card1DualModeStageinProgress:I

    .line 619
    new-instance v0, Lcom/android/phone/MSimCdmaOptions$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MSimCdmaOptions$1;-><init>(Lcom/android/phone/MSimCdmaOptions;)V

    iput-object v0, p0, Lcom/android/phone/MSimCdmaOptions;->mHandler:Landroid/os/Handler;

    .line 118
    iput-object p1, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    .line 119
    iput-object p2, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    .line 120
    iput-object p3, p0, Lcom/android/phone/MSimCdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 121
    invoke-virtual {p0}, Lcom/android/phone/MSimCdmaOptions;->create()V

    .line 122
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/MSimCdmaOptions;)Landroid/preference/PreferenceActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/MSimCdmaOptions;)Lcom/android/internal/telephony/SubscriptionData;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/MSimCdmaOptions;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/phone/MSimCdmaOptions;->setDualModePrefValueAndSummary()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/MSimCdmaOptions;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/phone/MSimCdmaOptions;->activateCard1DualModeGSM()V

    return-void
.end method

.method private activateCard1DualModeCDMA()V
    .registers 8

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 409
    const-string v2, "MSimCdmaOptions"

    const-string v3, "Activating Card 1 Dual mode CDMA..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-direct {p0}, Lcom/android/phone/MSimCdmaOptions;->updateAllSubscriptions()V

    .line 414
    const/4 v1, 0x0

    .local v1, subid:I
    :goto_e
    sget v2, Lcom/android/internal/telephony/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v1, v2, :cond_56

    .line 415
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCardSubscrInfo:[Lcom/android/internal/telephony/SubscriptionData;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v0, v2, v1

    .line 416
    .local v0, sub:Lcom/android/internal/telephony/Subscription;
    if-nez v0, :cond_1f

    .line 414
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 420
    :cond_1f
    iget-object v2, v0, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    const-string v3, "RUIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    iget-object v2, v0, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    const-string v3, "CSIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 421
    :cond_33
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v5

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/Subscription;->copyFrom(Lcom/android/internal/telephony/Subscription;)Lcom/android/internal/telephony/Subscription;

    .line 422
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v5

    iput v5, v2, Lcom/android/internal/telephony/Subscription;->slotId:I

    .line 423
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v5

    iput v5, v2, Lcom/android/internal/telephony/Subscription;->subId:I

    .line 424
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v5

    sget-object v3, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v3, v2, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 430
    .end local v0           #sub:Lcom/android/internal/telephony/Subscription;
    :cond_56
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/android/internal/telephony/Subscription;->slotId:I

    if-nez v2, :cond_9e

    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/android/internal/telephony/Subscription;->m3gppIndex:I

    if-eq v2, v6, :cond_9e

    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/android/internal/telephony/Subscription;->m3gpp2Index:I

    if-ne v2, v6, :cond_9e

    .line 434
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v4

    iput v6, v2, Lcom/android/internal/telephony/Subscription;->slotId:I

    .line 435
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v4

    iput v6, v2, Lcom/android/internal/telephony/Subscription;->m3gppIndex:I

    .line 436
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v4

    iput v6, v2, Lcom/android/internal/telephony/Subscription;->m3gpp2Index:I

    .line 437
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v4

    iput v4, v2, Lcom/android/internal/telephony/Subscription;->subId:I

    .line 438
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v4

    sget-object v3, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v3, v2, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 441
    :cond_9e
    return-void
.end method

.method private activateCard1DualModeGSM()V
    .registers 8

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 375
    const-string v2, "MSimCdmaOptions"

    const-string v3, "Activating Card 1 Dual mode GSM..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-direct {p0}, Lcom/android/phone/MSimCdmaOptions;->updateAllSubscriptions()V

    .line 380
    const-string v2, "MSimCdmaOptions"

    const-string v3, "activateUiccCard activateCard1DualModeGSM() finish"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v1, 0x0

    .local v1, subid:I
    :goto_15
    sget v2, Lcom/android/internal/telephony/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v1, v2, :cond_5d

    .line 384
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCardSubscrInfo:[Lcom/android/internal/telephony/SubscriptionData;

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v0, v2, v1

    .line 385
    .local v0, sub:Lcom/android/internal/telephony/Subscription;
    if-nez v0, :cond_26

    .line 383
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 389
    :cond_26
    iget-object v2, v0, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    const-string v3, "SIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    iget-object v2, v0, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    const-string v3, "USIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 390
    :cond_3a
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v5

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/Subscription;->copyFrom(Lcom/android/internal/telephony/Subscription;)Lcom/android/internal/telephony/Subscription;

    .line 391
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v5

    iput v4, v2, Lcom/android/internal/telephony/Subscription;->slotId:I

    .line 392
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v5

    iput v5, v2, Lcom/android/internal/telephony/Subscription;->subId:I

    .line 393
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v5

    sget-object v3, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v3, v2, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 399
    .end local v0           #sub:Lcom/android/internal/telephony/Subscription;
    :cond_5d
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v4

    iput v6, v2, Lcom/android/internal/telephony/Subscription;->slotId:I

    .line 400
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v4

    iput v6, v2, Lcom/android/internal/telephony/Subscription;->m3gppIndex:I

    .line 401
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v4

    iput v6, v2, Lcom/android/internal/telephony/Subscription;->m3gpp2Index:I

    .line 402
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v4

    iput v4, v2, Lcom/android/internal/telephony/Subscription;->subId:I

    .line 403
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v4

    sget-object v3, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v3, v2, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 405
    return-void
.end method

.method private deviceSupportsNvAndRuim()Z
    .registers 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 218
    const-string v9, "ril.subscription.types"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 219
    .local v6, subscriptionsSupported:Ljava/lang/String;
    const/4 v3, 0x0

    .line 220
    .local v3, nvSupported:Z
    const/4 v4, 0x0

    .line 222
    .local v4, ruimSupported:Z
    iget-object v9, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v9}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "cdma_ssp"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_19

    .line 243
    :goto_18
    return v8

    .line 226
    :cond_19
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deviceSupportsnvAnRum: prop="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/phone/MSimCdmaOptions;->log(Ljava/lang/String;)V

    .line 227
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5a

    .line 230
    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3d
    if-ge v1, v2, :cond_5a

    aget-object v5, v0, v1

    .line 231
    .local v5, subscriptionType:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 232
    const-string v9, "NV"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4e

    .line 233
    const/4 v3, 0x1

    .line 235
    :cond_4e
    const-string v9, "RUIM"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_57

    .line 236
    const/4 v4, 0x1

    .line 230
    :cond_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 241
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v5           #subscriptionType:Ljava/lang/String;
    :cond_5a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deviceSupportsnvAnRum: nvSupported="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ruimSupported="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/phone/MSimCdmaOptions;->log(Ljava/lang/String;)V

    .line 243
    if-eqz v3, :cond_80

    if-eqz v4, :cond_80

    :goto_7e
    move v8, v7

    goto :goto_18

    :cond_80
    move v7, v8

    goto :goto_7e
.end method

.method private getCurrentDualModeSubscription()I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 301
    const-string v0, "RUIM"

    .line 302
    .local v0, sDualModeNetworkApp:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/SubscriptionManager;->getSubidFromSlotId(I)I

    move-result v1

    .line 304
    .local v1, subid:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_21

    .line 305
    invoke-direct {p0}, Lcom/android/phone/MSimCdmaOptions;->updateAllSubscriptions()V

    .line 307
    iget-object v3, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v3, v3, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 311
    :cond_21
    const-string v3, "SIM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_31

    const-string v3, "USIM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 313
    :cond_31
    const/4 v2, 0x1

    .line 315
    :cond_32
    return v2
.end method

.method private isDualMode()Z
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 588
    const/4 v0, 0x0

    .line 590
    .local v0, bretVal:Z
    invoke-static {}, Lcom/android/internal/telephony/CardSubscriptionManager;->getInstance()Lcom/android/internal/telephony/CardSubscriptionManager;

    move-result-object v2

    .line 591
    .local v2, lCardSubManager:Lcom/android/internal/telephony/CardSubscriptionManager;
    if-eqz v2, :cond_40

    .line 592
    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/SubscriptionData;

    move-result-object v3

    .line 593
    .local v3, lSubData:Lcom/android/internal/telephony/SubscriptionData;
    if-eqz v3, :cond_40

    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionData;->getLength()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_40

    .line 595
    const/16 v1, 0xa

    .line 599
    .local v1, iCardType:I
    invoke-static {}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getCardType(I)I

    move-result v1

    .line 603
    const-string v4, "MSimCdmaOptions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCardDualMode iCardType is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const/16 v4, 0x28

    if-eq v1, v4, :cond_3f

    const/16 v4, 0x29

    if-ne v1, v4, :cond_41

    .line 608
    :cond_3f
    const/4 v0, 0x1

    .line 615
    .end local v1           #iCardType:I
    .end local v3           #lSubData:Lcom/android/internal/telephony/SubscriptionData;
    :cond_40
    :goto_40
    return v0

    .line 610
    .restart local v1       #iCardType:I
    .restart local v3       #lSubData:Lcom/android/internal/telephony/SubscriptionData;
    :cond_41
    const/4 v0, 0x0

    goto :goto_40
.end method

.method private setDualModePrefValueAndSummary()V
    .registers 4

    .prologue
    .line 582
    invoke-direct {p0}, Lcom/android/phone/MSimCdmaOptions;->getCurrentDualModeSubscription()I

    move-result v0

    .line 583
    .local v0, dualmodetype:I
    iget-object v1, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 584
    iget-object v1, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 585
    return-void
.end method

.method private updateAllSubscriptions()V
    .registers 5

    .prologue
    .line 322
    const-string v2, "MSimCdmaOptions"

    const-string v3, "Updating all subscriptions info... "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    sget v2, Lcom/android/internal/telephony/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    new-array v2, v2, [Lcom/android/internal/telephony/SubscriptionData;

    iput-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCardSubscrInfo:[Lcom/android/internal/telephony/SubscriptionData;

    .line 327
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    sget v2, Lcom/android/internal/telephony/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v2, :cond_21

    .line 328
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCardSubscrInfo:[Lcom/android/internal/telephony/SubscriptionData;

    invoke-static {}, Lcom/android/internal/telephony/CardSubscriptionManager;->getInstance()Lcom/android/internal/telephony/CardSubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/SubscriptionData;

    move-result-object v3

    aput-object v3, v2, v0

    .line 327
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 332
    :cond_21
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCardSubscrInfo:[Lcom/android/internal/telephony/SubscriptionData;

    if-eqz v2, :cond_47

    .line 333
    new-instance v2, Lcom/android/internal/telephony/SubscriptionData;

    sget v3, Lcom/android/internal/telephony/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/SubscriptionData;-><init>(I)V

    iput-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    .line 334
    const/4 v0, 0x0

    :goto_2f
    sget v2, Lcom/android/internal/telephony/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v2, :cond_4e

    .line 335
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/Subscription;

    move-result-object v1

    .line 336
    .local v1, sub:Lcom/android/internal/telephony/Subscription;
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/Subscription;->copyFrom(Lcom/android/internal/telephony/Subscription;)Lcom/android/internal/telephony/Subscription;

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 341
    .end local v1           #sub:Lcom/android/internal/telephony/Subscription;
    :cond_47
    const-string v2, "MSimCdmaOptions"

    const-string v3, "onCreate: Card info not available: mCardSubscrInfo == NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_4e
    return-void
.end method


# virtual methods
.method protected create()V
    .registers 9

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    .line 125
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    const v6, 0x7f050016

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 128
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v6, "category_cdma_network"

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCategory:Landroid/preference/PreferenceCategory;

    .line 130
    iget-object v6, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCategory:Landroid/preference/PreferenceCategory;

    sget-boolean v4, Lcom/android/phone/MSimCdmaOptions;->IS_UMTS_GSM:Z

    if-eqz v4, :cond_10e

    const v4, 0x7f0c0412

    :goto_1f
    invoke-virtual {v6, v4}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 132
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v6, "select_cdma_network_key"

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCdmaNetworkSelect:Landroid/preference/PreferenceScreen;

    .line 136
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v6, "cdma_button_apn_key"

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    .line 138
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_4b

    .line 139
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 140
    .local v2, lIntent:Landroid/content/Intent;
    if-eqz v2, :cond_4b

    .line 141
    const-string v4, "subscription"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    .end local v2           #lIntent:Landroid/content/Intent;
    :cond_4b
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v6, "cdma_system_select_key"

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/CdmaSystemSelectListPreference;

    iput-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    .line 150
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v6, "cdma_subscription_key"

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/CdmaSubscriptionListPreference;

    iput-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mButtonCdmaSubscription:Lcom/android/phone/CdmaSubscriptionListPreference;

    .line 153
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    invoke-virtual {v4, v0}, Lcom/android/phone/CdmaSystemSelectListPreference;->setEnabled(Z)V

    .line 154
    invoke-direct {p0}, Lcom/android/phone/MSimCdmaOptions;->deviceSupportsNvAndRuim()Z

    move-result v4

    if-eqz v4, :cond_113

    .line 155
    const-string v4, "Both NV and Ruim supported, ENABLE subscription type selection"

    invoke-virtual {p0, v4}, Lcom/android/phone/MSimCdmaOptions;->log(Ljava/lang/String;)V

    .line 156
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mButtonCdmaSubscription:Lcom/android/phone/CdmaSubscriptionListPreference;

    invoke-virtual {v4, v0}, Lcom/android/phone/CdmaSubscriptionListPreference;->setEnabled(Z)V

    .line 163
    :goto_78
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1110023

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 165
    .local v3, voiceCapable:Z
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v4

    if-ne v4, v0, :cond_127

    .line 166
    .local v0, isLTE:Z
    :goto_8d
    if-nez v3, :cond_91

    if-eqz v0, :cond_9e

    .line 169
    :cond_91
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v7, "cdma_activate_device_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 174
    :cond_9e
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_ae

    .line 175
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 181
    :cond_ae
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    .line 183
    .local v1, isMultiSim:Z
    if-eqz v1, :cond_c3

    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    if-eqz v4, :cond_c3

    .line 184
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/phone/MSimCdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 186
    :cond_c3
    if-eqz v1, :cond_d0

    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mButtonCdmaSubscription:Lcom/android/phone/CdmaSubscriptionListPreference;

    if-eqz v4, :cond_d0

    .line 187
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/phone/MSimCdmaOptions;->mButtonCdmaSubscription:Lcom/android/phone/CdmaSubscriptionListPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 189
    :cond_d0
    if-eqz v1, :cond_e9

    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v5, "cdma_activate_device_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_e9

    .line 190
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v6, "cdma_activate_device_key"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 192
    :cond_e9
    if-nez v1, :cond_f6

    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCdmaNetworkSelect:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_f6

    .line 193
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCdmaNetworkSelect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 198
    :cond_f6
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v5, "cdma_dual_mode_card_settings_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    .line 199
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    if-eqz v4, :cond_10d

    .line 202
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 214
    :cond_10d
    return-void

    .line 130
    .end local v0           #isLTE:Z
    .end local v1           #isMultiSim:Z
    .end local v3           #voiceCapable:Z
    :cond_10e
    const v4, 0x7f0c03f7

    goto/16 :goto_1f

    .line 158
    :cond_113
    const-string v4, "Both NV and Ruim NOT supported, REMOVE subscription type selection"

    invoke-virtual {p0, v4}, Lcom/android/phone/MSimCdmaOptions;->log(Ljava/lang/String;)V

    .line 159
    iget-object v4, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v7, "cdma_subscription_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_78

    .restart local v3       #voiceCapable:Z
    :cond_127
    move v0, v5

    .line 165
    goto/16 :goto_8d
.end method

.method public isAirplaneModeOn()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 516
    iget-object v1, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 272
    const-string v0, "MSimCdmaOptions"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-void
.end method

.method public makecard2subsForDeactivation()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v5, -0x1

    .line 350
    const-string v2, "MSimCdmaOptions"

    const-string v3, "makecard2subsForDeactivation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/SubscriptionManager;->getSubidFromSlotId(I)I

    move-result v0

    .line 354
    .local v0, subid:I
    if-ne v0, v5, :cond_15

    .line 355
    const/4 v1, 0x0

    .line 368
    :goto_14
    return v1

    .line 359
    :cond_15
    const-string v2, "MSimCdmaOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Subscription["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is to be deactivated."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v0

    iput v5, v2, Lcom/android/internal/telephony/Subscription;->slotId:I

    .line 363
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v0

    iput v5, v2, Lcom/android/internal/telephony/Subscription;->m3gppIndex:I

    .line 364
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v0

    iput v5, v2, Lcom/android/internal/telephony/Subscription;->m3gpp2Index:I

    .line 365
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v0

    iput v0, v2, Lcom/android/internal/telephony/Subscription;->subId:I

    .line 366
    iget-object v2, p0, Lcom/android/phone/MSimCdmaOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v3, v2, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    goto :goto_14
.end method

.method public preferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 12
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 448
    const-string v7, "MSimCdmaOptions"

    const-string v8, "CDMA Option preferenceChange Enter"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 452
    .local v3, option:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    if-ne p1, v7, :cond_88

    .line 453
    iget-object v7, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    invoke-virtual {v7, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 454
    .local v1, lIndex:I
    const/4 v0, 0x0

    .line 457
    .local v0, iserr:Z
    const-string v7, "MSimCdmaOptions"

    const-string v8, "CDMA Option preferenceChange handle subscription"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v7, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 461
    .local v2, oldIndex:I
    if-ne v1, v2, :cond_35

    .line 463
    const-string v6, "MSimCdmaOptions"

    const-string v7, "preferenceChange; same mode selected, so no need to modify it"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    .end local v0           #iserr:Z
    .end local v1           #lIndex:I
    .end local v2           #oldIndex:I
    :cond_34
    :goto_34
    return v5

    .line 468
    .restart local v0       #iserr:Z
    .restart local v1       #lIndex:I
    .restart local v2       #oldIndex:I
    :cond_35
    if-ne v1, v5, :cond_72

    .line 470
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/internal/telephony/SubscriptionManager;->getSubidFromSlotId(I)I

    move-result v4

    .line 472
    .local v4, subid:I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_64

    .line 474
    iput v6, p0, Lcom/android/phone/MSimCdmaOptions;->card1DualModeStageinProgress:I

    .line 475
    invoke-virtual {p0}, Lcom/android/phone/MSimCdmaOptions;->makecard2subsForDeactivation()Z

    move-result v7

    if-nez v7, :cond_62

    move v0, v5

    .line 498
    .end local v4           #subid:I
    :goto_4b
    if-nez v0, :cond_34

    .line 500
    const-string v6, "MSimCdmaOptions"

    const-string v7, "CDMA Option setSubscription"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    new-instance v6, Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode;-><init>(Lcom/android/phone/MSimCdmaOptions;Lcom/android/phone/MSimCdmaOptions$1;)V

    invoke-virtual {v6, v1}, Lcom/android/phone/MSimCdmaOptions$AlertBuilderDualMode;->Instance(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_34

    .restart local v4       #subid:I
    :cond_62
    move v0, v6

    .line 475
    goto :goto_4b

    .line 478
    :cond_64
    const/4 v6, 0x2

    iput v6, p0, Lcom/android/phone/MSimCdmaOptions;->card1DualModeStageinProgress:I

    .line 481
    const-string v6, "MSimCdmaOptions"

    const-string v7, "CDMA Option activateCard1DualModeGSM"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-direct {p0}, Lcom/android/phone/MSimCdmaOptions;->activateCard1DualModeGSM()V

    goto :goto_4b

    .line 485
    .end local v4           #subid:I
    :cond_72
    if-nez v1, :cond_7f

    .line 488
    const-string v6, "MSimCdmaOptions"

    const-string v7, "CDMA Option activateCard1DualModeCDMA"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-direct {p0}, Lcom/android/phone/MSimCdmaOptions;->activateCard1DualModeCDMA()V

    goto :goto_4b

    .line 493
    :cond_7f
    const-string v6, "MSimCdmaOptions"

    const-string v7, "Means some error"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/4 v0, 0x1

    goto :goto_4b

    .end local v0           #iserr:Z
    .end local v1           #lIndex:I
    .end local v2           #oldIndex:I
    :cond_88
    move v5, v6

    .line 511
    goto :goto_34
.end method

.method public preferenceTreeClick(Landroid/preference/Preference;)Z
    .registers 5
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 247
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cdma_system_select_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 248
    const-string v1, "preferenceTreeClick: return BUTTON_CDMA_ROAMING_KEY true"

    invoke-virtual {p0, v1}, Lcom/android/phone/MSimCdmaOptions;->log(Ljava/lang/String;)V

    .line 260
    :goto_12
    return v0

    .line 251
    :cond_13
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cdma_subscription_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 252
    const-string v1, "preferenceTreeClick: return CDMA_SUBSCRIPTION_KEY true"

    invoke-virtual {p0, v1}, Lcom/android/phone/MSimCdmaOptions;->log(Ljava/lang/String;)V

    goto :goto_12

    .line 256
    :cond_25
    iget-object v0, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_2c

    .line 257
    invoke-direct {p0}, Lcom/android/phone/MSimCdmaOptions;->setDualModePrefValueAndSummary()V

    .line 260
    :cond_2c
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public setEnabled(Z)V
    .registers 6
    .parameter "enabled"

    .prologue
    const/4 v2, 0x0

    .line 278
    const/4 v0, 0x1

    .line 280
    .local v0, CARD_MODE_GSM:I
    iget-object v1, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCategory:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_27

    .line 281
    iget-object v3, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCategory:Landroid/preference/PreferenceCategory;

    if-eqz p1, :cond_28

    const/4 v1, 0x1

    :goto_b
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 284
    invoke-static {}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDualCardMode()I

    move-result v1

    if-eq v1, v0, :cond_22

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SubscriptionManager;->isSubActive(I)Z

    move-result v1

    if-nez v1, :cond_27

    .line 287
    :cond_22
    iget-object v1, p0, Lcom/android/phone/MSimCdmaOptions;->mPrefCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 291
    :cond_27
    return-void

    :cond_28
    move v1, v2

    .line 281
    goto :goto_b
.end method

.method public showDialog(Landroid/preference/Preference;)V
    .registers 5
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    .line 264
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdma_system_select_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 265
    iget-object v0, p0, Lcom/android/phone/MSimCdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/CdmaSystemSelectListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 269
    :cond_12
    :goto_12
    return-void

    .line 266
    :cond_13
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdma_subscription_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 267
    iget-object v0, p0, Lcom/android/phone/MSimCdmaOptions;->mButtonCdmaSubscription:Lcom/android/phone/CdmaSubscriptionListPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/CdmaSubscriptionListPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_12
.end method
