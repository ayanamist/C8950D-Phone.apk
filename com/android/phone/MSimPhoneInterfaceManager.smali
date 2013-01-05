.class public Lcom/android/phone/MSimPhoneInterfaceManager;
.super Lcom/android/internal/telephony/ITelephonyMSim$Stub;
.source "MSimPhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MSimPhoneInterfaceManager$1;,
        Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;,
        Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;,
        Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;,
        Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;
    }
.end annotation


# static fields
.field private static final CMD_ANSWER_RINGING_CALL:I = 0x4

.field private static final CMD_CLOSE_CHANNEL:I = 0x10

.field private static final CMD_END_CALL:I = 0x5

.field private static final CMD_EXCHANGE_APDU:I = 0xc

.field private static final CMD_HANDLE_NEIGHBORING_CELL:I = 0x2

.field private static final CMD_HANDLE_PIN_MMI:I = 0x1

.field private static final CMD_INVOKE_OEM_RIL_REQUEST:I = 0x7

.field private static final CMD_OPEN_CHANNEL:I = 0xe

.field private static final CMD_SET_DATA_SUBSCRIPTION:I = 0xa

.field private static final CMD_SILENCE_RINGER:I = 0x6

.field private static final CMD_SIM_IO:I = 0x14

.field private static final DBG:Z = false

.field private static final EVENT_CLOSE_CHANNEL_DONE:I = 0x11

.field private static final EVENT_EXCHANGE_APDU_DONE:I = 0xd

.field private static final EVENT_INVOKE_OEM_RIL_REQUEST:I = 0x8

.field private static final EVENT_NEIGHBORING_CELL_DONE:I = 0x3

.field private static final EVENT_OPEN_CHANNEL_DONE:I = 0xf

.field private static final EVENT_SET_DATA_SUBSCRIPTION_DONE:I = 0xb

.field private static final EVENT_SIM_IO_DONE:I = 0x15

.field private static final EVENT_UNSOL_OEM_HOOK_EXT_APP:I = 0x9

.field private static final LOG_TAG:Ljava/lang/String; = "MSimPhoneInterfaceManager"

.field private static mMmsDsSetSub:I

.field private static sInstance:Lcom/android/phone/MSimPhoneInterfaceManager;


# instance fields
.field private isInitInstanceID:Z

.field private lastError:I

.field mApp:Lcom/android/phone/PhoneApp;

.field mCM:Lcom/android/internal/telephony/CallManager;

.field private mEapInstanceID:I

.field mMainThreadHandler:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;

.field mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 104
    const/4 v0, -0x1

    sput v0, Lcom/android/phone/MSimPhoneInterfaceManager;->mMmsDsSetSub:I

    return-void
.end method

.method private constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;)V
    .registers 7
    .parameter "app"
    .parameter "phone"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 504
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyMSim$Stub;-><init>()V

    .line 108
    iput v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mEapInstanceID:I

    .line 109
    iput-boolean v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->isInitInstanceID:Z

    .line 505
    iput-object p1, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    .line 506
    iput-object p2, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 507
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 508
    new-instance v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;-><init>(Lcom/android/phone/MSimPhoneInterfaceManager;Lcom/android/phone/MSimPhoneInterfaceManager$1;)V

    iput-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;

    .line 509
    const-string v0, "MSimPhoneInterfaceManager"

    const-string v1, " Registering for UNSOL OEM HOOK Responses to deliver external apps"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setOnUnsolOemHookExtApp(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 511
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->publish()V

    .line 514
    const-string v0, "true"

    const-string v1, "ro.config.hw_eapsim"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    const-string v0, "true"

    const-string v1, "ro.config.hw_smartcardservice"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 517
    :cond_4f
    new-instance v0, Lcom/android/phone/MSimPhoneInterfaceManagerAPDU;

    invoke-direct {v0, p0}, Lcom/android/phone/MSimPhoneInterfaceManagerAPDU;-><init>(Lcom/android/phone/MSimPhoneInterfaceManager;)V

    .line 520
    :cond_54
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MSimPhoneInterfaceManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->answerRingingCallInternal()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/MSimPhoneInterfaceManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->silenceRingerInternal()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/MSimPhoneInterfaceManager;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/MSimPhoneInterfaceManager;IIIIILjava/lang/String;Landroid/os/Message;)V
    .registers 8
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 71
    invoke-direct/range {p0 .. p7}, Lcom/android/phone/MSimPhoneInterfaceManager;->exchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/phone/MSimPhoneInterfaceManager;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->lastError:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/phone/MSimPhoneInterfaceManager;IIIIIILjava/lang/String;Landroid/os/Message;)V
    .registers 9
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"

    .prologue
    .line 71
    invoke-direct/range {p0 .. p8}, Lcom/android/phone/MSimPhoneInterfaceManager;->exchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/MSimPhoneInterfaceManager;Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MSimPhoneInterfaceManager;->openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/MSimPhoneInterfaceManager;ILandroid/os/Message;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MSimPhoneInterfaceManager;->closeLogicalChannel(ILandroid/os/Message;)V

    return-void
