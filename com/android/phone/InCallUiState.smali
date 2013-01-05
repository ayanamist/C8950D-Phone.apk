.class public Lcom/android/phone/InCallUiState;
.super Ljava/lang/Object;
.source "InCallUiState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InCallUiState$ProgressIndicationType;,
        Lcom/android/phone/InCallUiState$InCallScreenMode;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "InCallUiState"

.field private static sInstance:Lcom/android/phone/InCallUiState;


# instance fields
.field dialpadDigits:Ljava/lang/String;

.field inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

.field latestActiveCallOrigin:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPendingCallStatusCode:Lcom/android/phone/Constants$CallStatusCode;

.field needToShowCallLostDialog:Z

.field private progressIndication:Lcom/android/phone/InCallUiState$ProgressIndicationType;

.field providerAddress:Ljava/lang/String;

.field providerGatewayUri:Landroid/net/Uri;

.field providerIcon:Landroid/graphics/drawable/Drawable;

.field providerLabel:Ljava/lang/CharSequence;

.field providerOverlayVisible:Z

.field showDialpad:Z


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 134
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    iput-object v0, p0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    .line 211
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    iput-object v0, p0, Lcom/android/phone/InCallUiState;->mPendingCallStatusCode:Lcom/android/phone/Constants$CallStatusCode;

    .line 318
    sget-object v0, Lcom/android/phone/InCallUiState$ProgressIndicationType;->NONE:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    iput-object v0, p0, Lcom/android/phone/InCallUiState;->progressIndication:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    .line 94
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 134
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    iput-object v0, p0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    .line 211
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    iput-object v0, p0, Lcom/android/phone/InCallUiState;->mPendingCallStatusCode:Lcom/android/phone/Constants$CallStatusCode;

    .line 318
    sget-object v0, Lcom/android/phone/InCallUiState$ProgressIndicationType;->NONE:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    iput-object v0, p0, Lcom/android/phone/InCallUiState;->progressIndication:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    .line 87
    iput-object p1, p0, Lcom/android/phone/InCallUiState;->mContext:Landroid/content/Context;

    .line 88
    return-void
.end method

.method static init(Landroid/content/Context;)Lcom/android/phone/InCallUiState;
    .registers 5
    .parameter "context"

    .prologue
    .line 72
    const-class v1, Lcom/android/phone/InCallUiState;

    monitor-enter v1

    .line 73
    :try_start_3
    sget-object v0, Lcom/android/phone/InCallUiState;->sInstance:Lcom/android/phone/InCallUiState;

    if-nez v0, :cond_12

    .line 74
    new-instance v0, Lcom/android/phone/InCallUiState;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallUiState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/InCallUiState;->sInstance:Lcom/android/phone/InCallUiState;

    .line 78
    :goto_e
    sget-object v0, Lcom/android/phone/InCallUiState;->sInstance:Lcom/android/phone/InCallUiState;

    monitor-exit v1

    return-object v0

    .line 76
    :cond_12
    const-string v0, "InCallUiState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/InCallUiState;->sInstance:Lcom/android/phone/InCallUiState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 79
    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 429
    const-string v0, "InCallUiState"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    return-void
.end method


# virtual methods
.method public clearPendingCallStatusCode()V
    .registers 2

    .prologue
    .line 261
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    iput-object v0, p0, Lcom/android/phone/InCallUiState;->mPendingCallStatusCode:Lcom/android/phone/Constants$CallStatusCode;

    .line 262
    return-void
.end method

.method public clearProgressIndication()V
    .registers 2

    .prologue
    .line 327
    sget-object v0, Lcom/android/phone/InCallUiState$ProgressIndicationType;->NONE:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    iput-object v0, p0, Lcom/android/phone/InCallUiState;->progressIndication:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    .line 328
    return-void
.end method

.method public clearProviderOverlayInfo()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 381
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallUiState;->providerOverlayVisible:Z

    .line 382
    iput-object v1, p0, Lcom/android/phone/InCallUiState;->providerLabel:Ljava/lang/CharSequence;

    .line 383
    iput-object v1, p0, Lcom/android/phone/InCallUiState;->providerIcon:Landroid/graphics/drawable/Drawable;

    .line 384
    iput-object v1, p0, Lcom/android/phone/InCallUiState;->providerGatewayUri:Landroid/net/Uri;

    .line 385
    iput-object v1, p0, Lcom/android/phone/InCallUiState;->providerAddress:Ljava/lang/String;

    .line 386
    return-void
.end method

