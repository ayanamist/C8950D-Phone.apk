.class public Lcom/android/phone/OtaUtils;
.super Ljava/lang/Object;
.source "OtaUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/OtaUtils$CdmaOtaScreenState;,
        Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;,
        Lcom/android/phone/OtaUtils$CdmaOtaConfigData;,
        Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;,
        Lcom/android/phone/OtaUtils$OtaWidgetData;
    }
.end annotation


# static fields
.field public static final ACTION_DISPLAY_ACTIVATION_SCREEN:Ljava/lang/String; = "com.android.phone.DISPLAY_ACTIVATION_SCREEN"

.field public static final ACTION_PERFORM_CDMA_PROVISIONING:Ljava/lang/String; = "com.android.phone.PERFORM_CDMA_PROVISIONING"

.field public static final ACTION_PERFORM_VOICELESS_CDMA_PROVISIONING:Ljava/lang/String; = "com.android.phone.PERFORM_VOICELESS_CDMA_PROVISIONING"

.field private static final DBG:Z = true

.field public static final EXTRA_OTASP_RESULT_CODE:Ljava/lang/String; = "otasp_result_code"

.field public static final EXTRA_OTASP_RESULT_CODE_PENDING_INTENT:Ljava/lang/String; = "otasp_result_code_pending_intent"

.field public static final EXTRA_OVERRIDE_INTERACTIVE_MODE:Ljava/lang/String; = "ota_override_interactive_mode"

.field public static final EXTRA_VOICELESS_PROVISIONING_OFFER_DONTSHOW:Ljava/lang/String; = "com.android.phone.VOICELESS_PROVISIONING_OFFER_DONTSHOW"

.field private static final LOG_TAG:Ljava/lang/String; = "OtaUtils"

.field public static final OTASP_FAILURE:I = 0x3

.field public static final OTASP_FAILURE_SPC_RETRIES:I = 0x4

.field private static final OTASP_NUMBER:Ljava/lang/String; = "*228"

.field private static final OTASP_NUMBER_NON_INTERACTIVE:Ljava/lang/String; = "*22899"

.field public static final OTASP_SUCCESS:I = 0x2

.field public static final OTASP_UNKNOWN:I = 0x0

.field public static final OTASP_USER_SKIPPED:I = 0x1

.field private static final OTA_CALL_LTE_RETRIES_MAX:I = 0x5

.field private static final OTA_CALL_LTE_RETRY_PERIOD:I = 0xbb8

.field public static final OTA_PLAY_SUCCESS_FAILURE_TONE_OFF:I = 0x0

.field public static final OTA_PLAY_SUCCESS_FAILURE_TONE_ON:I = 0x1

.field public static final OTA_SHOW_ACTIVATE_FAIL_COUNT_OFF:I = 0x0

.field public static final OTA_SHOW_ACTIVATE_FAIL_COUNT_THREE:I = 0x3

.field public static final OTA_SHOW_ACTIVATION_SCREEN_OFF:I = 0x0

.field public static final OTA_SHOW_ACTIVATION_SCREEN_ON:I = 0x1

.field public static final OTA_SHOW_LISTENING_SCREEN_OFF:I = 0x0

.field public static final OTA_SHOW_LISTENING_SCREEN_ON:I = 0x1

.field public static final RESULT_INTERACTIVE_OTASP_STARTED:I = 0x1

.field public static final RESULT_NONINTERACTIVE_OTASP_FAILED:I = 0x3

.field public static final RESULT_NONINTERACTIVE_OTASP_STARTED:I = 0x2

.field private static sIsWizardMode:Z

.field private static sOtaCallLteRetries:I


# instance fields
.field public final OTA_FAILURE_DIALOG_TIMEOUT:I

.field public final OTA_SPC_TIMEOUT:I

.field private mApplication:Lcom/android/phone/PhoneApp;

.field protected mCallCard:Lcom/android/phone/CallCard;

.field private mContext:Landroid/content/Context;

.field protected mInCallPanel:Landroid/view/ViewGroup;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field protected mInCallTouchUi:Landroid/view/ViewGroup;

.field protected mInteractive:Z

.field private mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