.end method

.method private answerRingingCallInternal()V
    .registers 6

    .prologue
    .line 657
    iget-object v3, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    .line 658
    .local v2, hasRingingCall:Z
    if-eqz v2, :cond_23

    .line 659
    iget-object v3, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 660
    .local v0, hasActiveCall:Z
    iget-object v3, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    .line 661
    .local v1, hasHoldingCall:Z
    if-eqz v0, :cond_24

    if-eqz v1, :cond_24

    .line 667
    iget-object v3, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v4, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    .line 677
    .end local v0           #hasActiveCall:Z
    .end local v1           #hasHoldingCall:Z
    :cond_23
    :goto_23
    return-void

    .line 672
    .restart local v0       #hasActiveCall:Z
    .restart local v1       #hasHoldingCall:Z
    :cond_24
    iget-object v3, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_23
.end method

.method private closeLogicalChannel(ILandroid/os/Message;)V
    .registers 10
    .parameter "channel"
    .parameter "onCompleted"

    .prologue
    .line 1311
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/UiccManager;->getInstance()Lcom/android/internal/telephony/UiccManager;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mEapInstanceID:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/UiccManager;->getUiccCard(I)Lcom/android/internal/telephony/UiccCard;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "closeLogicalChannel"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/os/Message;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1313
    .local v1, method:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_3d

    .line 1314
    invoke-static {}, Lcom/android/internal/telephony/UiccManager;->getInstance()Lcom/android/internal/telephony/UiccManager;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mEapInstanceID:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/UiccManager;->getUiccCard(I)Lcom/android/internal/telephony/UiccCard;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3d} :catch_3e

    .line 1319
    .end local v1           #method:Ljava/lang/reflect/Method;
    :cond_3d
    :goto_3d
    return-void

    .line 1316
    :catch_3e
    move-exception v0

    .line 1317
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "MSimPhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure reflect method closeLogicalChannel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d
.end method

.method private createTelUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "number"

    .prologue
    .line 1014
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1015
    const/4 v1, 0x0

    .line 1020
    :goto_7
    return-object v1

    .line 1018
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1019
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method private enforceCallPermission()V
    .registers 4

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CALL_PHONE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    return-void
.end method

.method private enforceModifyPermission()V
    .registers 4

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    return-void
.end method

.method private enforceReadPermission()V
    .registers 4

    .prologue
    .line 991
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    return-void
.end method

.method private exchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .registers 16
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "onCompleted"

    .prologue
    .line 1285
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/UiccManager;->getInstance()Lcom/android/internal/telephony/UiccManager;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mEapInstanceID:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/UiccManager;->getUiccCard(I)Lcom/android/internal/telephony/UiccCard;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "exchangeAPDU"

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-class v6, Landroid/os/Message;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1288
    .local v1, method:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_83

    .line 1289
    invoke-static {}, Lcom/android/internal/telephony/UiccManager;->getInstance()Lcom/android/internal/telephony/UiccManager;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mEapInstanceID:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/UiccManager;->getUiccCard(I)Lcom/android/internal/telephony/UiccCard;

    move-result-object v2

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    aput-object p7, v3, v4

    const/4 v4, 0x7

    aput-object p8, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_83} :catch_84

    .line 1295
    .end local v1           #method:Ljava/lang/reflect/Method;
    :cond_83
    :goto_83
    return-void

    .line 1292
    :catch_84
    move-exception v0

    .line 1293
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "MSimPhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure reflect method exchangeAPDU: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83
.end method

.method private exchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V
    .registers 15
    .parameter "fileID"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "pathID"
    .parameter "onComplete"

    .prologue
    .line 1269
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/UiccManager;->getInstance()Lcom/android/internal/telephony/UiccManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccManager;->getUiccCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "exchangeSimIO"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-class v6, Landroid/os/Message;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1272
    .local v1, method:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_6f

    .line 1273
    iget-object v2, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    aput-object p6, v3, v4

    const/4 v4, 0x6

    aput-object p7, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6f} :catch_70

    .line 1279
    .end local v1           #method:Ljava/lang/reflect/Method;
    :cond_6f
    :goto_6f
    return-void

    .line 1276
    :catch_70
    move-exception v0

    .line 1277
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "MSimPhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure reflect method exchangeSimIO: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f
.end method

