.class public Lcom/android/phone/FdnSetting;
.super Landroid/preference/PreferenceActivity;
.source "FdnSetting.java"

# interfaces
.implements Lcom/android/phone/EditPinPreference$OnPinEnteredListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/FdnSetting$2;
    }
.end annotation


# static fields
.field private static final BUTTON_CHANGE_PIN2_KEY:Ljava/lang/String; = "button_change_pin2_key"

.field private static final BUTTON_FDN_ENABLE_KEY:Ljava/lang/String; = "button_fdn_enable_key"

.field private static final BUTTON_FDN_KEY:Ljava/lang/String; = "button_fdn_list_key"

.field private static final BUTTON_FDN_LIST_KEY:Ljava/lang/String; = "button_fdn_list_key"

.field private static final DIALOG_MESSAGE_KEY:Ljava/lang/String; = "dialog_message_key"

.field private static final DIALOG_PIN_ENTRY_KEY:Ljava/lang/String; = "dialog_pin_entry_key"

.field private static final EVENT_PIN2_CHANGE_COMPLETE:I = 0xc8

.field private static final EVENT_PIN2_ENTRY_COMPLETE:I = 0x64

.field private static final EVENT_PUK2_CHANGE_COMPLETE:I = 0x12c

#the value of this static final field might be set in the static constructor
.field private static final IS_MULTI_SIM:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "FdnSetting"

.field private static final MAX_PIN_LENGTH:I = 0x8

.field private static final MIN_PIN_LENGTH:I = 0x4

.field private static final NEW_PIN_KEY:Ljava/lang/String; = "new_pin_key"

.field private static final OLD_PIN_KEY:Ljava/lang/String; = "old_pin_key"

.field private static final PIN_CHANGE_NEW:I = 0x1

.field private static final PIN_CHANGE_OLD:I = 0x0

.field private static final PIN_CHANGE_PUK:I = 0x3

.field private static final PIN_CHANGE_REENTER:I = 0x2

.field private static final PIN_CHANGE_STATE_KEY:Ljava/lang/String; = "pin_change_state_key"

.field private static final SKIP_OLD_PIN_KEY:Ljava/lang/String; = "skip_old_pin_key"

.field private static final SUB1:I = 0x0

.field private static final SUB2:I = 0x1

.field private static final TAG1:Ljava/lang/String; = "FdnSetting"

.field private static mButtonFdnList:Landroid/preference/PreferenceScreen;


# instance fields
.field private mButtonChangePin2:Lcom/android/phone/EditPinPreference;

.field private mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

.field private mFDNHandler:Landroid/os/Handler;

.field private mGcfTesting:Z

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mOldPuk2:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPinChangeState:I

.field private mSkipOldPin:Z

.field private mSubscription:I