.field protected mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 162
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/OtaUtils;->sIsWizardMode:Z

    .line 168
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/OtaUtils;->sOtaCallLteRetries:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4
    .parameter "context"
    .parameter "interactive"

    .prologue
    .line 227
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/phone/OtaUtils;->OTA_SPC_TIMEOUT:I

    .line 80
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/OtaUtils;->OTA_FAILURE_DIALOG_TIMEOUT:I

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    .line 228
    const-string v0, "OtaUtils constructor..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 229
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    .line 230
    iput-object p1, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    .line 231
    iput-boolean p2, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    .line 232
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-static {p0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/OtaUtils;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaSkipActivation()V

    return-void
.end method

.method private static getLteOnCdmaMode(Landroid/content/Context;)I
    .registers 4
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    .line 1722
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1726
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v1

    if-ne v1, v2, :cond_18

    .line 1728
    :cond_11
    const-string v1, "telephony.lteOnCdmaDevice"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1731
    :goto_17
    return v1

    :cond_18
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v1

    goto :goto_17
.end method

.method private getOtaSpcDisplayTime()I
    .registers 8

    .prologue
    .line 1452
    const-string v5, "getOtaSpcDisplayTime()..."

    invoke-static {v5}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1453
    const/4 v4, 0x1

    .line 1454
    .local v4, tmpSpcTime:I
    iget-object v5, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v5, v5, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-eqz v5, :cond_26

    .line 1455
    const-wide/16 v2, 0x0

    .line 1456
    .local v2, tmpOtaSpcRunningTime:J
    const-wide/16 v0, 0x0

    .line 1457
    .local v0, tmpOtaSpcLeftTime:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1458
    iget-object v5, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-wide v5, v5, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->otaSpcUptime:J

    sub-long v0, v2, v5

    .line 1460
    const-wide/32 v5, 0xea60

    cmp-long v5, v0, v5

    if-ltz v5, :cond_3d

    .line 1461
    const/4 v4, 0x1

    .line 1466
    .end local v0           #tmpOtaSpcLeftTime:J
    .end local v2           #tmpOtaSpcRunningTime:J
    :cond_26
    :goto_26
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getOtaSpcDisplayTime(), time for SPC error notice: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1467
    return v4

    .line 1463
    .restart local v0       #tmpOtaSpcLeftTime:J
    .restart local v2       #tmpOtaSpcRunningTime:J
    :cond_3d
    long-to-int v5, v0

    div-int/lit16 v5, v5, 0x3e8

    rsub-int/lit8 v4, v5, 0x3c

    goto :goto_26
.end method

.method public static isOtaspCallIntent(Landroid/content/Intent;)Z
    .registers 10
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 519
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isOtaspCallIntent("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 522
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 524
    .local v1, app:Lcom/android/phone/PhoneApp;
    if-nez p0, :cond_24

    .line 573
    :cond_23
    :goto_23
    return v6

    .line 529
    :cond_24
    sget-boolean v7, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v7, :cond_67

    .line 530
    const-string v7, "subscription"

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getVoiceSubscription()I

    move-result v8

    invoke-virtual {p0, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 531
    .local v5, sub:I
    invoke-virtual {v1, v5}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 537
    .end local v5           #sub:I
    .local v4, phone:Lcom/android/internal/telephony/Phone;
    :goto_36
    invoke-static {v4}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 541
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 542
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_23

    .line 545
    const-string v7, "android.intent.action.CALL"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6e

    .line 546
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isOtaspCallIntent: not a CALL action: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' ==> not OTASP"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    goto :goto_23

    .line 533
    .end local v0           #action:Ljava/lang/String;
    .end local v4           #phone:Lcom/android/internal/telephony/Phone;
    :cond_67
    iget-object v7, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .restart local v4       #phone:Lcom/android/internal/telephony/Phone;
    goto :goto_36

    .line 550
    .restart local v0       #action:Ljava/lang/String;
    :cond_6e
    iget-object v7, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v7, :cond_76

    iget-object v7, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-nez v7, :cond_7e

    .line 554
    :cond_76
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "isOtaspCallIntent: app.cdmaOta* objects(s) not initialized"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 562
    :cond_7e
    :try_start_7e
    invoke-static {p0}, Lcom/android/phone/CallController;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    :try_end_81
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_7e .. :try_end_81} :catch_a7

    move-result-object v3

    .line 569
    .local v3, number:Ljava/lang/String;
    invoke-interface {v4, v3}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 570
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isOtaSpNumber: ACTION_CALL to \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' ==> OTASP call!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 571
    const/4 v6, 0x1

    goto/16 :goto_23

    .line 563
    .end local v3           #number:Ljava/lang/String;
    :catch_a7
    move-exception v2

    .line 566
    .local v2, ex:Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    const-string v7, "isOtaspCallIntent: VoiceMailNumberMissingException => not OTASP"

    invoke-static {v7}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_23
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 1735
    const-string v0, "OtaUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    return-void
.end method

.method public static maybeDoOtaCall(Landroid/content/Context;Landroid/os/Handler;I)Z
    .registers 12
    .parameter "context"
    .parameter "handler"
    .parameter "request"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 302
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "cdma_ota"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_f

    .line 373
    :goto_e
    return v5

    .line 306
    :cond_f
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 307
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 309
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v7

    if-eqz v7, :cond_24

    .line 310
    const-string v5, "OtaUtils"

    const-string v7, "Don\'t run provisioning when in test harness"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 311
    goto :goto_e

    .line 314
    :cond_24
    invoke-static {v3}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v7

    if-nez v7, :cond_31

    .line 316
    const-string v5, "maybeDoOtaCall: OTASP not supported on this device"

    invoke-static {v5}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    move v5, v6

    .line 317
    goto :goto_e

    .line 320
    :cond_31
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->isMinInfoReady()Z

    move-result v7

    if-nez v7, :cond_41

    .line 321
    const-string v6, "MIN is not ready. Registering to receive notification."

    invoke-static {v6}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 322
    const/4 v6, 0x0

    invoke-interface {v3, p1, p2, v6}, Lcom/android/internal/telephony/Phone;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_e

    .line 325
    :cond_41
    invoke-interface {v3, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    .line 327
    invoke-static {p0}, Lcom/android/phone/OtaUtils;->getLteOnCdmaMode(Landroid/content/Context;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_6a

    .line 328
    sget v7, Lcom/android/phone/OtaUtils;->sOtaCallLteRetries:I

    const/4 v8, 0x5

    if-ge v7, v8, :cond_61

    .line 329
    const-string v6, "maybeDoOtaCall: LTE state still unknown: retrying"

    invoke-static {v6}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 330
    const-wide/16 v6, 0xbb8

    invoke-virtual {p1, p2, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 331
    sget v6, Lcom/android/phone/OtaUtils;->sOtaCallLteRetries:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/android/phone/OtaUtils;->sOtaCallLteRetries:I

    goto :goto_e

    .line 334
    :cond_61
    const-string v5, "OtaUtils"

    const-string v7, "maybeDoOtaCall: LTE state still unknown: giving up"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 335
    goto :goto_e

    .line 339
    :cond_6a
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->needsOtaServiceProvisioning()Z

    move-result v4

    .line 340
    .local v4, phoneNeedsActivation:Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "phoneNeedsActivation is set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f0a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 344
    .local v2, otaShowActivationScreen:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "otaShowActivationScreen: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 348
    sget-boolean v7, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-eqz v7, :cond_ca

    .line 349
    if-eqz v4, :cond_c4

    if-ne v2, v6, :cond_c4

    .line 351
    iget-object v7, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v5, v7, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    .line 352
    sput-boolean v5, Lcom/android/phone/OtaUtils;->sIsWizardMode:Z

    .line 354
    const-string v5, "OtaUtils"

    const-string v7, "==> Starting interactive CDMA provisioning..."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-static {p0}, Lcom/android/phone/OtaUtils;->startInteractiveOtasp(Landroid/content/Context;)V

    .line 357
    const-string v5, "maybeDoOtaCall: voice capable; activation started."

    invoke-static {v5}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    :goto_c1
    move v5, v6

    .line 373
    goto/16 :goto_e

    .line 359
    :cond_c4
    const-string v5, "maybeDoOtaCall: voice capable; activation NOT started."

    invoke-static {v5}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    goto :goto_c1

    .line 362
    :cond_ca
    if-eqz v4, :cond_ea

    .line 363
    iget-object v7, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v5, v7, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    .line 364
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.android.phone.PERFORM_VOICELESS_CDMA_PROVISIONING"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 365
    .local v1, newIntent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 366
    const-string v5, "com.android.phone.VOICELESS_PROVISIONING_OFFER_DONTSHOW"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 367
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 368
    const-string v5, "maybeDoOtaCall: non-interactive; activation intent sent."

    invoke-static {v5}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    goto :goto_c1

    .line 370
    .end local v1           #newIntent:Landroid/content/Intent;
    :cond_ea
    const-string v5, "maybeDoOtaCall: non-interactive, no need for OTASP."

    invoke-static {v5}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    goto :goto_c1
.end method

.method private onClickOtaActivateButton()V
    .registers 2

    .prologue
    .line 1390
    const-string v0, "Call Activation Clicked!"

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1391
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaPerformActivation()V

    .line 1392
    return-void
.end method

.method private onClickOtaActivateNextButton()V
    .registers 3

    .prologue
    .line 1428
    const-string v0, "Dialog Next Clicked!"

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1429
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v0, :cond_18

    .line 1430
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 1432
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaShowHome()V

    .line 1434
    :cond_18
    return-void
.end method

.method private onClickOtaActivateSkipButton()V
    .registers 6

    .prologue
    .line 1395
    const-string v1, "Activation Skip Clicked!"

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1397
    new-instance v0, Lcom/android/phone/OtaUtils$2;

    invoke-direct {v0, p0}, Lcom/android/phone/OtaUtils$2;-><init>(Lcom/android/phone/OtaUtils;)V

    .line 1405
    .local v0, keyListener:Landroid/content/DialogInterface$OnKeyListener;
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->getInCallScreen()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c0209

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c020a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/phone/OtaUtils$3;

    invoke-direct {v4, p0}, Lcom/android/phone/OtaUtils$3;-><init>(Lcom/android/phone/OtaUtils;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSkipConfirmationDialog:Landroid/app/AlertDialog;

    .line 1424
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSkipConfirmationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1425
    return-void
.end method

.method private onClickOtaEndButton()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1350
    const-string v0, "Activation End Call Button Clicked!"

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1351
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v0, :cond_22

    .line 1354
    sget-boolean v0, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v0, :cond_23

    .line 1356
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v0

    if-nez v0, :cond_22

    .line 1360
    invoke-virtual {p0, v1}, Lcom/android/phone/OtaUtils;->setSpeaker(Z)V

    .line 1362
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->handleOtaCallEnd()V

    .line 1379
    :cond_22
    :goto_22
    return-void

    .line 1366
    :cond_23
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 1370
    invoke-virtual {p0, v1}, Lcom/android/phone/OtaUtils;->setSpeaker(Z)V

    .line 1372
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->handleOtaCallEnd()V

    goto :goto_22
.end method

.method private onClickOtaSpeakerButton()V
    .registers 3

    .prologue
    .line 1382
    const-string v1, "OTA Speaker button Clicked!"

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1383
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v1, :cond_19

    .line 1384
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v0, 0x1

    .line 1385
    .local v0, isChecked:Z
    :goto_16
    invoke-virtual {p0, v0}, Lcom/android/phone/OtaUtils;->setSpeaker(Z)V

    .line 1387
    .end local v0           #isChecked:Z
    :cond_19
    return-void

    .line 1384
    :cond_1a
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private onClickOtaTryAgainButton()V
    .registers 2

    .prologue
    .line 1343
    const-string v0, "Activation Try Again Clicked!"

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1344
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v0, :cond_10

    .line 1345
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->otaShowActivateScreen()V

    .line 1347
    :cond_10
    return-void
.end method

.method private otaPerformActivation()V
    .registers 5

    .prologue
    .line 779
    const-string v1, "otaPerformActivation()..."

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 780
    iget-boolean v1, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v1, :cond_11

    .line 782
    const-string v1, "OtaUtils"

    const-string v2, "otaPerformActivation: not interactive!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :cond_10
    :goto_10
    return-void

    .line 786
    :cond_11
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v1, :cond_10

    .line 788
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 789
    .local v0, newIntent:Landroid/content/Intent;
    const-string v1, "tel"

    const-string v2, "*228"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 790
    const-string v1, "subscription"

    iget-object v2, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getDefaultSubscription()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 793
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallController;->placeCall(Landroid/content/Intent;)V

    .line 796
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaShowListeningScreen()V

    .line 798
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->updateScreen()V

    goto :goto_10
.end method

.method private static otaProvisionStatusToString(I)Ljava/lang/String;
    .registers 3
    .parameter "status"

    .prologue
    .line 1691
    packed-switch p0, :pswitch_data_42

    .line 1717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    return-object v0

    .line 1693
    :pswitch_1d
    const-string v0, "SPL_UNLOCKED"

    goto :goto_1c

    .line 1695
    :pswitch_20
    const-string v0, "SPC_RETRIES_EXCEEDED"

    goto :goto_1c

    .line 1697
    :pswitch_23
    const-string v0, "A_KEY_EXCHANGED"

    goto :goto_1c

    .line 1699
    :pswitch_26
    const-string v0, "SSD_UPDATED"

    goto :goto_1c

    .line 1701
    :pswitch_29
    const-string v0, "NAM_DOWNLOADED"

    goto :goto_1c

    .line 1703
    :pswitch_2c
    const-string v0, "MDN_DOWNLOADED"

    goto :goto_1c

    .line 1705
    :pswitch_2f
    const-string v0, "IMSI_DOWNLOADED"

    goto :goto_1c

    .line 1707
    :pswitch_32
    const-string v0, "PRL_DOWNLOADED"

    goto :goto_1c

    .line 1709
    :pswitch_35
    const-string v0, "COMMITTED"

    goto :goto_1c

    .line 1711
    :pswitch_38
    const-string v0, "OTAPA_STARTED"

    goto :goto_1c

    .line 1713
    :pswitch_3b
    const-string v0, "OTAPA_STOPPED"

    goto :goto_1c

    .line 1715
    :pswitch_3e
    const-string v0, "OTAPA_ABORTED"

    goto :goto_1c

    .line 1691
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
        :pswitch_2c
        :pswitch_2f
        :pswitch_32
        :pswitch_35
        :pswitch_38
        :pswitch_3b
        :pswitch_3e
    .end packed-switch
.end method

.method private otaScreenInitialize()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 1177
    const-string v0, "otaScreenInitialize()..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1179
    iget-boolean v0, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v0, :cond_14

    .line 1182
    const-string v0, "OtaUtils"

    const-string v1, "otaScreenInitialize: not interactive!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    :goto_13
    return-void

    .line 1186
    :cond_14
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallPanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1187
    :cond_1d
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallTouchUi:Landroid/view/ViewGroup;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallTouchUi:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1188
    :cond_26
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->hideCallCardElements()V

    .line 1190
    :cond_2f
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTitle:Landroid/widget/TextView;

    const v1, 0x7f0c0206

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1191
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextActivate:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1192
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextListenProgress:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1193
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1194
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextSuccessFail:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1195
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsActivate:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1196
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsListenProgress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1197
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsFailSuccess:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1198
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaDtmfDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v0, v2}, Lcom/android/phone/DTMFTwelveKeyDialerView;->setVisibility(I)V

    .line 1199
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 1200
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTryAgainButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1201
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1202
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaUpperWidgets:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1203
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSkipButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_13
.end method

.method private otaShowHome()V
    .registers 4

    .prologue
    .line 750
    const-string v1, "otaShowHome()..."

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 751
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v2, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 754
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->endInCallScreenSession()V

    .line 756
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 757
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 758
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 759
    const-string v1, "subscription"

    iget-object v2, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getDefaultSubscription()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 760
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 761
    return-void
.end method

.method private otaShowInProgressScreen()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 965
    const-string v1, "otaShowInProgressScreen()..."

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 966
    iget-boolean v1, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v1, :cond_12

    .line 968
    const-string v1, "OtaUtils"

    const-string v2, "otaShowInProgressScreen: not interactive!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :cond_11
    :goto_11
    return-void

    .line 972
    :cond_12
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_PROGRESS:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v2, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 976
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    if-eqz v1, :cond_24

    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->getInCallScreen()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_2c

    .line 978
    :cond_24
    const-string v1, "OtaUtils"

    const-string v2, "otaShowInProgressScreen: UI widgets not set up yet!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 987
    :cond_2c
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->isDialerOpened()Z

    move-result v1

    if-nez v1, :cond_11

    .line 988
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaScreenInitialize()V

    .line 989
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextListenProgress:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 990
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextListenProgress:Landroid/widget/TextView;

    const v2, 0x7f0c0213

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 991
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 992
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsListenProgress:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 993
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 994
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    .line 995
    .local v0, speakerOn:Z
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_11
.end method

.method private otaShowListeningScreen()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 836
    const-string v1, "otaShowListeningScreen()..."

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 837
    iget-boolean v1, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v1, :cond_12

    .line 839
    const-string v1, "OtaUtils"

    const-string v2, "otaShowListeningScreen: not interactive!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :goto_11
    return-void

    .line 843
    :cond_12
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowListeningScreen:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_65

    .line 845
    const-string v1, "otaShowListeningScreen(): show listening screen"

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 846
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->isDialerOpened()Z

    move-result v1

    if-nez v1, :cond_5c

    .line 847
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaScreenInitialize()V

    .line 848
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextListenProgress:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 849
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextListenProgress:Landroid/widget/TextView;

    const v2, 0x7f0c0210

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 850
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaDtmfDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v1, v3}, Lcom/android/phone/DTMFTwelveKeyDialerView;->setVisibility(I)V

    .line 851
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsListenProgress:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 852
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 853
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    .line 854
    .local v0, speakerOn:Z
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 856
    .end local v0           #speakerOn:Z
    :cond_5c
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_LISTENING:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v2, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    goto :goto_11

    .line 859
    :cond_65
    const-string v1, "otaShowListeningScreen(): show progress screen"

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 860
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaShowInProgressScreen()V

    goto :goto_11
.end method

.method private otaShowProgramFailure(I)V
    .registers 4
    .parameter "length"

    .prologue
    .line 1006
    const-string v0, "otaShowProgramFailure()..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1007
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->activationCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->activationCount:I

    .line 1008
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->activationCount:I

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowActivateFailTimes:I

    if-ge v0, v1, :cond_4b

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowActivationScreen:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4b

    .line 1012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "otaShowProgramFailure(): activationCount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->activationCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1014
    const-string v0, "otaShowProgramFailure(): show failure notice"

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1015
    invoke-direct {p0, p1}, Lcom/android/phone/OtaUtils;->otaShowProgramFailureNotice(I)V

    .line 1020
    :goto_4a
    return-void

    .line 1017
    :cond_4b
    const-string v0, "otaShowProgramFailure(): show failure dialog"

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1018
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaShowProgramFailureDialog()V

    goto :goto_4a
.end method

.method private otaShowProgramFailureDialog()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1053
    const-string v0, "otaShowProgramFailureDialog()..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1054
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 1056
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTitle:Landroid/widget/TextView;

    const v1, 0x7f0c020f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1057
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextSuccessFail:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1058
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextSuccessFail:Landroid/widget/TextView;

    const v1, 0x7f0c0216

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1059
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsFailSuccess:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1060
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTryAgainButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1062
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->isDialerOpened()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1063
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 1065
    :cond_42
    return-void
.end method

.method private otaShowProgramFailureNotice(I)V
    .registers 7
    .parameter "length"

    .prologue
    .line 1139
    const-string v2, "otaShowProgramFailureNotice()..."

    invoke-static {v2}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1140
    iget-object v2, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v2, v2, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_3d

    .line 1142
    iget-object v2, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->getInCallScreen()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c0214

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, v2, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    .line 1146
    iget-object v2, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v2, v2, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x90

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 1149
    iget-object v2, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v2, v2, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1151
    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v0, v2

    .line 1153
    .local v0, noticeTime:J
    invoke-virtual {p0, v0, v1}, Lcom/android/phone/OtaUtils;->requestCloseOtaFailureNotice(J)V

    .line 1156
    .end local v0           #noticeTime:J
    :cond_3d
    return-void
.end method

.method private otaShowProgramSuccessDialog()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1071
    const-string v0, "otaShowProgramSuccessDialog()..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1072
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 1074
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTitle:Landroid/widget/TextView;

    const v1, 0x7f0c020e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1075
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextSuccessFail:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1076
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextSuccessFail:Landroid/widget/TextView;

    const v1, 0x7f0c0215

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1077
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsFailSuccess:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1078
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1080
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->isDialerOpened()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1081
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 1083
    :cond_42
    return-void
.end method

.method private otaShowSpcErrorNotice(I)V
    .registers 8
    .parameter "length"

    .prologue
    .line 1092
    const-string v3, "otaShowSpcErrorNotice()..."

    invoke-static {v3}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1093
    iget-object v3, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v3, v3, Lcom/android/phone/OtaUtils$OtaWidgetData;->spcErrorDialog:Landroid/app/AlertDialog;

    if-nez v3, :cond_6f

    .line 1094
    iget-object v3, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    .line 1096
    new-instance v0, Lcom/android/phone/OtaUtils$1;

    invoke-direct {v0, p0}, Lcom/android/phone/OtaUtils$1;-><init>(Lcom/android/phone/OtaUtils;)V

    .line 1102
    .local v0, keyListener:Landroid/content/DialogInterface$OnKeyListener;
    iget-object v3, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->getInCallScreen()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0c0217

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, v3, Lcom/android/phone/OtaUtils$OtaWidgetData;->spcErrorDialog:Landroid/app/AlertDialog;

    .line 1107
    iget-object v3, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v3, v3, Lcom/android/phone/OtaUtils$OtaWidgetData;->spcErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x90

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 1110
    iget-object v3, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v3, v3, Lcom/android/phone/OtaUtils$OtaWidgetData;->spcErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1112
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->isDialerOpened()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 1113
    iget-object v3, p0, Lcom/android/phone/OtaUtils;->mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 1115
    :cond_53
    mul-int/lit16 v3, p1, 0x3e8

    int-to-long v1, v3

    .line 1116
    .local v1, noticeTime:J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "otaShowSpcErrorNotice(), remaining SPC noticeTime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1118
    invoke-virtual {p0, v1, v2}, Lcom/android/phone/OtaUtils;->requestCloseSpcErrorNotice(J)V

    .line 1121
    .end local v0           #keyListener:Landroid/content/DialogInterface$OnKeyListener;
    .end local v1           #noticeTime:J
    :cond_6f
    return-void
.end method

.method private otaSkipActivation()V
    .registers 2

    .prologue
    .line 765
    const-string v0, "otaSkipActivation()..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 767
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/OtaUtils;->sendOtaspResult(I)V

    .line 769
    iget-boolean v0, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->finishActivity()V

    .line 771
    :cond_10
    return-void
.end method

.method private sendOtaspResult(I)V
    .registers 7
    .parameter "resultCode"

    .prologue
    .line 915
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendOtaspResult: resultCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 925
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 926
    .local v1, extraStuff:Landroid/content/Intent;
    const-string v2, "otasp_result_code"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 931
    iget-object v2, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-nez v2, :cond_2e

    .line 932
    const-string v2, "OtaUtils"

    const-string v3, "updateNonInteractiveOtaSuccessFailure: no cdmaOtaScreenState object!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :goto_2d
    return-void

    .line 935
    :cond_2e
    iget-object v2, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v2, v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaspResultCodePendingIntent:Landroid/app/PendingIntent;

    if-nez v2, :cond_3e

    .line 936
    const-string v2, "OtaUtils"

    const-string v3, "updateNonInteractiveOtaSuccessFailure: null otaspResultCodePendingIntent!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 948
    :cond_3e
    :try_start_3e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- sendOtaspResult:  SENDING PENDING INTENT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v3, v3, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaspResultCodePendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 950
    iget-object v2, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v2, v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaspResultCodePendingIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_66
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3e .. :try_end_66} :catch_67

    goto :goto_2d

    .line 954
    :catch_67
    move-exception v0

    .line 956
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    const-string v2, "OtaUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PendingIntent send() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method public static setupOtaspCall(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupOtaspCall(): preparing for OTASP call to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 587
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 589
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v1, :cond_25

    .line 592
    const-string v1, "OtaUtils"

    const-string v2, "setupOtaspCall: OtaUtils already exists; replacing with new instance..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_25
    new-instance v1, Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/phone/OtaUtils;-><init>(Landroid/content/Context;Z)V

    iput-object v1, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    .line 598
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- created OtaUtils: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 613
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    invoke-virtual {v1, v2}, Lcom/android/phone/OtaUtils;->setCdmaOtaInCallScreenUiState(Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;)V

    .line 618
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    iput-object v2, v1, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    .line 637
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v1, :cond_5f

    .line 638
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    .line 640
    :cond_5f
    return-void
.end method

.method public static startInteractiveOtasp(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 384
    const-string v2, "startInteractiveOtasp()..."

    invoke-static {v2}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 418
    sget-boolean v2, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v2, :cond_4b

    .line 419
    const-class v1, Lcom/android/phone/InCallScreen_DSDA;

    .line 424
    .local v1, screenClass:Ljava/lang/Class;
    :goto_b
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.phone.DISPLAY_ACTIVATION_SCREEN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 428
    .local v0, activationScreenIntent:Landroid/content/Intent;
    const-string v2, "subscription"

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getDefaultSubscription()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 435
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 440
    invoke-static {v0}, Lcom/android/phone/OtaUtils;->setupOtaspCall(Landroid/content/Intent;)V

    .line 443
    const-string v2, "OtaUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startInteractiveOtasp: launching InCallScreen in \'activate\' state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 446
    return-void

    .line 421
    .end local v0           #activationScreenIntent:Landroid/content/Intent;
    .end local v1           #screenClass:Ljava/lang/Class;
    :cond_4b
    const-class v1, Lcom/android/phone/InCallScreen;

    .restart local v1       #screenClass:Ljava/lang/Class;
    goto :goto_b
.end method

.method public static startNonInteractiveOtasp(Landroid/content/Context;)I
    .registers 10
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 460
    const-string v0, "startNonInteractiveOtasp()..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 461
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    .line 463
    .local v6, app:Lcom/android/phone/PhoneApp;
    iget-object v0, v6, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_16

    .line 465
    const-string v0, "OtaUtils"

    const-string v5, "startNonInteractiveOtasp: OtaUtils already exists; nuking the old one and starting again..."

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_16
    new-instance v0, Lcom/android/phone/OtaUtils;

    invoke-direct {v0, p0, v4}, Lcom/android/phone/OtaUtils;-><init>(Landroid/content/Context;Z)V

    iput-object v0, v6, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- created OtaUtils: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v6, Lcom/android/phone/PhoneApp;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 477
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 478
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    const-string v2, "*22899"

    .line 479
    .local v2, number:Ljava/lang/String;
    const-string v0, "OtaUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startNonInteractiveOtasp: placing call to \'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\'..."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v5, v3

    .line 480
    invoke-static/range {v0 .. v5}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;)I

    move-result v7

    .line 487
    .local v7, callStatus:I
    if-nez v7, :cond_7b

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ==> successful return from placeCall(): callStatus = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 506
    :goto_7a
    return v7

    .line 490
    :cond_7b
    const-string v0, "OtaUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure from placeCall() for OTA number \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\': code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a
.end method

.method private updateNonInteractiveOtaSuccessFailure()V
    .registers 4

    .prologue
    .line 901
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNonInteractiveOtaSuccessFailure(): isOtaCallCommitted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v2, v2, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 903
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    if-eqz v1, :cond_29

    const/4 v0, 0x2

    .line 906
    .local v0, resultCode:I
    :goto_25
    invoke-direct {p0, v0}, Lcom/android/phone/OtaUtils;->sendOtaspResult(I)V

    .line 907
    return-void

    .line 903
    .end local v0           #resultCode:I
    :cond_29
    const/4 v0, 0x3

    goto :goto_25
.end method

.method private updateOtaspProgress()V
    .registers 3

    .prologue
    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateOtaspProgress()...  mInteractive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 870
    iget-boolean v0, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-eqz v0, :cond_1f

    .line 874
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaShowInProgressScreen()V

    .line 887
    :cond_1f
    return-void
.end method


# virtual methods
.method public cleanOtaScreen(Z)V
    .registers 7
    .parameter "disableSpeaker"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 1550
    const-string v0, "OTA ends, cleanOtaScreen!"

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1552
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 1554
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v4, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    .line 1555
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v4, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    .line 1556
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v4, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    .line 1557
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput v4, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->activationCount:I

    .line 1558
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->otaSpcUptime:J

    .line 1559
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;->state:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    .line 1561
    iget-boolean v0, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-eqz v0, :cond_b1

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    if-eqz v0, :cond_b1

    .line 1562
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallPanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1563
    :cond_49
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallTouchUi:Landroid/view/ViewGroup;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallTouchUi:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1564
    :cond_52
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->hideCallCardElements()V

    .line 1568
    :cond_5b
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_64

    .line 1569
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopDialerSession()V

    .line 1572
    :cond_64
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextActivate:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1573
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextListenProgress:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1574
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1575
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextSuccessFail:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1576
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsActivate:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1577
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsListenProgress:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1578
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsFailSuccess:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1579
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaUpperWidgets:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1580
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaDtmfDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v0, v3}, Lcom/android/phone/DTMFTwelveKeyDialerView;->setVisibility(I)V

    .line 1581
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1582
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTryAgainButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1587
    :cond_b1
    if-eqz p1, :cond_b6

    .line 1588
    invoke-virtual {p0, v4}, Lcom/android/phone/OtaUtils;->setSpeaker(Z)V

    .line 1590
    :cond_b6
    return-void
.end method

.method public clearUiWidgets()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 284
    iput-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 285
    iput-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallPanel:Landroid/view/ViewGroup;

    .line 286
    iput-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallTouchUi:Landroid/view/ViewGroup;

    .line 287
    iput-object v0, p0, Lcom/android/phone/OtaUtils;->mCallCard:Lcom/android/phone/CallCard;

    .line 288
    iput-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    .line 289
    return-void
.end method

.method public dismissAllOtaDialogs()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1437
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    if-eqz v0, :cond_31

    .line 1438
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->spcErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1b

    .line 1439
    const-string v0, "- DISMISSING mSpcErrorDialog."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1440
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->spcErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1441
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->spcErrorDialog:Landroid/app/AlertDialog;

    .line 1443
    :cond_1b
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_31

    .line 1444
    const-string v0, "- DISMISSING mOtaFailureDialog."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1445
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1446
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    .line 1449
    :cond_31
    return-void
.end method

.method protected endInCallScreenSession()V
    .registers 2

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 1751
    return-void
.end method

.method protected finishActivity()V
    .registers 2

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 1747
    return-void
.end method

.method public getCdmaOtaInCallScreenUiState()Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;
    .registers 3

    .prologue
    .line 1653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCdmaOtaInCallScreenState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;->state:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1655
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;->state:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    return-object v0
.end method

.method protected getInCallScreen()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 1754
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method protected handleOtaCallEnd()V
    .registers 2

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->handleOtaCallEnd()V

    .line 1771
    return-void
.end method

.method public hideOtaScreen()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 1207
    const-string v0, "hideOtaScreen()..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1209
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsActivate:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1210
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsListenProgress:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1211
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsFailSuccess:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1212
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaUpperWidgets:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1213
    return-void
.end method

.method protected initOtaInCallScreen()V
    .registers 4

    .prologue
    .line 1477
    const-string v0, "initOtaInCallScreen()..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1478
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0700ac

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTitle:Landroid/widget/TextView;

    .line 1479
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0700ad

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextActivate:Landroid/widget/TextView;

    .line 1480
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextActivate:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1481
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0700ae

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextListenProgress:Landroid/widget/TextView;

    .line 1483
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const/high16 v2, 0x101

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextProgressBar:Landroid/widget/ProgressBar;

    .line 1485
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 1486
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0700af

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextSuccessFail:Landroid/widget/TextView;

    .line 1489
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0700ab

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaUpperWidgets:Landroid/view/ViewGroup;

    .line 1491
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0700b6

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsListenProgress:Landroid/view/View;

    .line 1493
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0700b3

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsActivate:Landroid/view/View;

    .line 1495
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0700b8

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsFailSuccess:Landroid/view/View;

    .line 1498
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0700b7

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaEndButton:Landroid/widget/Button;

    .line 1502
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->setOnclickListeners()V

    .line 1505
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0700b0

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/DTMFTwelveKeyDialerView;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaDtmfDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    .line 1508
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaDtmfDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    if-nez v0, :cond_c5

    .line 1509
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "initOtaInCallScreen: couldn\'t find otaDtmfDialerView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1515
    :cond_c5
    new-instance v0, Lcom/android/phone/DTMFTwelveKeyDialer;

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaDtmfDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-direct {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;-><init>(Lcom/android/phone/DTMFTwelveKeyDialerView;)V

    iput-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    .line 1519
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->startDialerSession()V

    .line 1521
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaDtmfDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerView;->setDialer(Lcom/android/phone/DTMFTwelveKeyDialer;)V

    .line 1522
    return-void
.end method

.method public isDialerOpened()Z
    .registers 4

    .prologue
    .line 1216
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v0, 0x1

    .line 1217
    .local v0, retval:Z
    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- isDialerOpened() ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1218
    return v0

    .line 1216
    .end local v0           #retval:Z
    :cond_24
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected isForegroundActivity()Z
    .registers 2

    .prologue
    .line 1766
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isForegroundActivity()Z

    move-result v0

    return v0
.end method

.method public onClickHandler(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 1311
    packed-switch p1, :pswitch_data_22

    .line 1337
    :pswitch_3
    const-string v0, "onClickHandler: received a click event for unrecognized id"

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1340
    :goto_8
    return-void

    .line 1313
    :pswitch_9
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->onClickOtaEndButton()V

    goto :goto_8

    .line 1317
    :pswitch_d
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->onClickOtaSpeakerButton()V

    goto :goto_8

    .line 1321
    :pswitch_11
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->onClickOtaActivateButton()V

    goto :goto_8

    .line 1325
    :pswitch_15
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->onClickOtaActivateSkipButton()V

    goto :goto_8

    .line 1329
    :pswitch_19
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->onClickOtaActivateNextButton()V

    goto :goto_8

    .line 1333
    :pswitch_1d
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->onClickOtaTryAgainButton()V

    goto :goto_8

    .line 1311
    nop

    :pswitch_data_22
    .packed-switch 0x7f0700b2
        :pswitch_d
        :pswitch_3
        :pswitch_11
        :pswitch_15
        :pswitch_3
        :pswitch_9
        :pswitch_3
        :pswitch_19
        :pswitch_1d
    .end packed-switch
.end method

.method public onOtaCloseFailureNotice()V
    .registers 3

    .prologue
    .line 1163
    const-string v0, "onOtaCloseFailureNotice()..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1164
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_17

    .line 1165
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1166
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    .line 1168
    :cond_17
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->otaShowActivateScreen()V

    .line 1169
    return-void
.end method

.method public onOtaCloseSpcNotice()V
    .registers 4

    .prologue
    .line 1127
    const-string v1, "onOtaCloseSpcNotice(), send shutdown intent"

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1128
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1129
    .local v0, shutdown:Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1130
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1131
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1132
    return-void
.end method

.method public onOtaProvisionStatusChanged(Landroid/os/AsyncResult;)V
    .registers 6
    .parameter "r"

    .prologue
    const/4 v3, 0x0

    .line 677
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 678
    .local v0, OtaStatus:[I
    const-string v1, "Provision status event!"

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 679
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOtaProvisionStatusChanged(): status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    invoke-static {v2}, Lcom/android/phone/OtaUtils;->otaProvisionStatusToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 687
    aget v1, v0, v3

    packed-switch v1, :pswitch_data_a0

    .line 730
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOtaProvisionStatusChanged(): Ignoring OtaStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 733
    :cond_52
    :goto_52
    return-void

    .line 689
    :pswitch_53
    const-string v1, "onOtaProvisionStatusChanged(): RETRIES EXCEEDED"

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 690
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->updateOtaspProgress()V

    .line 691
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->otaSpcUptime:J

    .line 692
    iget-boolean v1, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-eqz v1, :cond_6f

    .line 693
    const/16 v1, 0x3c

    invoke-direct {p0, v1}, Lcom/android/phone/OtaUtils;->otaShowSpcErrorNotice(I)V

    goto :goto_52

    .line 695
    :cond_6f
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/phone/OtaUtils;->sendOtaspResult(I)V

    goto :goto_52

    .line 702
    :pswitch_74
    const-string v1, "onOtaProvisionStatusChanged(): DONE, isOtaCallCommitted set to true"

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 704
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    .line 705
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v1, v2, :cond_52

    .line 707
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->updateOtaspProgress()V

    goto :goto_52

    .line 723
    :pswitch_8e
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->getCdmaOtaInCallScreenUiState()Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    move-result-object v1

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v1, v2, :cond_52

    .line 724
    const-string v1, "onOtaProvisionStatusChanged(): change to ProgressScreen"

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 725
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->updateOtaspProgress()V

    goto :goto_52

    .line 687
    nop

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_8e
        :pswitch_53
        :pswitch_8e
        :pswitch_8e
        :pswitch_8e
        :pswitch_8e
        :pswitch_8e
        :pswitch_8e
        :pswitch_74
        :pswitch_8e
        :pswitch_8e
        :pswitch_8e
    .end packed-switch
.end method

.method public onOtaspDisconnect()V
    .registers 2

    .prologue
    .line 739
    const-string v0, "onOtaspDisconnect()..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 743
    iget-boolean v0, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v0, :cond_c

    .line 745
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->updateNonInteractiveOtaSuccessFailure()V

    .line 747
    :cond_c
    return-void
.end method

.method public otaShowActivateScreen()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 811
    const-string v0, "otaShowActivateScreen()..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 812
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowActivationScreen:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_42

    .line 814
    const-string v0, "otaShowActivateScreen(): show activation screen"

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 815
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->isDialerOpened()Z

    move-result v0

    if-nez v0, :cond_37

    .line 816
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaScreenInitialize()V

    .line 817
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v2, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSkipButton:Landroid/widget/Button;

    sget-boolean v0, Lcom/android/phone/OtaUtils;->sIsWizardMode:Z

    if-eqz v0, :cond_40

    move v0, v1

    :goto_26
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 819
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTextActivate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 820
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->callCardOtaButtonsActivate:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 822
    :cond_37
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 828
    :goto_3f
    return-void

    .line 817
    :cond_40
    const/4 v0, 0x4

    goto :goto_26

    .line 825
    :cond_42
    const-string v0, "otaShowActivateScreen(): show home screen"

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 826
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaShowHome()V

    goto :goto_3f
.end method

.method public otaShowProperScreen()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 1232
    const-string v0, "otaShowProperScreen()..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1233
    iget-boolean v0, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v0, :cond_13

    .line 1235
    const-string v0, "OtaUtils"

    const-string v1, "otaShowProperScreen: not interactive!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    :cond_12
    :goto_12
    return-void

    .line 1240
    :cond_13
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->getInCallScreen()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->isForegroundActivity()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "otaShowProperScreen(): InCallScreen in foreground, currentstate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1244
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallPanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_44

    .line 1245
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1247
    :cond_44
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallTouchUi:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4d

    .line 1248
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallTouchUi:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1250
    :cond_4d
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v0, v1, :cond_6a

    .line 1252
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->otaShowActivateScreen()V

    .line 1261
    :cond_5a
    :goto_5a
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-eqz v0, :cond_12

    .line 1262
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->getOtaSpcDisplayTime()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/OtaUtils;->otaShowSpcErrorNotice(I)V

    goto :goto_12

    .line 1253
    :cond_6a
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_LISTENING:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v0, v1, :cond_78

    .line 1255
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaShowListeningScreen()V

    goto :goto_5a

    .line 1256
    :cond_78
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_PROGRESS:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v0, v1, :cond_5a

    .line 1258
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaShowInProgressScreen()V

    goto :goto_5a
.end method

.method public otaShowSuccessFailure()V
    .registers 3

    .prologue
    .line 1028
    const-string v0, "otaShowSuccessFailure()..."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1029
    iget-boolean v0, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v0, :cond_11

    .line 1031
    const-string v0, "OtaUtils"

    const-string v1, "otaShowSuccessFailure: not interactive!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :goto_10
    return-void

    .line 1035
    :cond_11
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaScreenInitialize()V

    .line 1036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "otaShowSuccessFailure(): isOtaCallCommitted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1038
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    if-eqz v0, :cond_41

    .line 1039
    const-string v0, "otaShowSuccessFailure(), show success dialog"

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1040
    invoke-direct {p0}, Lcom/android/phone/OtaUtils;->otaShowProgramSuccessDialog()V

    goto :goto_10

    .line 1042
    :cond_41
    const-string v0, "otaShowSuccessFailure(), show failure dialog"

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1043
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/phone/OtaUtils;->otaShowProgramFailure(I)V

    goto :goto_10
.end method

.method protected readXmlSettings()V
    .registers 7

    .prologue
    .line 1276
    const-string v4, "readXmlSettings()..."

    invoke-static {v4}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1277
    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget-boolean v4, v4, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->configComplete:Z

    if-eqz v4, :cond_e

    .line 1305
    :goto_d
    return-void

    .line 1281
    :cond_e
    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->configComplete:Z

    .line 1282
    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f0a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1284
    .local v2, tmpOtaShowActivationScreen:I
    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iput v2, v4, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowActivationScreen:I

    .line 1285
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readXmlSettings(), otaShowActivationScreen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v5, v5, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowActivationScreen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1288
    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 1290
    .local v3, tmpOtaShowListeningScreen:I
    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iput v3, v4, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowListeningScreen:I

    .line 1291
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readXmlSettings(), otaShowListeningScreen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v5, v5, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowListeningScreen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1294
    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1296
    .local v1, tmpOtaShowActivateFailTimes:I
    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iput v1, v4, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowActivateFailTimes:I

    .line 1297
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readXmlSettings(), otaShowActivateFailTimes = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v5, v5, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowActivateFailTimes:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1300
    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1302
    .local v0, tmpOtaPlaySuccessFailureTone:I
    iget-object v4, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iput v0, v4, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaPlaySuccessFailureTone:I

    .line 1303
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readXmlSettings(), otaPlaySuccessFailureTone = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v5, v5, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaPlaySuccessFailureTone:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_d
.end method

.method protected requestCloseOtaFailureNotice(J)V
    .registers 4
    .parameter "noticeTime"

    .prologue
    .line 1758
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/InCallScreen;->requestCloseOtaFailureNotice(J)V

    .line 1759
    return-void
.end method

.method protected requestCloseSpcErrorNotice(J)V
    .registers 4
    .parameter "noticeTime"

    .prologue
    .line 1762
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/InCallScreen;->requestCloseSpcErrorNotice(J)V

    .line 1763
    return-void
.end method

.method public setCdmaOtaInCallScreenUiState(Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;)V
    .registers 4
    .parameter "state"

    .prologue
    .line 1645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCdmaOtaInCallScreenState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 1646
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    iput-object p1, v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;->state:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    .line 1647
    return-void
.end method

.method protected setOnclickListeners()V
    .registers 4

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaEndButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1527
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0700b2

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSpeakerButton:Landroid/widget/ToggleButton;

    .line 1529
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1530
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0700b4

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaActivateButton:Landroid/widget/Button;

    .line 1532
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaActivateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1533
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0700b5

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSkipButton:Landroid/widget/Button;

    .line 1534
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaSkipButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1535
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0700b9

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaNextButton:Landroid/widget/Button;

    .line 1536
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaNextButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1537
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0700ba

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTryAgainButton:Landroid/widget/Button;

    .line 1539
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$OtaWidgetData;->otaTryAgainButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1540
    return-void
.end method

.method protected setSpeaker(Z)V
    .registers 4
    .parameter "state"

    .prologue
    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSpeaker : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 649
    iget-boolean v0, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v0, :cond_20

    .line 650
    const-string v0, "non-interactive mode, ignoring setSpeaker."

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 664
    :goto_1f
    return-void

    .line 654
    :cond_20
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-ne p1, v0, :cond_2e

    .line 655
    const-string v0, "no change. returning"

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    goto :goto_1f

    .line 659
    :cond_2e
    if-eqz p1, :cond_45

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 661
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->disconnectBluetoothAudio()V

    .line 663
    :cond_45
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_1f
.end method

.method protected updateScreen()V
    .registers 2

    .prologue
    .line 1742
    iget-object v0, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    .line 1743
    return-void
.end method

.method public updateUiWidgets(Lcom/android/phone/InCallScreen;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/android/phone/CallCard;)V
    .registers 8
    .parameter "inCallScreen"
    .parameter "inCallPanel"
    .parameter "inCallTouchUi"
    .parameter "callCard"

    .prologue
    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateUiWidgets()...  mInCallScreen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 251
    iget-boolean v1, p0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v1, :cond_24

    .line 252
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "updateUiWidgets() called in non-interactive mode"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 255
    :cond_24
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_2e

    .line 256
    const-string v1, "updateUiWidgets(): widgets already set up, nothing to do..."

    invoke-static {v1}, Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V

    .line 277
    :goto_2d
    return-void

    .line 260
    :cond_2e
    iput-object p1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 261
    iput-object p2, p0, Lcom/android/phone/OtaUtils;->mInCallPanel:Landroid/view/ViewGroup;

    .line 262
    iput-object p3, p0, Lcom/android/phone/OtaUtils;->mInCallTouchUi:Landroid/view/ViewGroup;

    .line 263
    iput-object p4, p0, Lcom/android/phone/OtaUtils;->mCallCard:Lcom/android/phone/CallCard;

    .line 264
    new-instance v1, Lcom/android/phone/OtaUtils$OtaWidgetData;

    invoke-direct {v1, p0}, Lcom/android/phone/OtaUtils$OtaWidgetData;-><init>(Lcom/android/phone/OtaUtils;)V

    iput-object v1, p0, Lcom/android/phone/OtaUtils;->mOtaWidgetData:Lcom/android/phone/OtaUtils$OtaWidgetData;

    .line 267
    iget-object v1, p0, Lcom/android/phone/OtaUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f07006e

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 268
    .local v0, otaCallCardStub:Landroid/view/ViewStub;
    if-eqz v0, :cond_4d

    .line 272
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 275
    :cond_4d
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->readXmlSettings()V

    .line 276
    invoke-virtual {p0}, Lcom/android/phone/OtaUtils;->initOtaInCallScreen()V

    goto :goto_2d
.end method