.method private getPhone(I)Lcom/android/internal/telephony/Phone;
    .registers 3
    .parameter "subscription"

    .prologue
    .line 531
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method static init(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;)Lcom/android/phone/MSimPhoneInterfaceManager;
    .registers 6
    .parameter "app"
    .parameter "phone"

    .prologue
    .line 493
    const-class v1, Lcom/android/phone/PhoneInterfaceManager;

    monitor-enter v1

    .line 494
    :try_start_3
    sget-object v0, Lcom/android/phone/MSimPhoneInterfaceManager;->sInstance:Lcom/android/phone/MSimPhoneInterfaceManager;

    if-nez v0, :cond_12

    .line 495
    new-instance v0, Lcom/android/phone/MSimPhoneInterfaceManager;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/phone/MSimPhoneInterfaceManager;->sInstance:Lcom/android/phone/MSimPhoneInterfaceManager;

    .line 499
    :goto_e
    sget-object v0, Lcom/android/phone/MSimPhoneInterfaceManager;->sInstance:Lcom/android/phone/MSimPhoneInterfaceManager;

    monitor-exit v1

    return-object v0

    .line 497
    :cond_12
    const-string v0, "MSimPhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/MSimPhoneInterfaceManager;->sInstance:Lcom/android/phone/MSimPhoneInterfaceManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 500
    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method private intiEapInstanceID()Z
    .registers 8

    .prologue
    const/4 v5, 0x1

    .line 1379
    iget-boolean v6, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->isInitInstanceID:Z

    if-eqz v6, :cond_6

    .line 1403
    :goto_5
    return v5

    .line 1383
    :cond_6
    const/4 v1, 0x0

    .line 1384
    .local v1, p:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 1385
    .local v4, state:Ljava/lang/String;
    const-string v6, "gsm.sim.state"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1387
    .local v3, prop:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    .line 1389
    .local v2, phoneCount:I
    if-eqz v3, :cond_1e

    .line 1390
    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1394
    :cond_1e
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1f
    if-ge v0, v2, :cond_39

    .line 1395
    aget-object v4, v1, v0

    .line 1396
    const-string v6, "READY"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_36

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->getActivePhoneType(I)I

    move-result v6

    if-ne v5, v6, :cond_36

    .line 1398
    iput v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mEapInstanceID:I

    .line 1399
    iput-boolean v5, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->isInitInstanceID:Z

    goto :goto_5

    .line 1394
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 1403
    :cond_39
    const/4 v5, 0x0

    goto :goto_5
.end method

.method private log(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 1024
    const-string v0, "MSimPhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneIntfMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    return-void
.end method

.method private openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V
    .registers 10
    .parameter "AID"
    .parameter "onCompleted"

    .prologue
    .line 1299
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/UiccManager;->getInstance()Lcom/android/internal/telephony/UiccManager;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mEapInstanceID:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/UiccManager;->getUiccCard(I)Lcom/android/internal/telephony/UiccCard;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "openLogicalChannel"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/os/Message;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1301
    .local v1, method:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_39

    .line 1302
    invoke-static {}, Lcom/android/internal/telephony/UiccManager;->getInstance()Lcom/android/internal/telephony/UiccManager;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mEapInstanceID:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/UiccManager;->getUiccCard(I)Lcom/android/internal/telephony/UiccCard;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    .line 1307
    .end local v1           #method:Ljava/lang/reflect/Method;
    :cond_39
    :goto_39
    return-void

    .line 1304
    :catch_3a
    move-exception v0

    .line 1305
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "MSimPhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure reflect method openLogicalChannel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method

.method private publish()V
    .registers 2

    .prologue
    .line 525
    const-string v0, "phone_msim"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 526
    return-void
.end method

.method private sendRequest(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .parameter "command"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 450
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v3}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_14

    .line 451
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "This method will deadlock if called from the main thread."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 454
    :cond_14
    new-instance v1, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    invoke-direct {v1, p2, p3}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 455
    .local v1, request:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    iget-object v2, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v2, p1, v1}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 456
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 459
    monitor-enter v1

    .line 460
    :goto_23
    :try_start_23
    iget-object v2, v1, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_23 .. :try_end_25} :catchall_31

    if-nez v2, :cond_2d

    .line 462
    :try_start_27
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_31
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_23

    .line 463
    :catch_2b
    move-exception v2

    goto :goto_23

    .line 467
    :cond_2d
    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_31

    .line 468
    iget-object v2, v1, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    return-object v2

    .line 467
    :catchall_31
    move-exception v2

    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v2
.end method

.method private sendRequestAsync(I)V
    .registers 3
    .parameter "command"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->sendEmptyMessage(I)Z

    .line 486
    return-void
.end method