.field private mSubscriptionPrefFDN:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 107
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/FdnSetting;->IS_MULTI_SIM:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/FdnSetting;->mSubscription:I

    .line 335
    new-instance v0, Lcom/android/phone/FdnSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/FdnSetting$1;-><init>(Lcom/android/phone/FdnSetting;)V

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mFDNHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/FdnSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/FdnSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateChangeFdn()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/phone/FdnSetting;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/phone/FdnSetting;->mGcfTesting:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/phone/FdnSetting;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/phone/FdnSetting;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/FdnSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateChangePin()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/FdnSetting;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/phone/FdnSetting;->updateButtonState(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/FdnSetting;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/phone/FdnSetting;->displayMessage(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/FdnSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateEnableFDN()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/FdnSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeState()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/phone/FdnSetting;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    return p1
.end method

.method private checkPin2StatusAndUpdateFdnScreen()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 854
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccPuk2Blocked()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 855
    const-string v0, "FdnSetting"

    const-string v1, "PUK2 is Blocked.Disabling Enable FDN,Change PIN2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    const v0, 0x7f0c018d

    invoke-direct {p0, v0}, Lcom/android/phone/FdnSetting;->displayMessage(I)V

    .line 857
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 858
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 866
    :goto_24
    return-void

    .line 859
    :cond_25
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccPin2Blocked()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 860
    const-string v0, "FdnSetting"

    const-string v1, "PIN2 is Blocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V

    goto :goto_24

    .line 863
    :cond_3c
    const-string v0, "FdnSetting"

    const-string v1, "PUK2/PIN2 is not Blocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeState()V

    goto :goto_24
.end method

.method private final displayMessage(I)V
    .registers 6
    .parameter "strId"

    .prologue
    .line 504
    invoke-virtual {p0, p1}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 505
    .local v1, msg:Ljava/lang/String;
    const v2, 0x7f0c0185

    if-eq p1, v2, :cond_13

    const v2, 0x7f0c0184

    if-eq p1, v2, :cond_13

    const v2, 0x7f0c0168

    if-ne p1, v2, :cond_3f

    .line 506
    :cond_13
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccPin2RetryCount()I

    move-result v0

    .line 507
    .local v0, attemptsRemaining:I
    if-ltz v0, :cond_3f

    .line 508
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0c018e

    invoke-virtual {p0, v3}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 511
    .end local v0           #attemptsRemaining:I
    :cond_3f
    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 514
    return-void
.end method

.method private final displayPinChangeDialog()V
    .registers 3

    .prologue
    .line 520
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    .line 521
    return-void
.end method

.method private final displayPinChangeDialog(IZ)V
    .registers 15
    .parameter "strId"
    .parameter "shouldDisplay"

    .prologue
    const v11, 0x7f0c0326

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v10, 0x3

    .line 525
    iget v7, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    packed-switch v7, :pswitch_data_21e

    .line 537
    const v2, 0x7f0c018a

    .line 542
    .local v2, msgId:I
    :goto_e
    const-string v1, ""

    .line 543
    .local v1, charsePUK2RetryNum:Ljava/lang/CharSequence;
    const-string v0, ""

    .line 544
    .local v0, charsePIN2RetryNum:Ljava/lang/CharSequence;
    iget v7, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    if-ne v10, v7, :cond_d4

    .line 547
    const/4 v5, 0x0

    .line 549
    .local v5, strPUK2RetryNum:Ljava/lang/String;
    sget-boolean v7, Lcom/android/phone/FdnSetting;->IS_MULTI_SIM:Z

    if-eqz v7, :cond_a9

    .line 551
    iget v7, p0, Lcom/android/phone/FdnSetting;->mSubscription:I

    if-nez v7, :cond_a1

    .line 553
    const-string v7, "gsm.slot1.num.puk2"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 568
    :goto_25
    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_41

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_41

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b1

    .line 569
    :cond_41
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FdnSetting displayPinChangeDialog 2 params PUK retry num: get PUK2 from SystemProperties:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    .end local v5           #strPUK2RetryNum:Ljava/lang/String;
    :goto_59
    if-eqz p1, :cond_1b6

    .line 610
    iget v7, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    if-ne v10, v7, :cond_158

    .line 611
    iget-object v7, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, p1}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 612
    const-string v7, "GSM"

    const-string v8, "FdnSetting displayPinChangeDialog 2 params PIN_CHANGE_PUK == mPinChangeState"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :goto_8a
    if-eqz p2, :cond_91

    .line 635
    iget-object v7, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v7}, Lcom/android/phone/EditPinPreference;->showPinDialog()V

    .line 637
    :cond_91
    return-void

    .line 527
    .end local v0           #charsePIN2RetryNum:Ljava/lang/CharSequence;
    .end local v1           #charsePUK2RetryNum:Ljava/lang/CharSequence;
    .end local v2           #msgId:I
    :pswitch_92
    const v2, 0x7f0c0181

    .line 528
    .restart local v2       #msgId:I
    goto/16 :goto_e

    .line 530
    .end local v2           #msgId:I
    :pswitch_97
    const v2, 0x7f0c0182

    .line 531
    .restart local v2       #msgId:I
    goto/16 :goto_e

    .line 533
    .end local v2           #msgId:I
    :pswitch_9c
    const v2, 0x7f0c0183

    .line 534
    .restart local v2       #msgId:I
    goto/16 :goto_e

    .line 557
    .restart local v0       #charsePIN2RetryNum:Ljava/lang/CharSequence;
    .restart local v1       #charsePUK2RetryNum:Ljava/lang/CharSequence;
    .restart local v5       #strPUK2RetryNum:Ljava/lang/String;
    :cond_a1
    const-string v7, "gsm.slot2.num.puk2"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_25

    .line 562
    :cond_a9
    const-string v7, "gsm.sim.num.puk2"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_25

    .line 572
    :cond_b1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v11}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "%s"

    invoke-virtual {v8, v9, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 573
    .local v3, strAddForPUK2:Ljava/lang/String;
    move-object v1, v3

    goto :goto_59

    .line 575
    .end local v3           #strAddForPUK2:Ljava/lang/String;
    .end local v5           #strPUK2RetryNum:Ljava/lang/String;
    :cond_d4
    iget v7, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    if-nez v7, :cond_14f

    .line 578
    const/4 v6, 0x0

    .line 580
    .local v6, strPin2RetryNum:Ljava/lang/String;
    sget-boolean v7, Lcom/android/phone/FdnSetting;->IS_MULTI_SIM:Z

    if-eqz v7, :cond_124

    .line 582
    iget v7, p0, Lcom/android/phone/FdnSetting;->mSubscription:I

    if-nez v7, :cond_11d

    .line 584
    const-string v7, "gsm.slot1.num.pin2"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 598
    :goto_e7
    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_103

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_103

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12b

    .line 599
    :cond_103
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FdnSetting displayPinChangeDialog 2 params PIN2 retry num: get PIN2 from SystemProperties:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_59

    .line 588
    :cond_11d
    const-string v7, "gsm.slot2.num.pin2"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_e7

    .line 593
    :cond_124
    const-string v7, "gsm.sim.num.pin2"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_e7

    .line 601
    :cond_12b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v11}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "%s"

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 602
    .local v4, strAddForPin2:Ljava/lang/String;
    move-object v0, v4

    goto/16 :goto_59

    .line 605
    .end local v4           #strAddForPin2:Ljava/lang/String;
    .end local v6           #strPin2RetryNum:Ljava/lang/String;
    :cond_14f
    const-string v7, "GSM"

    const-string v8, "FdnSetting displayPinChangeDialog 2 params not PUK and PIN2 old"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_59

    .line 613
    :cond_158
    iget v7, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    if-nez v7, :cond_189

    .line 614
    iget-object v7, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, p1}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 615
    const-string v7, "GSM"

    const-string v8, "FdnSetting displayPinChangeDialog 2 params PIN_CHANGE_OLD == mPinChangeState"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8a

    .line 617
    :cond_189
    iget-object v7, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, p1}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 618
    const-string v7, "GSM"

    const-string v8, "FdnSetting displayPinChangeDialog 2 params not PUK and PIN2 old"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8a

    .line 621
    :cond_1b6
    iget v7, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    if-ne v10, v7, :cond_1e3

    .line 622
    iget-object v7, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 623
    const-string v7, "GSM"

    const-string v8, "FdnSetting displayPinChangeDialog 2 params PIN_CHANGE_PUK == mPinChangeState"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8a

    .line 624
    :cond_1e3
    iget v7, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    if-nez v7, :cond_210

    .line 625
    iget-object v7, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 626
    const-string v7, "GSM"

    const-string v8, "FdnSetting displayPinChangeDialog 2 params PIN_CHANGE_OLD == mPinChangeState"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8a

    .line 628
    :cond_210
    iget-object v7, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v7, v2}, Lcom/android/phone/EditPinPreference;->setDialogMessage(I)V

    .line 629
    const-string v7, "GSM"

    const-string v8, "FdnSetting displayPinChangeDialog 2 params not PUK and PIN2 old"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8a

    .line 525
    :pswitch_data_21e
    .packed-switch 0x0
        :pswitch_92
        :pswitch_97
        :pswitch_9c
    .end packed-switch
