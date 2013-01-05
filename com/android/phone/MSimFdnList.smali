.class public Lcom/android/phone/MSimFdnList;
.super Lcom/android/phone/FdnList;
.source "MSimFdnList.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "MSimFdnList"


# instance fields
.field private mSubscription:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/phone/FdnList;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/MSimFdnList;->mSubscription:I

    return-void
.end method


# virtual methods
.method protected addContact()V
    .registers 4

    .prologue
    .line 61
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 62
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "subscription"

    iget v2, p0, Lcom/android/phone/MSimFdnList;->mSubscription:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    const-class v1, Lcom/android/phone/MSimEditFdnContactScreen;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0, v0}, Lcom/android/phone/MSimFdnList;->startActivity(Landroid/content/Intent;)V

    .line 65
    return-void
.end method

.method protected deleteSelected()V
    .registers 6

    .prologue
    .line 87
    sget-object v3, Lcom/android/phone/MSimFdnList;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/phone/MSimFdnList;->getSelectedItemPosition()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 88
    sget-object v3, Lcom/android/phone/MSimFdnList;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, name:Ljava/lang/String;
    sget-object v3, Lcom/android/phone/MSimFdnList;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, number:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 92
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "subscription"

    iget v4, p0, Lcom/android/phone/MSimFdnList;->mSubscription:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    const-class v3, Lcom/android/phone/MSimDeleteFdnContactScreen;

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 94
    const-string v3, "name"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v3, "number"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0, v0}, Lcom/android/phone/MSimFdnList;->startActivity(Landroid/content/Intent;)V

    .line 98
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #number:Ljava/lang/String;
    :cond_38
    return-void
.end method

.method protected editSelected(I)V
    .registers 7
    .parameter "position"

    .prologue
    .line 72
    sget-object v3, Lcom/android/phone/MSimFdnList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 73
    sget-object v3, Lcom/android/phone/MSimFdnList;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, name:Ljava/lang/String;
    sget-object v3, Lcom/android/phone/MSimFdnList;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, number:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 77
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "subscription"

    iget v4, p0, Lcom/android/phone/MSimFdnList;->mSubscription:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    const-class v3, Lcom/android/phone/MSimEditFdnContactScreen;

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 79
    const-string v3, "name"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v3, "number"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0, v0}, Lcom/android/phone/MSimFdnList;->startActivity(Landroid/content/Intent;)V

    .line 83
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #number:Ljava/lang/String;
    :cond_34
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 102
    const-string v0, "MSimFdnList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MSimFdnList] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "icicle"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/android/phone/FdnList;->onCreate(Landroid/os/Bundle;)V

    .line 40
    return-void
.end method

.method protected resolveIntent()Landroid/net/Uri;
    .registers 5

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/phone/MSimFdnList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 45
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/phone/MSimFdnList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "subscription"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/MSimFdnList;->mSubscription:I

    .line 46
    iget v1, p0, Lcom/android/phone/MSimFdnList;->mSubscription:I

    if-nez v1, :cond_23

    .line 47
    const-string v1, "content://iccmsim/fdn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 54
    :cond_1e
    :goto_1e
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 48
    :cond_23
    iget v1, p0, Lcom/android/phone/MSimFdnList;->mSubscription:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    .line 49
    const-string v1, "content://iccmsim/fdn_sub2"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1e
.end method