.method private showCallScreenInternal(ZZ)Z
    .registers 11
    .parameter "specifyInitialDialpadState"
    .parameter "initialDialpadState"

    .prologue
    const/4 v5, 0x0

    .line 580
    sget-boolean v6, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v6, :cond_6

    .line 610
    :cond_5
    :goto_5
    return v5

    .line 584
    :cond_6
    iget-object v6, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getPhoneInCall()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v4

    .line 585
    .local v4, sub:I
    invoke-virtual {p0, v4}, Lcom/android/phone/MSimPhoneInterfaceManager;->isIdle(I)Z

    move-result v6

    if-nez v6, :cond_5

    .line 589
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 592
    .local v0, callingId:J
    if-eqz p1, :cond_2c

    .line 593
    :try_start_1c
    invoke-static {p2}, Lcom/android/phone/PhoneApp;->createInCallIntent(Z)Landroid/content/Intent;
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_4f

    move-result-object v3

    .line 598
    .local v3, intent:Landroid/content/Intent;
    :goto_20
    :try_start_20
    iget-object v5, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_4f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_20 .. :try_end_27} :catch_35

    .line 608
    :goto_27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 610
    const/4 v5, 0x1

    goto :goto_5

    .line 595
    .end local v3           #intent:Landroid/content/Intent;
    :cond_2c
    :try_start_2c
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/phone/PhoneApp;->createInCallIntent(I)Landroid/content/Intent;

    move-result-object v3

    .restart local v3       #intent:Landroid/content/Intent;
    goto :goto_20

    .line 599
    :catch_35
    move-exception v2

    .line 604
    .local v2, e:Landroid/content/ActivityNotFoundException;
    const-string v5, "MSimPhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showCallScreenInternal: transition to InCallScreen failed; intent = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_2c .. :try_end_4e} :catchall_4f

    goto :goto_27

    .line 608
    .end local v2           #e:Landroid/content/ActivityNotFoundException;
    .end local v3           #intent:Landroid/content/Intent;
    :catchall_4f
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private silenceRingerInternal()V
    .registers 3

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 700
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    .line 702
    :cond_1b
    return-void
.end method


# virtual methods
.method public answerRingingCall(I)V
    .registers 3
    .parameter "subscription"

    .prologue
    .line 639
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 640
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->sendRequestAsync(I)V

    .line 641
    return-void
.end method