.end method

.method private final resetPinChangeState()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 643
    iput v0, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 644
    invoke-direct {p0, v0, v0}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    .line 645
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    .line 646
    return-void
.end method

.method private final resetPinChangeStateForPUK2()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 653
    const-string v0, "GSM"

    const-string v1, "FdnSetting resetPinChangeStateForPUK2()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 658
    invoke-direct {p0, v2, v2}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    .line 659
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    .line 660
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    .line 661
    return-void
.end method

.method private toggleFDNEnable(Z)V
    .registers 8
    .parameter "positiveResult"

    .prologue
    const/4 v3, 0x0

    .line 187
    if-nez p1, :cond_7

    .line 189
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateChangeFdn()V

    .line 209
    :goto_6
    return-void

    .line 195
    :cond_7
    iget-object v4, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v4}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, password:Ljava/lang/String;
    invoke-direct {p0, v2, v3}, Lcom/android/phone/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 198
    iget-object v4, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v0

    .line 199
    .local v0, isEnabled:Z
    iget-object v4, p0, Lcom/android/phone/FdnSetting;->mFDNHandler:Landroid/os/Handler;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 202
    .local v1, onComplete:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    if-nez v0, :cond_2e

    const/4 v3, 0x1

    :cond_2e
    invoke-interface {v4, v3, v2, v1}, Lcom/android/internal/telephony/IccCard;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 208
    .end local v0           #isEnabled:Z
    .end local v1           #onComplete:Landroid/os/Message;
    :goto_31
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    goto :goto_6

    .line 205
    :cond_39
    const v3, 0x7f0c0187

    invoke-direct {p0, v3}, Lcom/android/phone/FdnSetting;->displayMessage(I)V

    goto :goto_31
