.class public Lcom/android/phone/CdmaDisplayInfo;
.super Ljava/lang/Object;
.source "CdmaDisplayInfo.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_CDG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CdmaDisplayInfo"

.field private static sDisplayInfoDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 30
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_18

    :goto_a
    sput-boolean v0, Lcom/android/phone/CdmaDisplayInfo;->DBG:Z

    .line 32
    const-string v0, "ro.config.hw_cdma_cdg"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/CdmaDisplayInfo;->IS_CDG:Z

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    return-void

    :cond_18
    move v0, v1

    .line 30
    goto :goto_a
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismissDisplayInfoRecord()V
    .registers 1

    .prologue
    .line 89
    sget-boolean v0, Lcom/android/phone/CdmaDisplayInfo;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "Dissmissing Display Info Record..."

    invoke-static {v0}, Lcom/android/phone/CdmaDisplayInfo;->log(Ljava/lang/String;)V

    .line 91
    :cond_9
    sget-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_15

    .line 92
    sget-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 93
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    .line 95
    :cond_15
    return-void
.end method

.method public static displayInfoRecord(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .parameter "context"
    .parameter "infoMsg"

    .prologue
    .line 47
    sget-boolean v0, Lcom/android/phone/CdmaDisplayInfo;->DBG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayInfoRecord: infoMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaDisplayInfo;->log(Ljava/lang/String;)V

    .line 49
    :cond_1a
    sget-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_23

    .line 50
    sget-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 56
    :cond_23
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0205

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    .line 65
    sget-boolean v0, Lcom/android/phone/CdmaDisplayInfo;->IS_CDG:Z

    if-eqz v0, :cond_70

    .line 66
    sget-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 68
    sget-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 79
    :goto_63
    sget-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 80
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 82
    return-void

    .line 72
    :cond_70
    sget-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 74
    sget-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_63
.end method

.method private static log(Ljava/lang/String;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 98
    const-string v0, "CdmaDisplayInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaDisplayInfo] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void
.end method
