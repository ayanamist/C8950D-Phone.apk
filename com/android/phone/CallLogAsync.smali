.class public Lcom/android/phone/CallLogAsync;
.super Ljava/lang/Object;
.source "CallLogAsync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallLogAsync$1;,
        Lcom/android/phone/CallLogAsync$GetLastOutgoingCallTask;,
        Lcom/android/phone/CallLogAsync$AddCallTask;,
        Lcom/android/phone/CallLogAsync$OnLastOutgoingCallComplete;,
        Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;,
        Lcom/android/phone/CallLogAsync$AddCallArgs;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final IS_CDMA_GSM:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_DSDA:Z = false

.field private static final TAG:Ljava/lang/String; = "CallLogAsync"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 66
    const-string v0, "ro.config.dsds_mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdma_gsm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/CallLogAsync;->IS_CDMA_GSM:Z

    .line 68
    const-string v0, "ro.config.hw_dsda"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/CallLogAsync;->IS_DSDA:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 268
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/android/phone/CallLogAsync;->IS_CDMA_GSM:Z

    return v0
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/android/phone/CallLogAsync;->IS_DSDA:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/CallLogAsync;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/phone/CallLogAsync;->assertUiThread()V

    return-void
.end method

.method private assertUiThread()V
    .registers 3

    .prologue
    .line 300
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 301
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not on the UI thread!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_16
    return-void
.end method


# virtual methods
.method public addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;
    .registers 5
    .parameter "args"

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/android/phone/CallLogAsync;->assertUiThread()V

    .line 200
    new-instance v0, Lcom/android/phone/CallLogAsync$AddCallTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallLogAsync$AddCallTask;-><init>(Lcom/android/phone/CallLogAsync;Lcom/android/phone/CallLogAsync$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/phone/CallLogAsync$AddCallArgs;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/phone/CallLogAsync$AddCallTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public getLastOutgoingCall(Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;)Landroid/os/AsyncTask;
    .registers 5
    .parameter "args"

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/android/phone/CallLogAsync;->assertUiThread()V

    .line 215
    new-instance v0, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallTask;

    iget-object v1, p1, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;->callback:Lcom/android/phone/CallLogAsync$OnLastOutgoingCallComplete;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallTask;-><init>(Lcom/android/phone/CallLogAsync;Lcom/android/phone/CallLogAsync$OnLastOutgoingCallComplete;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method