.end method

.method private updateButtonState(I)V
    .registers 6
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 721
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    if-eq v0, v1, :cond_15

    .line 722
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0, v3}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 723
    sget-object v0, Lcom/android/phone/FdnSetting;->mButtonFdnList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 724
    invoke-direct {p0, p1}, Lcom/android/phone/FdnSetting;->displayMessage(I)V

    .line 730
    :goto_14
    return-void

    .line 726
    :cond_15
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 727
    sget-object v0, Lcom/android/phone/FdnSetting;->mButtonFdnList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 728
    invoke-direct {p0, p1}, Lcom/android/phone/FdnSetting;->displayMessage(I)V

    goto :goto_14
.end method

.method private updateChangeFdn()V
    .registers 14

    .prologue
    const v12, 0x7f0c0181

    const v11, 0x7f0c0180

    const/4 v10, 0x0

    const/4 v9, -0x1

    const v8, 0x7f0c0326

    .line 116
    const-string v5, "GSM"

    const-string v6, "FdnSetting\'s updateChangeFdn"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v3, 0x0

    .line 120
    .local v3, strPIN2RetryNum:Ljava/lang/String;
    const/4 v4, 0x0

    .line 122
    .local v4, strPUK2RetryNum:Ljava/lang/String;
    sget-boolean v5, Lcom/android/phone/FdnSetting;->IS_MULTI_SIM:Z

    if-eqz v5, :cond_80

    .line 124
    iget v5, p0, Lcom/android/phone/FdnSetting;->mSubscription:I

    if-nez v5, :cond_73

    .line 127
    const-string v5, "gsm.slot1.num.pin2"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 128
    const-string v5, "gsm.slot1.num.puk2"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 146
    :goto_28
    const/4 v5, 0x3

    iget v6, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    if-eq v5, v6, :cond_fa

    .line 147
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FdnSetting updateChangeFdn()Pin2 retry num:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_61

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_61

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 149
    :cond_61
    iget-object v5, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v5, v12}, Lcom/android/phone/EditPinPreference;->setDialogMessage(I)V

    .line 150
    iget-object v5, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v5, v11}, Lcom/android/phone/EditPinPreference;->setDialogMessage(I)V

    .line 151
    const-string v5, "GSM"

    const-string v6, "FdnSetting updateChangeFdn()Pin2 retry num:do not show"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_72
    return-void

    .line 133
    :cond_73
    const-string v5, "gsm.slot2.num.pin2"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 134
    const-string v5, "gsm.slot2.num.puk2"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_28

    .line 140
    :cond_80
    const-string v5, "gsm.sim.num.pin2"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 141
    const-string v5, "gsm.sim.num.puk2"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_28

    .line 153
    :cond_8d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v12}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v8}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "%s"

    invoke-virtual {v6, v7, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, CstrPIN2:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v11}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v8}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "%s"

    invoke-virtual {v6, v7, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, EstrPIN2:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v5, v0}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v5, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v5, v1}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 157
    const-string v5, "GSM"

    const-string v6, "FdnSetting updateChangeFdn()Pin2 retry num:show"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_72

    .line 160
    .end local v0           #CstrPIN2:Ljava/lang/String;
    .end local v1           #EstrPIN2:Ljava/lang/String;
    :cond_fa
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FdnSetting updateChangeFdn()PUK2 retry num:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12e

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12e

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13f

    .line 162
    :cond_12e
    iget-object v5, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const v6, 0x7f0c018a

    invoke-virtual {v5, v6}, Lcom/android/phone/EditPinPreference;->setDialogMessage(I)V

    .line 163
    const-string v5, "GSM"

    const-string v6, "FdnSetting updateChangeFdn()PUK2 retry num:do not show"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_72

    .line 165
    :cond_13f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f0c018a

    invoke-virtual {p0, v6}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v8}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "%s"

    invoke-virtual {v6, v7, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, strPIN2:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v5, v2}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 167
    const-string v5, "GSM"

    const-string v6, "FdnSetting updateChangeFdn()PUK2 retry num:show"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_72