.method public broadcastUnsolOemHookIntent([B)V
    .registers 5
    .parameter "payload"

    .prologue
    .line 472
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 473
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "payload"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 474
    const-string v1, "MSimPhoneInterfaceManager"

    const-string v2, "Broadcasting intent ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v1, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 476
    return-void
.end method

.method public call(Ljava/lang/String;I)V
    .registers 7
    .parameter "number"
    .parameter "subscription"

    .prologue
    .line 565
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceCallPermission()V

    .line 567
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->createTelUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 568
    .local v1, url:Ljava/lang/String;
    if-nez v1, :cond_a

    .line 576
    :goto_9
    return-void

    .line 572
    :cond_a
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 573
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "subscription"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 574
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 575
    iget-object v2, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_9
.end method

.method public cancelMissedCallsNotification(I)V
    .registers 3
    .parameter "subscription"

    .prologue
    .line 904
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 905
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    check-cast v0, Lcom/android/phone/MSimNotificationMgr;

    check-cast v0, Lcom/android/phone/MSimNotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/MSimNotificationMgr;->cancelMissedCallNotification()V

    .line 906
    return-void
.end method

.method public closeIccLogicalChannel(I)Z
    .registers 6
    .parameter "channel"

    .prologue
    .line 1361
    const-string v1, "MSimPhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "> closeIccLogicalChannel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->intiEapInstanceID()Z

    move-result v1

    if-nez v1, :cond_26

    .line 1363
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "No available SIM of authentication!"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1365
    :cond_26
    const/16 v1, 0x10

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/phone/MSimPhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1367
    .local v0, err:Ljava/lang/Integer;
    const-string v1, "MSimPhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "< closeIccLogicalChannel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_54

    .line 1369
    const/4 v1, 0x1

    .line 1370
    :goto_53
    return v1

    :cond_54
    const/4 v1, 0x0

    goto :goto_53
.end method

.method public dial(Ljava/lang/String;I)V
    .registers 8
    .parameter "number"
    .parameter "subscription"

    .prologue
    .line 544
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->createTelUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 545
    .local v2, url:Ljava/lang/String;
    if-nez v2, :cond_7

    .line 557
    :cond_6
    :goto_6
    return-void

    .line 550
    :cond_7
    iget-object v3, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    .line 551
    .local v1, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v3, :cond_6

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v3, :cond_6

    .line 552
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 553
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 554
    const-string v3, "subscription"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 555
    iget-object v3, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_6
.end method

.method public disableApnType(Ljava/lang/String;)I
    .registers 3
    .parameter "type"

    .prologue
    .line 882
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 883
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getDataSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public disableDataConnectivity()Z
    .registers 4

    .prologue
    .line 887
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 888
    iget-object v1, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 890
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 891
    const/4 v1, 0x1

    return v1
.end method

.method public disableLocationUpdates(I)V
    .registers 5
    .parameter "subscription"

    .prologue
    .line 945
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONTROL_LOCATION_UPDATES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->disableLocationUpdates()V

    .line 948
    return-void
.end method

.method public enableApnType(Ljava/lang/String;)I
    .registers 3
    .parameter "type"

    .prologue
    .line 877
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 878
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getDataSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->enableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public enableDataConnectivity()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 869
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 870
    iget-object v1, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 872
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 873
    return v3
.end method

.method public enableLocationUpdates(I)V
    .registers 5
    .parameter "subscription"

    .prologue
    .line 939
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONTROL_LOCATION_UPDATES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->enableLocationUpdates()V

    .line 942
    return-void
.end method

.method public endCall(I)Z
    .registers 5
    .parameter "subscription"

    .prologue
    .line 630
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceCallPermission()V

    .line 631
    const/4 v0, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/MSimPhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public exchangeIccAPDU(IIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 20
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    .line 1323
    const-string v1, "MSimPhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "> exchangeAPDU "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->intiEapInstanceID()Z

    move-result v1

    if-nez v1, :cond_6a

    .line 1326
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "No available SIM of authentication!"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1328
    :cond_6a
    const/16 v11, 0xc

    new-instance v1, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;-><init>(IIIIIILjava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p0, v11, v1, v2}, Lcom/android/phone/MSimPhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IccIoResult;

    .line 1332
    .local v9, response:Lcom/android/internal/telephony/IccIoResult;
    const-string v1, "MSimPhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "< exchangeAPDU "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    iget v1, v9, Lcom/android/internal/telephony/IccIoResult;->sw1:I

    shl-int/lit8 v1, v1, 0x8

    iget v2, v9, Lcom/android/internal/telephony/IccIoResult;->sw2:I

    add-int/2addr v1, v2

    const/high16 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 1335
    .local v10, s:Ljava/lang/String;
    iget-object v1, v9, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    if-eqz v1, :cond_c9

    .line 1336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v9, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1337
    :cond_c9
    return-object v10
.end method

.method public getActivePhoneType()I
    .registers 2

    .prologue
    .line 1028
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->getActivePhoneType(I)I

    move-result v0

    return v0
.end method

.method public getActivePhoneType(I)I
    .registers 3
    .parameter "subscription"

    .prologue
    .line 1032
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getCallState(I)I
    .registers 3
    .parameter "subscription"

    .prologue
    .line 909
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(Lcom/android/internal/telephony/Phone$State;)I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconIndex()I
    .registers 2

    .prologue
    .line 1072
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->getCdmaEriIconIndex(I)I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconIndex(I)I
    .registers 3
    .parameter "subscription"

    .prologue
    .line 1076
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode()I
    .registers 2

    .prologue
    .line 1085
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->getCdmaEriIconMode(I)I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode(I)I
    .registers 3
    .parameter "subscription"

    .prologue
    .line 1089
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1096
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->getCdmaEriText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaEriText(I)Ljava/lang/String;
    .registers 3
    .parameter "subscription"

    .prologue
    .line 1100
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellLocation(I)Landroid/os/Bundle;
    .registers 8
    .parameter "subscription"

    .prologue
    const/4 v5, 0x0

    .line 924
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_b} :catch_1c

    .line 933
    :goto_b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 934
    .local v0, data:Landroid/os/Bundle;
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 935
    return-object v0

    .line 926
    .end local v0           #data:Landroid/os/Bundle;
    :catch_1c
    move-exception v1

    .line 930
    .local v1, e:Ljava/lang/SecurityException;
    iget-object v2, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public getDataActivity()I
    .registers 2

    .prologue
    .line 918
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getDataSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataActivityState(Lcom/android/internal/telephony/Phone$DataActivityState;)I

    move-result v0

    return v0
.end method

.method public getDataState()I
    .registers 2

    .prologue
    .line 913
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getDataSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/Phone$DataState;)I

    move-result v0

    return v0
.end method

.method public getDefaultSubscription()I
    .registers 2

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getDefaultSubscription()I

    move-result v0

    return v0
.end method

.method public getIccPin1RetryCount(I)I
    .registers 3
    .parameter "subscription"

    .prologue
    .line 977
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccPin1RetryCount()I

    move-result v0

    return v0
.end method

.method public getLastError()I
    .registers 2

    .prologue
    .line 1374
    iget v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->lastError:I

    return v0
.end method

.method public getLteOnCdmaMode(I)I
    .registers 3
    .parameter "subscription"

    .prologue
    .line 1247
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    return v0
.end method

