.class public Lcom/broadcom/bt/app/phone/DTMFUtil;
.super Ljava/lang/Object;
.source "DTMFUtil.java"


# static fields
.field private static final DBG:Z = true

.field public static final DTMF_DUR_MS:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String; = "DTMFUtil"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDTMFToneEnabled:Z

.field private mToneGenerator:Landroid/media/ToneGenerator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/broadcom/bt/app/phone/DTMFUtil;->mDTMFToneEnabled:Z

    .line 40
    iput-object p1, p0, Lcom/broadcom/bt/app/phone/DTMFUtil;->mContext:Landroid/content/Context;

    .line 52
    iget-boolean v1, p0, Lcom/broadcom/bt/app/phone/DTMFUtil;->mDTMFToneEnabled:Z

    if-eqz v1, :cond_1b

    .line 53
    iget-object v1, p0, Lcom/broadcom/bt/app/phone/DTMFUtil;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v1, :cond_1b

    .line 55
    :try_start_10
    new-instance v1, Landroid/media/ToneGenerator;

    const/16 v2, 0x8

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/broadcom/bt/app/phone/DTMFUtil;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_1b} :catch_1c

    .line 66
    :cond_1b
    :goto_1b
    return-void

    .line 57
    :catch_1c
    move-exception v0

    .line 59
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "DTMFUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught while creating local tone generator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/app/phone/DTMFUtil;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_1b
.end method


# virtual methods
.method public playDTMF(C)V
    .registers 6
    .parameter "c"

    .prologue
    .line 69
    iget-object v1, p0, Lcom/broadcom/bt/app/phone/DTMFUtil;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v1, :cond_1d

    .line 71
    const-string v1, "DTMFUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tone Generator not enabled: ignoring request to play tone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :goto_1c
    return-void

    .line 76
    :cond_1d
    const/4 v0, -0x1

    .line 77
    .local v0, tone:I
    sparse-switch p1, :sswitch_data_56

    .line 83
    :goto_21
    const/16 v1, 0x30

    if-lt p1, v1, :cond_2d

    const/16 v1, 0x39

    if-gt p1, v1, :cond_2d

    .line 84
    add-int/lit8 v1, p1, 0x0

    add-int/lit8 v0, v1, -0x30

    .line 87
    :cond_2d
    if-ltz v0, :cond_3c

    .line 88
    iget-object v1, p0, Lcom/broadcom/bt/app/phone/DTMFUtil;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Landroid/media/ToneGenerator;->startTone(II)Z

    goto :goto_1c

    .line 79
    :sswitch_37
    const/16 v0, 0xb

    .line 81
    :sswitch_39
    const/16 v0, 0xb

    goto :goto_21

    .line 90
    :cond_3c
    const-string v1, "DTMFUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid TONE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 77
    nop

    :sswitch_data_56
    .sparse-switch
        0x23 -> :sswitch_37
        0x2a -> :sswitch_39
    .end sparse-switch
.end method