.end method

.method private updateChangePin()V
    .registers 5

    .prologue
    const v3, 0x7f0c0329

    const v2, 0x7f0c0149

    .line 709
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    if-eq v0, v1, :cond_1e

    .line 710
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPinPreference;->setDialogTitle(I)V

    .line 711
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 712
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f0c014e

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 718
    :goto_1d
    return-void

    .line 714
    :cond_1e
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0, v3}, Lcom/android/phone/EditPinPreference;->setDialogTitle(I)V

    .line 715
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0, v3}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 716
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f0c032a

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    goto :goto_1d
.end method

.method private updateEnableFDN()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const v1, 0x7f0c014c

    .line 687
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnAvailable()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 688
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 689
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f0c014a

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 690
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f0c0145

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 691
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f0c0148

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setDialogTitle(I)V

    .line 705
    :goto_34
    return-void

    .line 693
    :cond_35
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f0c014b

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 694
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f0c0146

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 695
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f0c0147

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setDialogTitle(I)V

    goto :goto_34

    .line 699
    :cond_4e
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 700
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 701
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 702
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 703
    invoke-direct {p0, v1}, Lcom/android/phone/FdnSetting;->displayMessage(I)V

    goto :goto_34
.end method

.method private updatePINChangeState(Z)V
    .registers 10
    .parameter "positiveResult"

    .prologue
    const v7, 0x7f0c0187

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 215
    if-nez p1, :cond_44

    .line 217
    iget-boolean v3, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    if-nez v3, :cond_2e

    .line 218
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeState()V

    .line 224
    :goto_e
    const/4 v2, 0x0

    .line 226
    .local v2, strPin2RetryNum:Ljava/lang/String;
    sget-boolean v3, Lcom/android/phone/FdnSetting;->IS_MULTI_SIM:Z

    if-eqz v3, :cond_39

    .line 228
    iget v3, p0, Lcom/android/phone/FdnSetting;->mSubscription:I

    if-nez v3, :cond_32

    .line 230
    const-string v3, "gsm.slot1.num.pin2"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 244
    :goto_1d
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 245
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V

    .line 246
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateChangeFdn()V

    .line 330
    .end local v2           #strPin2RetryNum:Ljava/lang/String;
    :goto_2d
    return-void

    .line 220
    :cond_2e
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V

    goto :goto_e

    .line 234
    .restart local v2       #strPin2RetryNum:Ljava/lang/String;
    :cond_32
    const-string v3, "gsm.slot2.num.pin2"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1d

    .line 239
    :cond_39
    const-string v3, "gsm.sim.num.pin2"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1d

    .line 248
    :cond_40
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateChangeFdn()V

    goto :goto_2d

    .line 263
    .end local v2           #strPin2RetryNum:Ljava/lang/String;
    :cond_44
    iget v3, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    packed-switch v3, :pswitch_data_10c

    goto :goto_2d

    .line 265
    :pswitch_4a
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v3}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    .line 266
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 268
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    invoke-direct {p0, v3, v6}, Lcom/android/phone/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 269
    iput v5, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 270
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog()V

    goto :goto_2d

    .line 272
    :cond_67
    invoke-direct {p0, v7, v5}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    goto :goto_2d

    .line 276
    :pswitch_6b
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v3}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    .line 277
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 279
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-direct {p0, v3, v6}, Lcom/android/phone/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 280
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 281
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog()V

    goto :goto_2d

    .line 283
    :cond_89
    invoke-direct {p0, v7, v5}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    goto :goto_2d

    .line 288
    :pswitch_8d
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v4}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ab

    .line 289
    iput v5, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 290
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 291
    const v3, 0x7f0c0186

    invoke-direct {p0, v3, v5}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    goto :goto_2d

    .line 295
    :cond_ab
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 297
    iget-boolean v3, p0, Lcom/android/phone/FdnSetting;->mGcfTesting:Z

    if-nez v3, :cond_cd

    .line 298
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mFDNHandler:Landroid/os/Handler;

    const/16 v4, 0xc8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 299
    .local v0, onComplete:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v0}, Lcom/android/internal/telephony/IccCard;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_2d

    .line 301
    .end local v0           #onComplete:Landroid/os/Message;
    :cond_cd
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mFDNHandler:Landroid/os/Handler;

    const/16 v4, 0x12c

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 302
    .restart local v0       #onComplete:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/FdnSetting;->mOldPuk2:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v0}, Lcom/android/internal/telephony/IccCard;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_2d

    .line 310
    .end local v0           #onComplete:Landroid/os/Message;
    :pswitch_e4
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v3}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, puk2:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 313
    invoke-direct {p0, v1, v5}, Lcom/android/phone/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_104

    .line 318
    iput-boolean v6, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    .line 319
    iput v5, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 320
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog()V

    .line 321
    iput-boolean v5, p0, Lcom/android/phone/FdnSetting;->mGcfTesting:Z

    .line 322
    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mOldPuk2:Ljava/lang/String;

    goto/16 :goto_2d

    .line 325
    :cond_104
    const v3, 0x7f0c0188

    invoke-direct {p0, v3, v5}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    goto/16 :goto_2d

    .line 263
    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_6b
        :pswitch_8d
        :pswitch_e4
    .end packed-switch