.method public getMmsAutoSetDataSubscription()I
    .registers 4

    .prologue
    .line 1224
    const-string v0, "DSMMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMmsAutoSetDataSubscription() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/MSimPhoneInterfaceManager;->mMmsDsSetSub:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    sget v0, Lcom/android/phone/MSimPhoneInterfaceManager;->mMmsDsSetSub:I

    return v0
.end method

.method public getNeighboringCellInfo(I)Ljava/util/List;
    .registers 9
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 953
    :try_start_1
    iget-object v3, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_b} :catch_18

    .line 964
    :goto_b
    const/4 v1, 0x0

    .line 967
    .local v1, cells:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_f
    invoke-direct {p0, v3, v4, v5}, Lcom/android/phone/MSimPhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_17} :catch_23

    .line 973
    :goto_17
    return-object v1

    .line 955
    .end local v1           #cells:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    :catch_18
    move-exception v2

    .line 960
    .local v2, e:Ljava/lang/SecurityException;
    iget-object v3, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 969
    .end local v2           #e:Ljava/lang/SecurityException;
    .restart local v1       #cells:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    :catch_23
    move-exception v2

    .line 970
    .local v2, e:Ljava/lang/RuntimeException;
    const-string v3, "MSimPhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNeighboringCellInfo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method public getNetworkType()I
    .registers 2

    .prologue
    .line 1128
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->getNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getNetworkType(I)I
    .registers 4
    .parameter "subscription"

    .prologue
    .line 1135
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    .line 1136
    .local v0, radiotech:I
    packed-switch v0, :pswitch_data_34

    .line 1167
    const/4 v1, 0x0

    :goto_10
    return v1

    .line 1138
    :pswitch_11
    const/4 v1, 0x1

    goto :goto_10

    .line 1140
    :pswitch_13
    const/4 v1, 0x2

    goto :goto_10

    .line 1142
    :pswitch_15
    const/4 v1, 0x3

    goto :goto_10

    .line 1144
    :pswitch_17
    const/16 v1, 0x8

    goto :goto_10

    .line 1146
    :pswitch_1a
    const/16 v1, 0x9

    goto :goto_10

    .line 1148
    :pswitch_1d
    const/16 v1, 0xa

    goto :goto_10

    .line 1151
    :pswitch_20
    const/4 v1, 0x4

    goto :goto_10

    .line 1153
    :pswitch_22
    const/4 v1, 0x7

    goto :goto_10

    .line 1155
    :pswitch_24
    const/4 v1, 0x5

    goto :goto_10

    .line 1157
    :pswitch_26
    const/4 v1, 0x6

    goto :goto_10

    .line 1159
    :pswitch_28
    const/16 v1, 0xc

    goto :goto_10

    .line 1161
    :pswitch_2b
    const/16 v1, 0xe

    goto :goto_10

    .line 1163
    :pswitch_2e
    const/16 v1, 0xd

    goto :goto_10

    .line 1165
    :pswitch_31
    const/16 v1, 0xf

    goto :goto_10

    .line 1136
    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_11
        :pswitch_13
        :pswitch_15
        :pswitch_20
        :pswitch_20
        :pswitch_22
        :pswitch_24
        :pswitch_26
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
    .end packed-switch
.end method

.method public getPreferredDataSubscription()I
    .registers 2

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getDataSubscription()I

    move-result v0

    return v0
.end method

.method public getPreferredVoiceSubscription()I
    .registers 2

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getVoiceSubscription()I

    move-result v0

    return v0
.end method

.method public getVoiceMessageCount()I
    .registers 2

    .prologue
    .line 1114
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->getVoiceMessageCount(I)I

    move-result v0

    return v0
.end method

.method public getVoiceMessageCount(I)I
    .registers 3
    .parameter "subscription"

    .prologue
    .line 1121
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v0

    return v0
.end method

.method public handlePinMmi(Ljava/lang/String;I)Z
    .registers 5
    .parameter "dialString"
    .parameter "subscription"

    .prologue
    .line 899
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 900
    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/phone/MSimPhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasIccCard()Z
    .registers 2

    .prologue
    .line 1175
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public hasIccCard(I)Z
    .registers 3
    .parameter "subscription"

    .prologue
    .line 1182
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->hasIccCard()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .registers 2

    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getDataSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible()Z

    move-result v0

    return v0
.end method

