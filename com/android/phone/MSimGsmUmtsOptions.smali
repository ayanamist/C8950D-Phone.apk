.class public Lcom/android/phone/MSimGsmUmtsOptions;
.super Ljava/lang/Object;
.source "MSimGsmUmtsOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode;
    }
.end annotation


# static fields
.field private static final BUTTON_APN_EXPAND_KEY:Ljava/lang/String; = "button_apn_key"

.field private static final BUTTON_APN_EXPAND_KEY_SUB2:Ljava/lang/String; = "button_apn_key_sub2"

.field private static final BUTTON_OPERATOR_SELECTION_EXPAND_KEY:Ljava/lang/String; = "button_carrier_sel_key"

.field private static final BUTTON_OPERATOR_SELECTION_EXPAND_KEY_SUB2:Ljava/lang/String; = "button_carrier_sel_key_sub2"

.field private static final BUTTON_PREFER_2G_KEY:Ljava/lang/String; = "button_prefer_2g_key"

.field private static final BUTTON_PREFER_2G_KEY_SUB2:Ljava/lang/String; = "button_prefer_2g_key_sub2"

.field private static final CATEGORY_GSM_NETWORK:Ljava/lang/String; = "category_gsm_network"

.field private static final CATEGORY_GSM_NETWORK_SUB2:Ljava/lang/String; = "category_gsm_network_sub2"

.field private static final DBG:Z = true

.field public static final DUALMODE_CARD1_DEACTIVATINGCDMA_ACTIVATEGSM:I = 0x2

.field public static final DUALMODE_CARD2_DEACTIVATINGGSM:I = 0x0

.field public static final DUALMODE_CARD2_DEACTIVATINGGSMSUCCESS:I = 0x1

.field public static final DUALMODE_INIT_STAGE:I = -0x1

.field private static final DUAL_MODE_CARD_SETTINGS_KEY:Ljava/lang/String; = "dual_mode_card_settings_key"

.field private static final DUAL_MODE_CARD_SETTINGS_KEY_SUB2:Ljava/lang/String; = "dual_mode_card_settings_key_sub2"

.field public static final EVENT_SET_SUBSCRIPTION_DONE:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final IS_UMTS_GSM:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "MSimGsmUmtsOptions"

.field public static final SUBSCRIPTION_CDMA_MODE:I = 0x0

.field public static final SUBSCRIPTION_GSM_MODE:I = 0x1

.field public static final SUBSCRIPTION_INDEX_INVALID:I = -0x1


# instance fields
.field private final CARD_MODE_CDMA:I

.field private final CARD_MODE_GSM:I

.field protected final DIALOG_SET_SUBSCRIPTION_IN_PROGRESS:I

.field public card1DualModeStageinProgress:I

.field private mButtonAPNExpand:Landroid/preference/PreferenceScreen;

.field private mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

.field private mButtonPrefer2g:Landroid/preference/CheckBoxPreference;