.method public dumpState()V
    .registers 3

    .prologue
    .line 407
    const-string v0, "dumpState():"

    invoke-static {v0}, Lcom/android/phone/InCallUiState;->log(Ljava/lang/String;)V

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - showDialpad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallUiState;->showDialpad:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/InCallUiState;->log(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p0}, Lcom/android/phone/InCallUiState;->hasPendingCallStatusCode()Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 410
    const-string v0, "  - status indication is pending!"

    invoke-static {v0}, Lcom/android/phone/InCallUiState;->log(Ljava/lang/String;)V

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    - pending call status code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallUiState;->mPendingCallStatusCode:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/InCallUiState;->log(Ljava/lang/String;)V

    .line 415
    :goto_40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - progressIndication: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallUiState;->progressIndication:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/InCallUiState;->log(Ljava/lang/String;)V

    .line 416
    iget-boolean v0, p0, Lcom/android/phone/InCallUiState;->providerOverlayVisible:Z

    if-eqz v0, :cond_b7

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - provider overlay VISIBLE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallUiState;->providerLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallUiState;->providerIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallUiState;->providerGatewayUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallUiState;->providerAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/InCallUiState;->log(Ljava/lang/String;)V

    .line 425
    :goto_98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - latestActiveCallOrigin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallUiState;->latestActiveCallOrigin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/InCallUiState;->log(Ljava/lang/String;)V

    .line 426
    return-void

    .line 413
    :cond_b1
    const-string v0, "  - pending call status code: none"

    invoke-static {v0}, Lcom/android/phone/InCallUiState;->log(Ljava/lang/String;)V

    goto :goto_40

    .line 423
    :cond_b7
    const-string v0, "  - provider overlay: none"

    invoke-static {v0}, Lcom/android/phone/InCallUiState;->log(Ljava/lang/String;)V

    goto :goto_98
.end method

.method public getPendingCallStatusCode()Lcom/android/phone/Constants$CallStatusCode;
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/phone/InCallUiState;->mPendingCallStatusCode:Lcom/android/phone/Constants$CallStatusCode;

    return-object v0
.end method

.method public getProgressIndication()Lcom/android/phone/InCallUiState$ProgressIndicationType;
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/phone/InCallUiState;->progressIndication:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    return-object v0
.end method

.method public hasPendingCallStatusCode()Z
    .registers 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/phone/InCallUiState;->mPendingCallStatusCode:Lcom/android/phone/Constants$CallStatusCode;

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isProgressIndicationActive()Z
    .registers 3

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/phone/InCallUiState;->progressIndication:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    sget-object v1, Lcom/android/phone/InCallUiState$ProgressIndicationType;->NONE:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V
    .registers 5
    .parameter "status"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/phone/InCallUiState;->mPendingCallStatusCode:Lcom/android/phone/Constants$CallStatusCode;

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    if-eq v0, v1, :cond_30

    .line 244
    const-string v0, "InCallUiState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPendingCallStatusCode: setting new code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but a previous code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallUiState;->mPendingCallStatusCode:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was already pending!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_30
    iput-object p1, p0, Lcom/android/phone/InCallUiState;->mPendingCallStatusCode:Lcom/android/phone/Constants$CallStatusCode;

    .line 249
    return-void
.end method

.method public setProgressIndication(Lcom/android/phone/InCallUiState$ProgressIndicationType;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/phone/InCallUiState;->progressIndication:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    .line 323
    return-void
.end method

.method public setProviderOverlayInfo(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/phone/InCallUiState;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/phone/PhoneUtils;->getProviderLabel(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallUiState;->providerLabel:Ljava/lang/CharSequence;

    .line 364
    iget-object v0, p0, Lcom/android/phone/InCallUiState;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/phone/PhoneUtils;->getProviderIcon(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallUiState;->providerIcon:Landroid/graphics/drawable/Drawable;

    .line 365
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getProviderGatewayUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallUiState;->providerGatewayUri:Landroid/net/Uri;

    .line 366
    iget-object v0, p0, Lcom/android/phone/InCallUiState;->providerGatewayUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->formatProviderUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallUiState;->providerAddress:Ljava/lang/String;

    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallUiState;->providerOverlayVisible:Z

    .line 371
    iget-object v0, p0, Lcom/android/phone/InCallUiState;->providerLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/android/phone/InCallUiState;->providerIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/phone/InCallUiState;->providerGatewayUri:Landroid/net/Uri;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/phone/InCallUiState;->providerAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 373
    :cond_39
    invoke-virtual {p0}, Lcom/android/phone/InCallUiState;->clearProviderOverlayInfo()V

    .line 375
    :cond_3c
    return-void
.end method