.method public isIdle(I)Z
    .registers 4
    .parameter "subscription"

    .prologue
    .line 713
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isOffhook(I)Z
    .registers 4
    .parameter "subscription"

    .prologue
    .line 705
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isRadioOn(I)Z
    .registers 4
    .parameter "subscription"

    .prologue
    .line 852
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public isRinging(I)Z
    .registers 4
    .parameter "subscription"

    .prologue
    .line 709
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isSimPinEnabled(I)Z
    .registers 3
    .parameter "subscription"

    .prologue
    .line 717
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceReadPermission()V

    .line 718
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    check-cast v0, Lcom/android/phone/MSimPhoneApp;

    invoke-virtual {v0, p1}, Lcom/android/phone/MSimPhoneApp;->isSimPinEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isSimPukLocked(I)Z
    .registers 3
    .parameter "subscription"

    .prologue
    .line 722
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceReadPermission()V

    .line 723
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    check-cast v0, Lcom/android/phone/MSimPhoneApp;

    invoke-virtual {v0, p1}, Lcom/android/phone/MSimPhoneApp;->isSimPukLocked(I)Z

    move-result v0

    return v0
.end method

.method public needsOtaServiceProvisioning()Z
    .registers 2

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0
.end method

.method public openIccLogicalChannel(Ljava/lang/String;)I
    .registers 6
    .parameter "AID"

    .prologue
    .line 1351
    const-string v1, "MSimPhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "> openIccLogicalChannel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->intiEapInstanceID()Z

    move-result v1

    if-nez v1, :cond_26

    .line 1353
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "No available SIM of authentication!"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1355
    :cond_26
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Lcom/android/phone/MSimPhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1356
    .local v0, channel:Ljava/lang/Integer;
    const-string v1, "MSimPhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "< openIccLogicalChannel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public sendOemRilRequestRaw([B[B)I
    .registers 12
    .parameter "request"
    .parameter "response"

    .prologue
    .line 1036
    const/4 v5, 0x0

    .line 1040
    .local v5, returnValue:I
    const/4 v6, 0x7

    const/4 v7, 0x0

    :try_start_3
    invoke-direct {p0, v6, p1, v7}, Lcom/android/phone/MSimPhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/AsyncResult;

    .line 1041
    .local v4, result:Landroid/os/AsyncResult;
    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_50

    .line 1042
    const/4 v5, 0x0

    .line 1043
    iget-object v6, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_4f

    .line 1044
    iget-object v6, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v3, v0

    .line 1045
    .local v3, responseData:[B
    array-length v6, v3

    array-length v7, p2

    if-le v6, v7, :cond_48

    .line 1046
    const-string v6, "MSimPhoneInterfaceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Buffer to copy response too small: Response length is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "bytes. Buffer Size is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "bytes."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    :cond_48
    const/4 v6, 0x0

    const/4 v7, 0x0

    array-length v8, v3

    invoke-static {v3, v6, p2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1051
    array-length v5, v3

    .line 1065
    .end local v3           #responseData:[B
    .end local v4           #result:Landroid/os/AsyncResult;
    :cond_4f
    :goto_4f
    return v5

    .line 1055
    .restart local v4       #result:Landroid/os/AsyncResult;
    :cond_50
    iget-object v2, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    .line 1056
    .local v2, ex:Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I
    :try_end_5b
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_5b} :catch_61

    move-result v5

    .line 1057
    if-lez v5, :cond_4f

    mul-int/lit8 v5, v5, -0x1

    goto :goto_4f

    .line 1059
    .end local v2           #ex:Lcom/android/internal/telephony/CommandException;
    .end local v4           #result:Landroid/os/AsyncResult;
    :catch_61
    move-exception v1

    .line 1060
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v6, "MSimPhoneInterfaceManager"

    const-string v7, "sendOemRilRequestRaw: Runtime Exception"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v5

    .line 1062
    if-lez v5, :cond_4f

    mul-int/lit8 v5, v5, -0x1

    goto :goto_4f
.end method

.method public setDataReadinessChecks(ZZZ)V
    .registers 6
    .parameter "checkConnectivity"
    .parameter "checkSubscription"
    .parameter "tryDataCalls"

    .prologue
    .line 1261
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 1262
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPreferredDataSubscription()I

    move-result v0

    .line 1263
    .local v0, subscription:I
    invoke-direct {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setDataReadinessChecks(ZZZ)V

    .line 1264
    return-void
.end method

.method public setMmsAutoSetDataSubscription(I)Z
    .registers 5
    .parameter "subscription"

    .prologue
    .line 1232
    const-string v0, "DSMMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMmsAutoSetDataSubscription() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    sput p1, Lcom/android/phone/MSimPhoneInterfaceManager;->mMmsDsSetSub:I

    .line 1234
    const/4 v0, 0x1

    return v0
.end method

.method public setPreferredDataSubscription(I)Z
    .registers 5
    .parameter "subscription"

    .prologue
    .line 1216
    const/16 v0, 0xa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/MSimPhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setRadio(ZI)Z
    .registers 6
    .parameter "turnOn"
    .parameter "subscription"

    .prologue
    const/4 v1, 0x1

    .line 861
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 862
    invoke-direct {p0, p2}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1a

    move v0, v1

    :goto_14
    if-eq v0, p1, :cond_19

    .line 863
    invoke-virtual {p0, p2}, Lcom/android/phone/MSimPhoneInterfaceManager;->toggleRadioOnOff(I)V

    .line 865
    :cond_19
    return v1

    .line 862
    :cond_1a
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public showCallScreen()Z
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 615
    invoke-direct {p0, v0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->showCallScreenInternal(ZZ)Z

    move-result v0

    return v0
.end method

.method public showCallScreenWithDialpad(Z)Z
    .registers 3
    .parameter "showDialpad"

    .prologue
    .line 622
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->showCallScreenInternal(ZZ)Z

    move-result v0

    return v0
.end method

.method public silenceRinger()V
    .registers 2

    .prologue
    .line 686
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 687
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->sendRequestAsync(I)V

    .line 688
    return-void
.end method

.method public supplyPin(Ljava/lang/String;I)Z
    .registers 4
    .parameter "pin"
    .parameter "subscription"

    .prologue
    .line 727
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/MSimPhoneInterfaceManager;->supplyPinReportResult(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public supplyPinReportResult(Ljava/lang/String;I)I
    .registers 5
    .parameter "pin"
    .parameter "subscription"

    .prologue
    .line 732
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 733
    new-instance v0, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;

    invoke-direct {p0, p2}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 734
    .local v0, checkSimPin:Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;
    invoke-virtual {v0}, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;->start()V

    .line 735
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;->unlockSim(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5
    .parameter "puk"
    .parameter "pin"
    .parameter "subscription"

    .prologue
    .line 739
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/phone/MSimPhoneInterfaceManager;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6
    .parameter "puk"
    .parameter "pin"
    .parameter "subscription"

    .prologue
    .line 744
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 745
    new-instance v0, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;

    invoke-direct {p0, p3}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 746
    .local v0, checkSimPuk:Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;
    invoke-virtual {v0}, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;->start()V

    .line 747
    invoke-virtual {v0, p1, p2}, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;->unlockSim(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public toggleRadioOnOff(I)V
    .registers 4
    .parameter "subscription"

    .prologue
    .line 856
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 857
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->isRadioOn(I)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_e
    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 858
    return-void

    .line 857
    :cond_12
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public transmitIccBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    .registers 15
    .parameter "cla"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    .line 1342
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/MSimPhoneInterfaceManager;->exchangeIccAPDU(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    .line 1347
    invoke-virtual/range {p0 .. p7}, Lcom/android/phone/MSimPhoneInterfaceManager;->exchangeIccAPDU(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transmitIccSimIO(IIIIILjava/lang/String;)[B
    .registers 20
    .parameter "fileID"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "filePath"

    .prologue
    .line 1409
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x404

    if-eq v1, v2, :cond_10

    .line 1410
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Smartcard API may access UICC"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1411
    :cond_10
    const-string v1, "MSimPhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exchange SIM_IO "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    const/16 v12, 0x14

    new-instance v1, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;

    const/4 v4, -0x1

    move v2, p1

    move v3, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/phone/MSimPhoneInterfaceManager$IccAPDUArgument;-><init>(IIIIIILjava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p0, v12, v1, v2}, Lcom/android/phone/MSimPhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/IccIoResult;

    .line 1417
    .local v10, response:Lcom/android/internal/telephony/IccIoResult;
    const-string v1, "MSimPhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exchange SIM_IO [R]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    const/4 v11, 0x0

    .local v11, result:[B
    const/4 v9, 0x2

    .line 1419
    .local v9, length:I
    iget-object v1, v10, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    if-eqz v1, :cond_d1

    .line 1420
    iget-object v1, v10, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    array-length v1, v1

    add-int/lit8 v9, v1, 0x2

    .line 1421
    new-array v11, v9, [B

    .line 1422
    iget-object v1, v10, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, v10, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    array-length v4, v4

    invoke-static {v1, v2, v11, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1424
    :goto_aa
    const-string v1, "MSimPhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exchange SIM_IO [L] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    add-int/lit8 v1, v9, -0x1

    iget v2, v10, Lcom/android/internal/telephony/IccIoResult;->sw2:I

    int-to-byte v2, v2

    aput-byte v2, v11, v1

    .line 1426
    add-int/lit8 v1, v9, -0x2

    iget v2, v10, Lcom/android/internal/telephony/IccIoResult;->sw1:I

    int-to-byte v2, v2

    aput-byte v2, v11, v1

    .line 1427
    return-object v11

    .line 1423
    :cond_d1
    new-array v11, v9, [B

    goto :goto_aa
.end method

.method public updateServiceLocation(I)V
    .registers 3
    .parameter "subscription"

    .prologue
    .line 848
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateServiceLocation()V

    .line 849
    return-void
.end method