.field private mCardSubscrInfo:[Lcom/android/internal/telephony/SubscriptionData;

.field private mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

.field public mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPrefActivity:Landroid/preference/PreferenceActivity;

.field private mPrefCategory:Landroid/preference/PreferenceCategory;

.field public mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

.field private mPrefScreen:Landroid/preference/PreferenceScreen;

.field private mSubscription:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 101
    const-string v0, "ro.config.dsds_mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "umts_gsm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/MSimGsmUmtsOptions;->IS_UMTS_GSM:Z

    return-void
.end method

.method public constructor <init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V
    .registers 4
    .parameter "prefActivity"
    .parameter "prefScreen"

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/MSimGsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;I)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;I)V
    .registers 7
    .parameter "prefActivity"
    .parameter "prefScreen"
    .parameter "subscription"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 113
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput v1, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mSubscription:I

    .line 78
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->DIALOG_SET_SUBSCRIPTION_IN_PROGRESS:I

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->card1DualModeStageinProgress:I

    .line 104
    iput v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->CARD_MODE_GSM:I

    .line 105
    iput v1, p0, Lcom/android/phone/MSimGsmUmtsOptions;->CARD_MODE_CDMA:I

    .line 623
    new-instance v0, Lcom/android/phone/MSimGsmUmtsOptions$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MSimGsmUmtsOptions$1;-><init>(Lcom/android/phone/MSimGsmUmtsOptions;)V

    iput-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mHandler:Landroid/os/Handler;

    .line 114
    iput-object p1, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    .line 115
    iput-object p2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    .line 116
    iput p3, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mSubscription:I

    .line 117
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mSubscription:I

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 118
    iget v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mSubscription:I

    if-nez v0, :cond_43

    .line 119
    invoke-virtual {p0}, Lcom/android/phone/MSimGsmUmtsOptions;->create()V

    .line 124
    :cond_32
    :goto_32
    iget-object v1, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefCategory:Landroid/preference/PreferenceCategory;

    sget-boolean v0, Lcom/android/phone/MSimGsmUmtsOptions;->IS_UMTS_GSM:Z

    if-eqz v0, :cond_4f

    iget v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mSubscription:I

    if-nez v0, :cond_4b

    const v0, 0x7f0c0412

    :goto_3f
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 135
    return-void

    .line 120
    :cond_43
    iget v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mSubscription:I

    if-ne v0, v2, :cond_32

    .line 121
    invoke-virtual {p0}, Lcom/android/phone/MSimGsmUmtsOptions;->createSub2()V

    goto :goto_32

    .line 124
    :cond_4b
    const v0, 0x7f0c0413

    goto :goto_3f

    :cond_4f
    iget v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mSubscription:I

    if-nez v0, :cond_57

    const v0, 0x7f0c03f7

    goto :goto_3f

    :cond_57
    const v0, 0x7f0c03f8

    goto :goto_3f
.end method

.method static synthetic access$100(Lcom/android/phone/MSimGsmUmtsOptions;)Landroid/preference/PreferenceActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/MSimGsmUmtsOptions;)Lcom/android/internal/telephony/SubscriptionData;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/MSimGsmUmtsOptions;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/phone/MSimGsmUmtsOptions;->setDualModePrefValueAndSummary()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/MSimGsmUmtsOptions;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/phone/MSimGsmUmtsOptions;->activateCard1DualModeGSM()V

    return-void
.end method

