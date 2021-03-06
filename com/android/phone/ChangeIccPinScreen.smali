.class public Lcom/android/phone/ChangeIccPinScreen;
.super Landroid/app/Activity;
.source "ChangeIccPinScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ChangeIccPinScreen$EntryState;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final EVENT_PIN_CHANGED:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneApp"

.field private static final MAX_PIN_LENGTH:I = 0x8

.field private static final MIN_PIN_LENGTH:I = 0x4

.field private static final NO_ERROR:I = 0x0

.field private static final PIN_INVALID_LENGTH:I = 0x2

.field private static final PIN_MISMATCH:I = 0x1


# instance fields
.field private mBadPinError:Landroid/widget/TextView;

.field private mButton:Landroid/widget/Button;

.field private mChangePin2:Z

.field private mClicked:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mIccPUKPanel:Landroid/widget/LinearLayout;

.field private mMismatchError:Landroid/widget/TextView;

.field private mNewPin1:Landroid/widget/EditText;

.field private mNewPin2:Landroid/widget/EditText;

.field private mOldPin:Landroid/widget/EditText;

.field private mPUKAlert:Landroid/app/AlertDialog;

.field private mPUKCode:Landroid/widget/EditText;

.field private mPUKSubmit:Landroid/widget/Button;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 78
    new-instance v0, Lcom/android/phone/ChangeIccPinScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/ChangeIccPinScreen$1;-><init>(Lcom/android/phone/ChangeIccPinScreen;)V

    iput-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mHandler:Landroid/os/Handler;

    .line 168
    new-instance v0, Lcom/android/phone/ChangeIccPinScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/ChangeIccPinScreen$2;-><init>(Lcom/android/phone/ChangeIccPinScreen;)V

    iput-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/ChangeIccPinScreen;Landroid/os/AsyncResult;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/phone/ChangeIccPinScreen;->handleResult(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/ChangeIccPinScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKSubmit:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/ChangeIccPinScreen;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKAlert:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/ChangeIccPinScreen;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/ChangeIccPinScreen;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/phone/ChangeIccPinScreen;->validateNewPin(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mMismatchError:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/ChangeIccPinScreen;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/ChangeIccPinScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->reset()V

    return-void
.end method

.method private displayPUKAlert()V
    .registers 5

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKAlert:Landroid/app/AlertDialog;

    if-nez v0, :cond_28

    .line 280
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c017f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKAlert:Landroid/app/AlertDialog;

    .line 290
    :goto_1b
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/ChangeIccPinScreen$4;

    invoke-direct {v1, p0}, Lcom/android/phone/ChangeIccPinScreen$4;-><init>(Lcom/android/phone/ChangeIccPinScreen;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 295
    return-void

    .line 285
    :cond_28
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1b
.end method

.method private handleResult(Landroid/os/AsyncResult;)V
    .registers 7
    .parameter "ar"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 235
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_27

    .line 238
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    sget-object v2, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PUK:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    if-ne v1, v2, :cond_17

    .line 239
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 240
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mIccPUKPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 243
    :cond_17
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->showConfirmation()V

    .line 245
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/ChangeIccPinScreen$3;

    invoke-direct {v2, p0}, Lcom/android/phone/ChangeIccPinScreen$3;-><init>(Lcom/android/phone/ChangeIccPinScreen;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 275
    :cond_26
    :goto_26
    return-void

    .line 251
    :cond_27
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_26

    .line 254
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    sget-object v2, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PIN:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    if-ne v1, v2, :cond_64

    .line 256
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 257
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mBadPinError:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    .line 259
    .local v0, ce:Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v2, :cond_26

    .line 261
    sget-object v1, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PUK:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    iput-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    .line 262
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->displayPUKAlert()V

    .line 263
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 264
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mIccPUKPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 265
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_26

    .line 267
    .end local v0           #ce:Lcom/android/internal/telephony/CommandException;
    :cond_64
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    sget-object v2, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PUK:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    if-ne v1, v2, :cond_26

    .line 270
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->displayPUKAlert()V

    .line 271
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 272
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_26
.end method

.method private log(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 303
    iget-boolean v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v1, :cond_1d

    const-string v0, "[ChgPin2]"

    .line 304
    .local v0, prefix:Ljava/lang/String;
    :goto_6
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void

    .line 303
    .end local v0           #prefix:Ljava/lang/String;
    :cond_1d
    const-string v0, "[ChgPin]"

    goto :goto_6
.end method

.method private reset()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 145
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 146
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mBadPinError:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mMismatchError:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    return-void
.end method

.method private resolveIntent()V
    .registers 4

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/phone/ChangeIccPinScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 141
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pin2"

    iget-boolean v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    .line 142
    return-void
.end method

.method private showConfirmation()V
    .registers 3

    .prologue
    .line 298
    iget-boolean v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v1, :cond_10

    const v0, 0x7f0c0189

    .line 299
    .local v0, id:I
    :goto_7
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 300
    return-void

    .line 298
    .end local v0           #id:I
    :cond_10
    const v0, 0x7f0c017e

    goto :goto_7
.end method

.method private validateNewPin(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .parameter "p1"
    .parameter "p2"

    .prologue
    const/4 v1, 0x2

    .line 151
    if-nez p1, :cond_4

    .line 165
    :cond_3
    :goto_3
    return v1

    .line 155
    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 156
    const/4 v1, 0x1

    goto :goto_3

    .line 159
    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 161
    .local v0, len1:I
    const/4 v2, 0x4

    if-lt v0, v2, :cond_3

    const/16 v2, 0x8

    if-gt v0, v2, :cond_3

    .line 165
    const/4 v1, 0x0

    goto :goto_3
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 96
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->resolveIntent()V

    .line 98
    const v1, 0x7f040007

    invoke-virtual {p0, v1}, Lcom/android/phone/ChangeIccPinScreen;->setContentView(I)V

    .line 100
    const v1, 0x7f070031

    invoke-virtual {p0, v1}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    .line 101
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 102
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 103
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v1, 0x7f070033

    invoke-virtual {p0, v1}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;

    .line 106
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 107
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 108
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v1, 0x7f070034

    invoke-virtual {p0, v1}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;

    .line 111
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 112
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 113
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v1, 0x7f070032

    invoke-virtual {p0, v1}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mBadPinError:Landroid/widget/TextView;

    .line 116
    const v1, 0x7f070035

    invoke-virtual {p0, v1}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mMismatchError:Landroid/widget/TextView;

    .line 118
    const v1, 0x7f070036

    invoke-virtual {p0, v1}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mButton:Landroid/widget/Button;

    .line 119
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v1, 0x7f070030

    invoke-virtual {p0, v1}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mScrollView:Landroid/widget/ScrollView;

    .line 123
    const v1, 0x7f070038

    invoke-virtual {p0, v1}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    .line 124
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 125
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 126
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v1, 0x7f070039

    invoke-virtual {p0, v1}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKSubmit:Landroid/widget/Button;

    .line 129
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKSubmit:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const v1, 0x7f070037

    invoke-virtual {p0, v1}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mIccPUKPanel:Landroid/widget/LinearLayout;

    .line 133
    iget-boolean v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v1, :cond_fd

    const v0, 0x7f0c0149

    .line 134
    .local v0, id:I
    :goto_ed
    invoke-virtual {p0}, Lcom/android/phone/ChangeIccPinScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/ChangeIccPinScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 136
    sget-object v1, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PIN:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    iput-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    .line 137
    return-void

    .line 133
    .end local v0           #id:I
    :cond_fd
    const v0, 0x7f0c0170

    goto :goto_ed
.end method
