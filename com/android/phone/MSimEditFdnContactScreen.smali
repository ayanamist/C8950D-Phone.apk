.class public Lcom/android/phone/MSimEditFdnContactScreen;
.super Lcom/android/phone/EditFdnContactScreen;
.source "MSimEditFdnContactScreen.java"


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "MSimEditFdnContactScreen"

.field private static mSubscription:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/MSimEditFdnContactScreen;->mSubscription:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/phone/EditFdnContactScreen;-><init>()V

    return-void
.end method


# virtual methods
.method protected addContact()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/android/phone/MSimEditFdnContactScreen;->getNumberFromTextField()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/MSimEditFdnContactScreen;->isValidNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 79
    invoke-virtual {p0, v4, v5}, Lcom/android/phone/MSimEditFdnContactScreen;->handleResult(ZZ)V

    .line 95
    :goto_f
    return-void

    .line 83
    :cond_10
    invoke-virtual {p0}, Lcom/android/phone/MSimEditFdnContactScreen;->getContentURI()Landroid/net/Uri;

    move-result-object v1

    .line 85
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/ContentValues;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 86
    .local v0, bundle:Landroid/content/ContentValues;
    const-string v2, "tag"

    invoke-virtual {p0}, Lcom/android/phone/MSimEditFdnContactScreen;->getNameFromTextField()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v2, "number"

    invoke-virtual {p0}, Lcom/android/phone/MSimEditFdnContactScreen;->getNumberFromTextField()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v2, "pin2"

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v2, "subscription"

    sget v3, Lcom/android/phone/MSimEditFdnContactScreen;->mSubscription:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 91
    new-instance v2, Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    invoke-virtual {p0}, Lcom/android/phone/MSimEditFdnContactScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/phone/EditFdnContactScreen$QueryHandler;-><init>(Lcom/android/phone/EditFdnContactScreen;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/android/phone/EditFdnContactScreen;->mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    .line 92
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen;->mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3, v1, v0}, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 93
    invoke-virtual {p0, v5}, Lcom/android/phone/MSimEditFdnContactScreen;->displayProgress(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/android/phone/MSimEditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0160

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/MSimEditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_f
.end method

.method protected deleteSelected()V
    .registers 4

    .prologue
    .line 127
    iget-boolean v1, p0, Lcom/android/phone/EditFdnContactScreen;->mAddContact:Z

    if-nez v1, :cond_26

    .line 128
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 129
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/phone/MSimDeleteFdnContactScreen;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 130
    const-string v1, "name"

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v1, "number"

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string v1, "subscription"

    sget v2, Lcom/android/phone/MSimEditFdnContactScreen;->mSubscription:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0, v0}, Lcom/android/phone/MSimEditFdnContactScreen;->startActivity(Landroid/content/Intent;)V

    .line 135
    .end local v0           #intent:Landroid/content/Intent;
    :cond_26
    invoke-virtual {p0}, Lcom/android/phone/MSimEditFdnContactScreen;->finish()V

    .line 136
    return-void
.end method

.method protected getContentURI()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 63
    sget v0, Lcom/android/phone/MSimEditFdnContactScreen;->mSubscription:I

    if-nez v0, :cond_b

    .line 64
    const-string v0, "content://iccmsim/fdn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 70
    :goto_a
    return-object v0

    .line 65
    :cond_b
    sget v0, Lcom/android/phone/MSimEditFdnContactScreen;->mSubscription:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 66
    const-string v0, "content://iccmsim/fdn_sub2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_a

    .line 70
    :cond_17
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected log(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 140
    const-string v0, "MSimEditFdnContactScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MSimEditFdnContact] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "icicle"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/android/phone/EditFdnContactScreen;->onCreate(Landroid/os/Bundle;)V

    .line 45
    return-void
.end method

.method protected resolveIntent()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-virtual {p0}, Lcom/android/phone/MSimEditFdnContactScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 51
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/EditFdnContactScreen;->mName:Ljava/lang/String;

    .line 52
    const-string v2, "number"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/EditFdnContactScreen;->mNumber:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Lcom/android/phone/MSimEditFdnContactScreen;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "subscription"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/phone/MSimEditFdnContactScreen;->mSubscription:I

    .line 56
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen;->mName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_32

    const/4 v1, 0x1

    :cond_32
    iput-boolean v1, p0, Lcom/android/phone/EditFdnContactScreen;->mAddContact:Z

    .line 59
    return-void
.end method

.method protected updateContact()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/android/phone/MSimEditFdnContactScreen;->getNumberFromTextField()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimEditFdnContactScreen;->isValidNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 102
    invoke-virtual {p0, v1, v7}, Lcom/android/phone/MSimEditFdnContactScreen;->handleResult(ZZ)V

    .line 119
    :goto_10
    return-void

    .line 105
    :cond_11
    invoke-virtual {p0}, Lcom/android/phone/MSimEditFdnContactScreen;->getContentURI()Landroid/net/Uri;

    move-result-object v3

    .line 107
    .local v3, uri:Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 108
    .local v4, bundle:Landroid/content/ContentValues;
    const-string v0, "tag"

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen;->mName:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v0, "number"

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v0, "newTag"

    invoke-virtual {p0}, Lcom/android/phone/MSimEditFdnContactScreen;->getNameFromTextField()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v0, "newNumber"

    invoke-virtual {p0}, Lcom/android/phone/MSimEditFdnContactScreen;->getNumberFromTextField()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v0, "pin2"

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen;->mPin2:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v0, "subscription"

    sget v5, Lcom/android/phone/MSimEditFdnContactScreen;->mSubscription:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    new-instance v0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    invoke-virtual {p0}, Lcom/android/phone/MSimEditFdnContactScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v0, p0, v5}, Lcom/android/phone/EditFdnContactScreen$QueryHandler;-><init>(Lcom/android/phone/EditFdnContactScreen;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    .line 116
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen;->mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0, v7}, Lcom/android/phone/MSimEditFdnContactScreen;->displayProgress(Z)V

    .line 118
    invoke-virtual {p0}, Lcom/android/phone/MSimEditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0163

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimEditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_10
.end method
