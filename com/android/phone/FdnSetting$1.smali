.class Lcom/android/phone/FdnSetting$1;
.super Landroid/os/Handler;
.source "FdnSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/FdnSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/FdnSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/FdnSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .parameter "msg"

    .prologue
    const v5, 0x7f0c0189

    const/4 v9, 0x3

    const v8, 0x7f0c018c

    const v7, 0x7f0c0185

    const/4 v6, 0x0

    .line 338
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_1d0

    .line 487
    :goto_10
    return-void

    .line 343
    :sswitch_11
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 344
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_3a

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/internal/telephony/CommandException;

    if-eqz v4, :cond_3a

    .line 346
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    .line 348
    .local v3, e:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v4, Lcom/android/phone/FdnSetting$2;->$SwitchMap$com$android$internal$telephony$CommandException$Error:[I

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1de

    .line 371
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v5, 0x7f0c016a

    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;I)V

    .line 376
    .end local v3           #e:Lcom/android/internal/telephony/CommandException$Error;
    :cond_3a
    :goto_3a
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;)V

    .line 378
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;)V

    goto :goto_10

    .line 356
    .restart local v3       #e:Lcom/android/internal/telephony/CommandException$Error;
    :pswitch_45
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$000(Lcom/android/phone/FdnSetting;)V

    .line 357
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;)V

    .line 358
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$200(Lcom/android/phone/FdnSetting;)V

    .line 359
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4, v8}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;I)V

    .line 360
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/EditPinPreference;->showPinDialog()V

    goto :goto_3a

    .line 364
    :pswitch_63
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v5, 0x7f0c0168

    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;I)V

    .line 366
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;)V

    .line 367
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/EditPinPreference;->showPinDialog()V

    goto :goto_3a

    .line 387
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v3           #e:Lcom/android/internal/telephony/CommandException$Error;
    :sswitch_7a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 388
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_ee

    .line 390
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/internal/telephony/CommandException;

    if-eqz v4, :cond_d9

    .line 391
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    .line 392
    .local v2, ce:Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_bd

    .line 396
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$000(Lcom/android/phone/FdnSetting;)V

    .line 397
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;)V

    .line 398
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$200(Lcom/android/phone/FdnSetting;)V

    .line 399
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4, v8}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;I)V

    .line 400
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/EditPinPreference;->showPinDialog()V

    .line 422
    .end local v2           #ce:Lcom/android/internal/telephony/CommandException;
    :goto_b1
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;)V

    .line 423
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;)V

    goto/16 :goto_10

    .line 402
    .restart local v2       #ce:Lcom/android/internal/telephony/CommandException;
    :cond_bd
    const-string v4, "GSM"

    const-string v5, "FdnSetting handleMessage() EVENT_PIN2_CHANGE_COMPLETE2.3"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4, v7}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;I)V

    .line 404
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$800(Lcom/android/phone/FdnSetting;)V

    .line 405
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4, v6}, Lcom/android/phone/FdnSetting;->access$902(Lcom/android/phone/FdnSetting;Z)Z

    .line 406
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4, v6}, Lcom/android/phone/FdnSetting;->access$1002(Lcom/android/phone/FdnSetting;Z)Z

    goto :goto_b1

    .line 409
    .end local v2           #ce:Lcom/android/internal/telephony/CommandException;
    :cond_d9
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4, v7}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;I)V

    .line 410
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$800(Lcom/android/phone/FdnSetting;)V

    .line 411
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4, v6}, Lcom/android/phone/FdnSetting;->access$902(Lcom/android/phone/FdnSetting;Z)Z

    .line 412
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4, v6}, Lcom/android/phone/FdnSetting;->access$1002(Lcom/android/phone/FdnSetting;Z)Z

    goto :goto_b1

    .line 417
    :cond_ee
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;I)V

    .line 418
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4, v6}, Lcom/android/phone/FdnSetting;->access$902(Lcom/android/phone/FdnSetting;Z)Z

    .line 419
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$800(Lcom/android/phone/FdnSetting;)V

    .line 420
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4, v6}, Lcom/android/phone/FdnSetting;->access$1002(Lcom/android/phone/FdnSetting;Z)Z

    goto :goto_b1

    .line 429
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_103
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 430
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_196

    .line 431
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    .line 432
    .restart local v2       #ce:Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_148

    .line 436
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 441
    .local v0, a:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 443
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 481
    .end local v0           #a:Landroid/app/AlertDialog;
    .end local v2           #ce:Lcom/android/internal/telephony/CommandException;
    :goto_13c
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;)V

    .line 482
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;)V

    goto/16 :goto_10

    .line 446
    .restart local v2       #ce:Lcom/android/internal/telephony/CommandException;
    :cond_148
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$1100(Lcom/android/phone/FdnSetting;)I

    move-result v4

    if-ne v4, v9, :cond_190

    .line 447
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$1200(Lcom/android/phone/FdnSetting;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getIccPuk2Blocked()Z

    move-result v4

    if-eqz v4, :cond_187

    .line 448
    const-string v4, "FdnSetting"

    const-string v5, "PUK2 Blocked while changing PIN2.Options \'Enable FDN\' & \'Change PIN2\' disabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v5, 0x7f0c018d

    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;I)V

    .line 450
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 451
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 461
    :goto_181
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$000(Lcom/android/phone/FdnSetting;)V

    goto :goto_13c

    .line 453
    :cond_187
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v5, 0x7f0c0184

    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;I)V

    goto :goto_181

    .line 456
    :cond_190
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4, v7}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;I)V

    goto :goto_181

    .line 465
    .end local v2           #ce:Lcom/android/internal/telephony/CommandException;
    :cond_196
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$1100(Lcom/android/phone/FdnSetting;)I

    move-result v4

    if-ne v4, v9, :cond_1c9

    .line 466
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v5, 0x7f0c0325

    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;I)V

    .line 473
    :goto_1a6
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4, v6}, Lcom/android/phone/FdnSetting;->access$902(Lcom/android/phone/FdnSetting;Z)Z

    .line 474
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$800(Lcom/android/phone/FdnSetting;)V

    .line 475
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4, v6}, Lcom/android/phone/FdnSetting;->access$1002(Lcom/android/phone/FdnSetting;Z)Z

    .line 476
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;)V

    .line 477
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$200(Lcom/android/phone/FdnSetting;)V

    .line 478
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v5, 0x7f0c0043

    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;I)V

    goto/16 :goto_13c

    .line 468
    :cond_1c9
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;I)V

    goto :goto_1a6

    .line 338
    nop

    :sswitch_data_1d0
    .sparse-switch
        0x64 -> :sswitch_11
        0xc8 -> :sswitch_7a
        0x12c -> :sswitch_103
    .end sparse-switch

    .line 348
    :pswitch_data_1de
    .packed-switch 0x1
        :pswitch_45
        :pswitch_63
    .end packed-switch
.end method