.method private activateCard1DualModeCDMA()V
    .registers 8

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 410
    const-string v2, "MSimGsmUmtsOptions"

    const-string v3, "Activating Card 1 Dual mode CDMA..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-direct {p0}, Lcom/android/phone/MSimGsmUmtsOptions;->updateAllSubscriptions()V

    .line 415
    const/4 v1, 0x0

    .local v1, subid:I
    :goto_e
    sget v2, Lcom/android/internal/telephony/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v1, v2, :cond_56

    .line 416
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCardSubscrInfo:[Lcom/android/internal/telephony/SubscriptionData;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v0, v2, v1

    .line 417
    .local v0, sub:Lcom/android/internal/telephony/Subscription;
    if-nez v0, :cond_1f

    .line 415
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 421
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

    .line 422
    :cond_33
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v5

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/Subscription;->copyFrom(Lcom/android/internal/telephony/Subscription;)Lcom/android/internal/telephony/Subscription;

    .line 423
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v5

    iput v5, v2, Lcom/android/internal/telephony/Subscription;->slotId:I

    .line 424
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v5

    iput v5, v2, Lcom/android/internal/telephony/Subscription;->subId:I

    .line 425
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v5

    sget-object v3, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v3, v2, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 431
    .end local v0           #sub:Lcom/android/internal/telephony/Subscription;
    :cond_56
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/android/internal/telephony/Subscription;->slotId:I

    if-nez v2, :cond_9e

    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/android/internal/telephony/Subscription;->m3gppIndex:I

    if-eq v2, v6, :cond_9e

    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/android/internal/telephony/Subscription;->m3gpp2Index:I

    if-ne v2, v6, :cond_9e

    .line 435
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v4

    iput v6, v2, Lcom/android/internal/telephony/Subscription;->slotId:I

    .line 436
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v4

    iput v6, v2, Lcom/android/internal/telephony/Subscription;->m3gppIndex:I

    .line 437
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v4

    iput v6, v2, Lcom/android/internal/telephony/Subscription;->m3gpp2Index:I

    .line 438
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v4

    iput v4, v2, Lcom/android/internal/telephony/Subscription;->subId:I

    .line 439
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v4

    sget-object v3, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v3, v2, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 442
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
    const-string v2, "MSimGsmUmtsOptions"

    const-string v3, "Activating Card 1 Dual mode GSM..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-direct {p0}, Lcom/android/phone/MSimGsmUmtsOptions;->updateAllSubscriptions()V

    .line 380
    const-string v2, "MSimGsmUmtsOptions"

    const-string v3, "activateUiccCard activateCard1DualModeGSM() finish"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/4 v1, 0x0

    .local v1, subid:I
    :goto_15
    sget v2, Lcom/android/internal/telephony/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v1, v2, :cond_5d

    .line 385
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCardSubscrInfo:[Lcom/android/internal/telephony/SubscriptionData;

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v0, v2, v1

    .line 386
    .local v0, sub:Lcom/android/internal/telephony/Subscription;
    if-nez v0, :cond_26

    .line 384
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 390
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

    .line 391
    :cond_3a
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v5

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/Subscription;->copyFrom(Lcom/android/internal/telephony/Subscription;)Lcom/android/internal/telephony/Subscription;

    .line 392
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v5

    iput v4, v2, Lcom/android/internal/telephony/Subscription;->slotId:I

    .line 393
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v5

    iput v5, v2, Lcom/android/internal/telephony/Subscription;->subId:I

    .line 394
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v5

    sget-object v3, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v3, v2, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 400
    .end local v0           #sub:Lcom/android/internal/telephony/Subscription;
    :cond_5d
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v4

    iput v6, v2, Lcom/android/internal/telephony/Subscription;->slotId:I

    .line 401
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v4

    iput v6, v2, Lcom/android/internal/telephony/Subscription;->m3gppIndex:I

    .line 402
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v4

    iput v6, v2, Lcom/android/internal/telephony/Subscription;->m3gpp2Index:I

    .line 403
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v4

    iput v4, v2, Lcom/android/internal/telephony/Subscription;->subId:I

    .line 404
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v4

    sget-object v3, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v3, v2, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 406
    return-void
.end method

.method private enableorDisableDualModeSelect()V
    .registers 3

    .prologue
    .line 166
    iget-object v1, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mSubscription:I

    if-nez v0, :cond_1c

    const-string v0, "dual_mode_card_settings_key"

    :goto_8
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    .line 168
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1b

    .line 171
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 191
    :cond_1b
    return-void

    .line 166
    :cond_1c
    const-string v0, "dual_mode_card_settings_key_sub2"

    goto :goto_8
.end method

.method private getCurrentDualModeSubscription()I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 302
    const-string v0, "RUIM"

    .line 303
    .local v0, sDualModeNetworkApp:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/SubscriptionManager;->getSubidFromSlotId(I)I

    move-result v1

    .line 305
    .local v1, subid:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_21

    .line 306
    invoke-direct {p0}, Lcom/android/phone/MSimGsmUmtsOptions;->updateAllSubscriptions()V

    .line 308
    iget-object v3, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v3, v3, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 312
    :cond_21
    const-string v3, "SIM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_31

    const-string v3, "USIM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 314
    :cond_31
    const/4 v2, 0x1

    .line 316
    :cond_32
    return v2
.end method

.method private isDualMode()Z
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 592
    const/4 v0, 0x0

    .line 594
    .local v0, bretVal:Z
    invoke-static {}, Lcom/android/internal/telephony/CardSubscriptionManager;->getInstance()Lcom/android/internal/telephony/CardSubscriptionManager;

    move-result-object v2

    .line 595
    .local v2, lCardSubManager:Lcom/android/internal/telephony/CardSubscriptionManager;
    if-eqz v2, :cond_40

    .line 596
    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/SubscriptionData;

    move-result-object v3

    .line 597
    .local v3, lSubData:Lcom/android/internal/telephony/SubscriptionData;
    if-eqz v3, :cond_40

    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionData;->getLength()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_40

    .line 599
    const/16 v1, 0xa

    .line 603
    .local v1, iCardType:I
    invoke-static {}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getCardType(I)I

    move-result v1

    .line 607
    const-string v4, "MSimGsmUmtsOptions"

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

    .line 610
    const/16 v4, 0x28

    if-eq v1, v4, :cond_3f

    const/16 v4, 0x29

    if-ne v1, v4, :cond_41

    .line 612
    :cond_3f
    const/4 v0, 0x1

    .line 619
    .end local v1           #iCardType:I
    .end local v3           #lSubData:Lcom/android/internal/telephony/SubscriptionData;
    :cond_40
    :goto_40
    return v0

    .line 614
    .restart local v1       #iCardType:I
    .restart local v3       #lSubData:Lcom/android/internal/telephony/SubscriptionData;
    :cond_41
    const/4 v0, 0x0

    goto :goto_40
.end method

.method private setDualModePrefValueAndSummary()V
    .registers 4

    .prologue
    .line 586
    invoke-direct {p0}, Lcom/android/phone/MSimGsmUmtsOptions;->getCurrentDualModeSubscription()I

    move-result v0

    .line 587
    .local v0, dualmodetype:I
    iget-object v1, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 588
    iget-object v1, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 589
    return-void
.end method

.method private updateAllSubscriptions()V
    .registers 5

    .prologue
    .line 323
    const-string v2, "MSimGsmUmtsOptions"

    const-string v3, "Updating all subscriptions info... "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    sget v2, Lcom/android/internal/telephony/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    new-array v2, v2, [Lcom/android/internal/telephony/SubscriptionData;

    iput-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCardSubscrInfo:[Lcom/android/internal/telephony/SubscriptionData;

    .line 328
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    sget v2, Lcom/android/internal/telephony/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v2, :cond_21

    .line 329
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCardSubscrInfo:[Lcom/android/internal/telephony/SubscriptionData;

    invoke-static {}, Lcom/android/internal/telephony/CardSubscriptionManager;->getInstance()Lcom/android/internal/telephony/CardSubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/SubscriptionData;

    move-result-object v3

    aput-object v3, v2, v0

    .line 328
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 333
    :cond_21
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCardSubscrInfo:[Lcom/android/internal/telephony/SubscriptionData;

    if-eqz v2, :cond_47

    .line 334
    new-instance v2, Lcom/android/internal/telephony/SubscriptionData;

    sget v3, Lcom/android/internal/telephony/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/SubscriptionData;-><init>(I)V

    iput-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    .line 335
    const/4 v0, 0x0

    :goto_2f
    sget v2, Lcom/android/internal/telephony/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v2, :cond_4e

    .line 336
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/Subscription;

    move-result-object v1

    .line 337
    .local v1, sub:Lcom/android/internal/telephony/Subscription;
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/Subscription;->copyFrom(Lcom/android/internal/telephony/Subscription;)Lcom/android/internal/telephony/Subscription;

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 342
    .end local v1           #sub:Lcom/android/internal/telephony/Subscription;
    :cond_47
    const-string v2, "MSimGsmUmtsOptions"

    const-string v3, "onCreate: Card info not available: mCardSubscrInfo == NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_4e
    return-void
.end method


# virtual methods
.method protected create()V
    .registers 4

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    const v1, 0x7f050019

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 197
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "category_gsm_network"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefCategory:Landroid/preference/PreferenceCategory;

    .line 199
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "button_apn_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    .line 200
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "subscription"

    iget v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mSubscription:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "button_carrier_sel_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    .line 203
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "subscription"

    iget v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mSubscription:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "button_prefer_2g_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonPrefer2g:Landroid/preference/CheckBoxPreference;

    .line 207
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_80

    iget v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mSubscription:I

    if-nez v0, :cond_80

    invoke-static {}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDualCardMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_80

    .line 209
    const-string v0, "MSimGsmUmtsOptions"

    const-string v1, "creat()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonPrefer2g:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 217
    :goto_79
    invoke-direct {p0}, Lcom/android/phone/MSimGsmUmtsOptions;->enableorDisableDualModeSelect()V

    .line 219
    invoke-virtual {p0}, Lcom/android/phone/MSimGsmUmtsOptions;->enableScreen()V

    .line 220
    return-void

    .line 213
    :cond_80
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->updatePhone(Lcom/android/internal/telephony/Phone;)V

    goto :goto_79
.end method

.method protected createSub2()V
    .registers 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    const v1, 0x7f05001a

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 140
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "category_gsm_network_sub2"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefCategory:Landroid/preference/PreferenceCategory;

    .line 142
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "button_apn_key_sub2"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    .line 143
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "subscription"

    iget v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mSubscription:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "button_carrier_sel_key_sub2"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    .line 146
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "subscription"

    iget v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mSubscription:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "button_prefer_2g_key_sub2"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonPrefer2g:Landroid/preference/CheckBoxPreference;

    .line 149
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_6f

    iget v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mSubscription:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6f

    .line 150
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonPrefer2g:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 159
    :goto_68
    invoke-direct {p0}, Lcom/android/phone/MSimGsmUmtsOptions;->enableorDisableDualModeSelect()V

    .line 161
    invoke-virtual {p0}, Lcom/android/phone/MSimGsmUmtsOptions;->enableScreen()V

    .line 162
    return-void

    .line 152
    :cond_6f
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->updatePhone(Lcom/android/internal/telephony/Phone;)V

    goto :goto_68
.end method

.method public enableScreen()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 224
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonPrefer2g:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-eq v0, v3, :cond_18

    .line 226
    const-string v0, "Not a GSM phone"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimGsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonPrefer2g:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 229
    :cond_18
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_29

    .line 230
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-eq v0, v3, :cond_2a

    .line 231
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 244
    :cond_29
    :goto_29
    return-void

    .line 232
    :cond_2a
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isManualNetSelAllowed()Z

    move-result v0

    if-nez v0, :cond_38

    .line 233
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_29

    .line 234
    :cond_38
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 235
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 236
    const-string v0, "[CSP] Enabling Operator Selection menu."

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimGsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_29

    .line 239
    :cond_5a
    const-string v0, "[CSP] Disabling Operator Selection menu."

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimGsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_29
.end method

.method handlePref2g()V
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonPrefer2g:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_b

    .line 270
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonPrefer2g:Landroid/preference/CheckBoxPreference;

    check-cast v0, Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->handlePref2g()V

    .line 273
    :cond_b
    return-void
.end method

.method public isAirplaneModeOn()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 517
    iget-object v1, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

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
    .line 263
    const-string v0, "MSimGsmUmtsOptions"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-void
.end method

.method public makecard2subsForDeactivation()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v5, -0x1

    .line 350
    const-string v2, "MSimGsmUmtsOptions"

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
    const-string v2, "MSimGsmUmtsOptions"

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
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v0

    iput v5, v2, Lcom/android/internal/telephony/Subscription;->slotId:I

    .line 363
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v0

    iput v5, v2, Lcom/android/internal/telephony/Subscription;->m3gppIndex:I

    .line 364
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v0

    iput v5, v2, Lcom/android/internal/telephony/Subscription;->m3gpp2Index:I

    .line 365
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v2, v2, v0

    iput v0, v2, Lcom/android/internal/telephony/Subscription;->subId:I

    .line 366
    iget-object v2, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

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

    .line 449
    const-string v7, "MSimGsmUmtsOptions"

    const-string v8, "CDMA Option preferenceChange Enter"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 453
    .local v3, option:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    if-ne p1, v7, :cond_88

    .line 454
    iget-object v7, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    invoke-virtual {v7, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 455
    .local v1, lIndex:I
    const/4 v0, 0x0

    .line 458
    .local v0, iserr:Z
    const-string v7, "MSimGsmUmtsOptions"

    const-string v8, "CDMA Option preferenceChange handle subscription"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v7, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 462
    .local v2, oldIndex:I
    if-ne v1, v2, :cond_35

    .line 464
    const-string v6, "MSimGsmUmtsOptions"

    const-string v7, "preferenceChange; same mode selected, so no need to modify it"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    .end local v0           #iserr:Z
    .end local v1           #lIndex:I
    .end local v2           #oldIndex:I
    :cond_34
    :goto_34
    return v5

    .line 469
    .restart local v0       #iserr:Z
    .restart local v1       #lIndex:I
    .restart local v2       #oldIndex:I
    :cond_35
    if-ne v1, v5, :cond_72

    .line 471
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/internal/telephony/SubscriptionManager;->getSubidFromSlotId(I)I

    move-result v4

    .line 473
    .local v4, subid:I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_64

    .line 475
    iput v6, p0, Lcom/android/phone/MSimGsmUmtsOptions;->card1DualModeStageinProgress:I

    .line 476
    invoke-virtual {p0}, Lcom/android/phone/MSimGsmUmtsOptions;->makecard2subsForDeactivation()Z

    move-result v7

    if-nez v7, :cond_62

    move v0, v5

    .line 499
    .end local v4           #subid:I
    :goto_4b
    if-nez v0, :cond_34

    .line 501
    const-string v6, "MSimGsmUmtsOptions"

    const-string v7, "CDMA Option setSubscription"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    new-instance v6, Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode;-><init>(Lcom/android/phone/MSimGsmUmtsOptions;Lcom/android/phone/MSimGsmUmtsOptions$1;)V

    invoke-virtual {v6, v1}, Lcom/android/phone/MSimGsmUmtsOptions$AlertBuilderDualMode;->Instance(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_34

    .restart local v4       #subid:I
    :cond_62
    move v0, v6

    .line 476
    goto :goto_4b

    .line 479
    :cond_64
    const/4 v6, 0x2

    iput v6, p0, Lcom/android/phone/MSimGsmUmtsOptions;->card1DualModeStageinProgress:I

    .line 482
    const-string v6, "MSimGsmUmtsOptions"

    const-string v7, "CDMA Option activateCard1DualModeGSM"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-direct {p0}, Lcom/android/phone/MSimGsmUmtsOptions;->activateCard1DualModeGSM()V

    goto :goto_4b

    .line 486
    .end local v4           #subid:I
    :cond_72
    if-nez v1, :cond_7f

    .line 489
    const-string v6, "MSimGsmUmtsOptions"

    const-string v7, "CDMA Option activateCard1DualModeCDMA"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-direct {p0}, Lcom/android/phone/MSimGsmUmtsOptions;->activateCard1DualModeCDMA()V

    goto :goto_4b

    .line 494
    :cond_7f
    const-string v6, "MSimGsmUmtsOptions"

    const-string v7, "Means some error"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/4 v0, 0x1

    goto :goto_4b

    .end local v0           #iserr:Z
    .end local v1           #lIndex:I
    .end local v2           #oldIndex:I
    :cond_88
    move v5, v6

    .line 512
    goto :goto_34
.end method

.method public preferenceTreeClick(Landroid/preference/Preference;)Z
    .registers 4
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 248
    iget-object v1, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonPrefer2g:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mButtonPrefer2g:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_f

    .line 250
    const-string v1, "preferenceTreeClick: return true"

    invoke-virtual {p0, v1}, Lcom/android/phone/MSimGsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 259
    :goto_e
    return v0

    .line 252
    :cond_f
    iget-object v1, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefCdmaDualModeSelect:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_17

    .line 254
    invoke-direct {p0}, Lcom/android/phone/MSimGsmUmtsOptions;->setDualModePrefValueAndSummary()V

    goto :goto_e

    .line 258
    :cond_17
    const-string v0, "preferenceTreeClick: return false"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimGsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 259
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public setEnabled(Z)V
    .registers 6
    .parameter "enabled"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 278
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_2e

    .line 279
    iget-object v3, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefCategory:Landroid/preference/PreferenceCategory;

    if-eqz p1, :cond_2f

    move v0, v1

    :goto_b
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 286
    invoke-static {}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDualCardMode()I

    move-result v0

    if-nez v0, :cond_2e

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionManager;->isSubActive(I)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 288
    const-string v0, "wdb"

    const-string v1, "MSimGsmUmtsOptions createSub2()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/android/phone/MSimGsmUmtsOptions;->mPrefCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 293
    :cond_2e
    return-void

    :cond_2f
    move v0, v2

    .line 279
    goto :goto_b
.end method
