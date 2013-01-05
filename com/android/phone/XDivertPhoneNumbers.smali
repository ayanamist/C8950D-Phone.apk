.class public Lcom/android/phone/XDivertPhoneNumbers;
.super Landroid/app/Activity;
.source "XDivertPhoneNumbers.java"


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "XDivertPhoneNumbers"

.field private static final SUB1:I = 0x0

.field private static final SUB2:I = 0x1


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mClicked:Landroid/view/View$OnClickListener;

.field mNumPhones:I

.field mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

.field private mSub1Line1Number:Landroid/widget/EditText;

.field private mSub2Line1Number:Landroid/widget/EditText;

.field private mSubLine1Number:[Ljava/lang/String;

.field mXDivertUtility:Lcom/android/phone/XDivertUtility;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 159
    new-instance v0, Lcom/android/phone/XDivertPhoneNumbers$3;

    invoke-direct {v0, p0}, Lcom/android/phone/XDivertPhoneNumbers$3;-><init>(Lcom/android/phone/XDivertPhoneNumbers;)V

    iput-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mClicked:Landroid/view/View$OnClickListener;

    .line 178
    new-instance v0, Lcom/android/phone/XDivertPhoneNumbers$4;

    invoke-direct {v0, p0}, Lcom/android/phone/XDivertPhoneNumbers$4;-><init>(Lcom/android/phone/XDivertPhoneNumbers;)V

    iput-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/XDivertPhoneNumbers;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mSub1Line1Number:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/XDivertPhoneNumbers;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mSub2Line1Number:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/XDivertPhoneNumbers;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/XDivertPhoneNumbers;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/phone/XDivertPhoneNumbers;->getSub1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/XDivertPhoneNumbers;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/phone/XDivertPhoneNumbers;->getSub2Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/XDivertPhoneNumbers;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/phone/XDivertPhoneNumbers;->processXDivert()V

    return-void
.end method

.method private getSub1Number()Ljava/lang/String;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mSub1Line1Number:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSub2Number()Ljava/lang/String;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mSub2Line1Number:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private processXDivert()V
    .registers 5

    .prologue
    .line 150
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 151
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/phone/XDivertSetting;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 152
    const-string v1, "XDivertPhoneNumbers"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnSave: sub1 line number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/phone/XDivertPhoneNumbers;->getSub1Number()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sub2 line number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/phone/XDivertPhoneNumbers;->getSub2Number()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-string v1, "Sub1_Line1Number"

    invoke-direct {p0}, Lcom/android/phone/XDivertPhoneNumbers;->getSub1Number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string v1, "Sub2_Line1Number"

    invoke-direct {p0}, Lcom/android/phone/XDivertPhoneNumbers;->getSub2Number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    invoke-virtual {p0, v0}, Lcom/android/phone/XDivertPhoneNumbers;->startActivity(Landroid/content/Intent;)V

    .line 157
    return-void
.end method

.method private setupView()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 119
    const-string v0, "XDivertPhoneNumbers"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupView sub1 line number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/XDivertPhoneNumbers;->mSubLine1Number:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sub2 line number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/XDivertPhoneNumbers;->mSubLine1Number:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const v0, 0x7f0700d1

    invoke-virtual {p0, v0}, Lcom/android/phone/XDivertPhoneNumbers;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mSub1Line1Number:Landroid/widget/EditText;

    .line 122
    iget-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mSub1Line1Number:Landroid/widget/EditText;

    if-eqz v0, :cond_52

    .line 123
    iget-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mSub1Line1Number:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/XDivertPhoneNumbers;->mSubLine1Number:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mSub1Line1Number:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/XDivertPhoneNumbers;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 125
    iget-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mSub1Line1Number:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/XDivertPhoneNumbers;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    :cond_52
    const v0, 0x7f0700d2

    invoke-virtual {p0, v0}, Lcom/android/phone/XDivertPhoneNumbers;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mSub2Line1Number:Landroid/widget/EditText;

    .line 129
    iget-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mSub2Line1Number:Landroid/widget/EditText;

    if-eqz v0, :cond_78

    .line 130
    iget-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mSub2Line1Number:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/XDivertPhoneNumbers;->mSubLine1Number:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mSub2Line1Number:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/XDivertPhoneNumbers;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 132
    iget-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mSub2Line1Number:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/XDivertPhoneNumbers;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    :cond_78
    const v0, 0x7f070036

    invoke-virtual {p0, v0}, Lcom/android/phone/XDivertPhoneNumbers;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mButton:Landroid/widget/Button;

    .line 136
    iget-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_8e

    .line 137
    iget-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/XDivertPhoneNumbers;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    :cond_8e
    return-void
.end method


# virtual methods
.method public displayAlertDialog(I)V
    .registers 5
    .parameter "resId"

    .prologue
    .line 101
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c01f3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/android/phone/XDivertPhoneNumbers$2;

    invoke-direct {v2, p0}, Lcom/android/phone/XDivertPhoneNumbers$2;-><init>(Lcom/android/phone/XDivertPhoneNumbers;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/phone/XDivertPhoneNumbers$1;

    invoke-direct {v1, p0}, Lcom/android/phone/XDivertPhoneNumbers$1;-><init>(Lcom/android/phone/XDivertPhoneNumbers;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 116
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 98
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "icicle"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/phone/XDivertPhoneNumbers;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 72
    .local v1, intent:Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v3

    iput v3, p0, Lcom/android/phone/XDivertPhoneNumbers;->mNumPhones:I

    .line 73
    invoke-static {}, Lcom/android/phone/XDivertUtility;->getInstance()Lcom/android/phone/XDivertUtility;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/XDivertPhoneNumbers;->mXDivertUtility:Lcom/android/phone/XDivertUtility;

    .line 74
    iget v3, p0, Lcom/android/phone/XDivertPhoneNumbers;->mNumPhones:I

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/XDivertPhoneNumbers;->mSubLine1Number:[Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1e
    iget v3, p0, Lcom/android/phone/XDivertPhoneNumbers;->mNumPhones:I

    if-ge v0, v3, :cond_2a

    .line 76
    iget-object v3, p0, Lcom/android/phone/XDivertPhoneNumbers;->mSubLine1Number:[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 78
    :cond_2a
    const v3, 0x7f040026

    invoke-virtual {p0, v3}, Lcom/android/phone/XDivertPhoneNumbers;->setContentView(I)V

    .line 82
    iget-object v3, p0, Lcom/android/phone/XDivertPhoneNumbers;->mXDivertUtility:Lcom/android/phone/XDivertUtility;

    invoke-virtual {v3}, Lcom/android/phone/XDivertUtility;->checkImsiReady()Z

    move-result v2

    .line 83
    .local v2, isImsiReady:Z
    const-string v3, "XDivertPhoneNumbers"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate isImsiReady = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    if-nez v2, :cond_57

    .line 85
    const v3, 0x7f0c0204

    invoke-virtual {p0, v3}, Lcom/android/phone/XDivertPhoneNumbers;->displayAlertDialog(I)V

    .line 93
    :goto_56
    return-void

    .line 90
    :cond_57
    iget-object v3, p0, Lcom/android/phone/XDivertPhoneNumbers;->mXDivertUtility:Lcom/android/phone/XDivertUtility;

    invoke-virtual {v3}, Lcom/android/phone/XDivertUtility;->getLineNumbers()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/XDivertPhoneNumbers;->mSubLine1Number:[Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Lcom/android/phone/XDivertPhoneNumbers;->setupView()V

    goto :goto_56
.end method