.end method

.method private validatePin(Ljava/lang/String;Z)Z
    .registers 6
    .parameter "pin"
    .parameter "isPUK"

    .prologue
    const/16 v1, 0x8

    .line 673
    if-eqz p2, :cond_15

    move v0, v1

    .line 676
    .local v0, pinMinimum:I
    :goto_5
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v0, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_17

    .line 677
    :cond_13
    const/4 v1, 0x0

    .line 679
    :goto_14
    return v1

    .line 673
    .end local v0           #pinMinimum:I
    :cond_15
    const/4 v0, 0x4

    goto :goto_5

    .line 679
    .restart local v0       #pinMinimum:I
    :cond_17
    const/4 v1, 0x1

    goto :goto_14
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    const/4 v1, 0x1

    .line 495
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 496
    iput-boolean v1, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    .line 497
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    .line 498
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    .line 735
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 737
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 738
    const v2, 0x7f050018

    invoke-virtual {p0, v2}, Lcom/android/phone/FdnSetting;->addPreferencesFromResource(I)V

    .line 744
    :goto_14
    invoke-virtual {p0}, Lcom/android/phone/FdnSetting;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "subscription"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/FdnSetting;->mSubscription:I

    .line 745
    const-string v2, "FdnSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Getting FDNSetting subscription ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/FdnSetting;->mSubscription:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/FdnSetting;->mSubscription:I

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 748
    const-string v2, "button_fdn_list_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/FdnSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mSubscriptionPrefFDN:Landroid/preference/PreferenceScreen;

    .line 749
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mSubscriptionPrefFDN:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "subscription"

    iget v4, p0, Lcom/android/phone/FdnSetting;->mSubscription:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 752
    invoke-virtual {p0}, Lcom/android/phone/FdnSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 753
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const-string v2, "button_fdn_enable_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EditPinPreference;

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    .line 754
    const-string v2, "button_change_pin2_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EditPinPreference;

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    .line 756
    const-string v2, "button_fdn_list_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    sput-object v2, Lcom/android/phone/FdnSetting;->mButtonFdnList:Landroid/preference/PreferenceScreen;

    .line 759
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 760
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateEnableFDN()V

    .line 762
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 765
    if-nez p1, :cond_ac

    .line 766
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeState()V

    .line 776
    :goto_91
    iput-boolean v5, p0, Lcom/android/phone/FdnSetting;->mGcfTesting:Z

    .line 777
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateChangeFdn()V

    .line 778
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateChangePin()V

    .line 780
    invoke-virtual {p0}, Lcom/android/phone/FdnSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 781
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_a3

    .line 783
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 785
    :cond_a3
    return-void

    .line 740
    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v1           #prefSet:Landroid/preference/PreferenceScreen;
    :cond_a4
    const v2, 0x7f05000d

    invoke-virtual {p0, v2}, Lcom/android/phone/FdnSetting;->addPreferencesFromResource(I)V

    goto/16 :goto_14

    .line 768
    .restart local v1       #prefSet:Landroid/preference/PreferenceScreen;
    :cond_ac
    const-string v2, "skip_old_pin_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    .line 769
    const-string v2, "pin_change_state_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 770
    const-string v2, "old_pin_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    .line 771
    const-string v2, "new_pin_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    .line 772
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v3, "dialog_message_key"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 773
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v3, "dialog_pin_entry_key"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    goto :goto_91
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 845
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 846
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 847
    invoke-static {p0}, Lcom/android/phone/CallFeaturesSetting;->goUpToTopLevelSetting(Landroid/app/Activity;)V

    .line 848
    const/4 v1, 0x1

    .line 850
    :goto_d
    return v1

    :cond_e
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_d
.end method

