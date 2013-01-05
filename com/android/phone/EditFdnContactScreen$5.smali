.class Lcom/android/phone/EditFdnContactScreen$5;
.super Landroid/os/Handler;
.source "EditFdnContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EditFdnContactScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EditFdnContactScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/EditFdnContactScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 556
    iput-object p1, p0, Lcom/android/phone/EditFdnContactScreen$5;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 559
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_106

    .line 608
    :goto_7
    return-void

    .line 561
    :sswitch_8
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 562
    .local v7, ar:Landroid/os/AsyncResult;
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_22

    .line 563
    const-string v0, "PhoneApp"

    const-string v2, "PIN2 ERROR!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$5;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v0, v1}, Lcom/android/phone/EditFdnContactScreen;->displayProgress(Z)V

    .line 565
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$5;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v0, v1, v1}, Lcom/android/phone/EditFdnContactScreen;->handleResult(ZZ)V

    goto :goto_7

    .line 567
    :cond_22
    const-string v0, "PhoneApp"

    const-string v5, "ADD FDN"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$5;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v0}, Lcom/android/phone/EditFdnContactScreen;->getContentURI()Landroid/net/Uri;

    move-result-object v3

    .line 569
    .local v3, uri:Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x3

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 570
    .local v4, bundle:Landroid/content/ContentValues;
    const-string v0, "tag"

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen$5;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v5}, Lcom/android/phone/EditFdnContactScreen;->getNameFromTextField()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const-string v0, "number"

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen$5;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v5}, Lcom/android/phone/EditFdnContactScreen;->getNumberFromTextField()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const-string v0, "pin2"

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen$5;->this$0:Lcom/android/phone/EditFdnContactScreen;

    iget-object v5, v5, Lcom/android/phone/EditFdnContactScreen;->mPin2:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$5;->this$0:Lcom/android/phone/EditFdnContactScreen;

    new-instance v5, Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v6, p0, Lcom/android/phone/EditFdnContactScreen$5;->this$0:Lcom/android/phone/EditFdnContactScreen;

    iget-object v8, p0, Lcom/android/phone/EditFdnContactScreen$5;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v8}, Lcom/android/phone/EditFdnContactScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-direct {v5, v6, v8}, Lcom/android/phone/EditFdnContactScreen$QueryHandler;-><init>(Lcom/android/phone/EditFdnContactScreen;Landroid/content/ContentResolver;)V

    iput-object v5, v0, Lcom/android/phone/EditFdnContactScreen;->mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    .line 577
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$5;->this$0:Lcom/android/phone/EditFdnContactScreen;

    iget-object v0, v0, Lcom/android/phone/EditFdnContactScreen;->mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_7

    .line 582
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #bundle:Landroid/content/ContentValues;
    .end local v7           #ar:Landroid/os/AsyncResult;
    :sswitch_71
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 583
    .restart local v7       #ar:Landroid/os/AsyncResult;
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_8c

    .line 584
    const-string v0, "PhoneApp"

    const-string v2, "PIN2 ERROR!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$5;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v0, v1}, Lcom/android/phone/EditFdnContactScreen;->displayProgress(Z)V

    .line 586
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$5;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v0, v1, v1}, Lcom/android/phone/EditFdnContactScreen;->handleResult(ZZ)V

    goto/16 :goto_7

    .line 588
    :cond_8c
    const-string v0, "PhoneApp"

    const-string v5, "UPDATE  FDN"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$5;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v0}, Lcom/android/phone/EditFdnContactScreen;->getContentURI()Landroid/net/Uri;

    move-result-object v3

    .line 591
    .restart local v3       #uri:Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 592
    .restart local v4       #bundle:Landroid/content/ContentValues;
    const-string v0, "tag"

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen$5;->this$0:Lcom/android/phone/EditFdnContactScreen;

    iget-object v5, v5, Lcom/android/phone/EditFdnContactScreen;->mName:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-string v0, "number"

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen$5;->this$0:Lcom/android/phone/EditFdnContactScreen;

    iget-object v5, v5, Lcom/android/phone/EditFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const-string v0, "newTag"

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen$5;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v5}, Lcom/android/phone/EditFdnContactScreen;->getNameFromTextField()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const-string v0, "newNumber"

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen$5;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v5}, Lcom/android/phone/EditFdnContactScreen;->getNumberFromTextField()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string v0, "pin2"

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen$5;->this$0:Lcom/android/phone/EditFdnContactScreen;

    iget-object v5, v5, Lcom/android/phone/EditFdnContactScreen;->mPin2:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const-string v0, "efid"

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen$5;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v5}, Lcom/android/phone/EditFdnContactScreen;->access$400(Lcom/android/phone/EditFdnContactScreen;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string v0, "index"

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen$5;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v5}, Lcom/android/phone/EditFdnContactScreen;->access$500(Lcom/android/phone/EditFdnContactScreen;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$5;->this$0:Lcom/android/phone/EditFdnContactScreen;

    new-instance v5, Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v6, p0, Lcom/android/phone/EditFdnContactScreen$5;->this$0:Lcom/android/phone/EditFdnContactScreen;

    iget-object v8, p0, Lcom/android/phone/EditFdnContactScreen$5;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v8}, Lcom/android/phone/EditFdnContactScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-direct {v5, v6, v8}, Lcom/android/phone/EditFdnContactScreen$QueryHandler;-><init>(Lcom/android/phone/EditFdnContactScreen;Landroid/content/ContentResolver;)V

    iput-object v5, v0, Lcom/android/phone/EditFdnContactScreen;->mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    .line 603
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$5;->this$0:Lcom/android/phone/EditFdnContactScreen;

    iget-object v0, v0, Lcom/android/phone/EditFdnContactScreen;->mQueryHandler:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_7

    .line 559
    nop

    :sswitch_data_106
    .sparse-switch
        0x12c -> :sswitch_8
        0x190 -> :sswitch_71
    .end sparse-switch
.end method
