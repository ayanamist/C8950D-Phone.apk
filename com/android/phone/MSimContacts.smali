.class public Lcom/android/phone/MSimContacts;
.super Lcom/android/phone/SimContacts;
.source "MSimContacts.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MSimContacts"


# instance fields
.field protected mSubscription:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/phone/SimContacts;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/MSimContacts;->mSubscription:I

    return-void
.end method


# virtual methods
.method protected resolveIntent()Landroid/net/Uri;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 38
    invoke-virtual {p0}, Lcom/android/phone/MSimContacts;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 39
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->getPreferredVoiceSubscription()I

    move-result v1

    iput v1, p0, Lcom/android/phone/MSimContacts;->mSubscription:I

    .line 40
    iget v1, p0, Lcom/android/phone/MSimContacts;->mSubscription:I

    if-nez v1, :cond_37

    .line 41
    const-string v1, "content://iccmsim/adn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 48
    :goto_1c
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 50
    const-string v1, "index"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/phone/ADNList;->mInitialSelection:I

    .line 54
    :cond_32
    :goto_32
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 42
    :cond_37
    iget v1, p0, Lcom/android/phone/MSimContacts;->mSubscription:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_46

    .line 43
    const-string v1, "content://iccmsim/adn_sub2"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1c

    .line 45
    :cond_46
    const-string v1, "ADNList"

    const-string v2, "resolveIntent:Invalid subcription"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 51
    :cond_4e
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 52
    iput v3, p0, Lcom/android/phone/ADNList;->mInitialSelection:I

    goto :goto_32
.end method