.method public onPinEntered(Lcom/android/phone/EditPinPreference;Z)V
    .registers 4
    .parameter "preference"
    .parameter "positiveResult"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    if-ne p1, v0, :cond_8

    .line 177
    invoke-direct {p0, p2}, Lcom/android/phone/FdnSetting;->toggleFDNEnable(Z)V

    .line 181
    :cond_7
    :goto_7
    return-void

    .line 178
    :cond_8
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    if-ne p1, v0, :cond_7

    .line 179
    invoke-direct {p0, p2}, Lcom/android/phone/FdnSetting;->updatePINChangeState(Z)V

    goto :goto_7
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 789
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 790
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/FdnSetting;->mSubscription:I

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 791
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateEnableFDN()V

    .line 792
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->checkPin2StatusAndUpdateFdnScreen()V

    .line 794
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateChangeFdn()V

    .line 797
    const/4 v0, 0x0

    .line 799
    .local v0, strPin2RetryNum:Ljava/lang/String;
    sget-boolean v1, Lcom/android/phone/FdnSetting;->IS_MULTI_SIM:Z

    if-eqz v1, :cond_61

    .line 801
    iget v1, p0, Lcom/android/phone/FdnSetting;->mSubscription:I

    if-nez v1, :cond_5a

    .line 803
    const-string v1, "gsm.slot1.num.pin2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 817
    :goto_27
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FdnSetting onResume() strPin2RetryNum ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 820
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V

    .line 821
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateChangeFdn()V

    .line 822
    const v1, 0x7f0c0328

    invoke-direct {p0, v1}, Lcom/android/phone/FdnSetting;->updateButtonState(I)V

    .line 825
    :cond_56
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateChangePin()V

    .line 827
    return-void

    .line 807
    :cond_5a
    const-string v1, "gsm.slot2.num.pin2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    .line 812
    :cond_61
    const-string v1, "gsm.sim.num.pin2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_27
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "out"

    .prologue
    .line 834
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 835
    const-string v0, "skip_old_pin_key"

    iget-boolean v1, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 836
    const-string v0, "pin_change_state_key"

    iget v1, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 837
    const-string v0, "old_pin_key"

    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    const-string v0, "new_pin_key"

    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    const-string v0, "dialog_message_key"

    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    const-string v0, "dialog_pin_entry_key"

    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    return-void
.end method
