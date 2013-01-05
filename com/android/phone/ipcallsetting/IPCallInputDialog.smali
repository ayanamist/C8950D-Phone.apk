.class public Lcom/android/phone/ipcallsetting/IPCallInputDialog;
.super Landroid/app/Activity;
.source "IPCallInputDialog.java"


# static fields
.field private static final AREA_PREFIX_CODE:Ljava/lang/String; = "00"

.field private static final COUNTRY_CODE_CHINA:Ljava/lang/String; = "+86"

.field private static final PLUS:Ljava/lang/String; = "+"

.field private static final SCHEME_TEL:Ljava/lang/String; = "tel"

.field private static final TAG:Ljava/lang/String; = "InputDialogActivity"


# instance fields
.field private cancel_onClickListener:Landroid/view/View$OnClickListener;

.field private mBtn_ok:Landroid/widget/Button;

.field private mEditText:Landroid/widget/EditText;

.field private mHintContentText:Landroid/widget/TextView;

.field private mHintInput:Landroid/widget/TextView;

.field private mPhoneNumber:Ljava/lang/String;

.field private mPickByIntent:Z

.field private mSubscription:I

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private ok_onClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mHintInput:Landroid/widget/TextView;

    .line 53
    iput-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mEditText:Landroid/widget/EditText;

    .line 54
    iput-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mHintContentText:Landroid/widget/TextView;

    .line 55
    iput-boolean v1, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mPickByIntent:Z

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mPhoneNumber:Ljava/lang/String;

    .line 61
    iput v1, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mSubscription:I

    .line 63
    new-instance v0, Lcom/android/phone/ipcallsetting/IPCallInputDialog$1;

    invoke-direct {v0, p0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog$1;-><init>(Lcom/android/phone/ipcallsetting/IPCallInputDialog;)V

    iput-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mTextWatcher:Landroid/text/TextWatcher;

    .line 92
    new-instance v0, Lcom/android/phone/ipcallsetting/IPCallInputDialog$2;

    invoke-direct {v0, p0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog$2;-><init>(Lcom/android/phone/ipcallsetting/IPCallInputDialog;)V

    iput-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->cancel_onClickListener:Landroid/view/View$OnClickListener;

    .line 103
    new-instance v0, Lcom/android/phone/ipcallsetting/IPCallInputDialog$3;

    invoke-direct {v0, p0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog$3;-><init>(Lcom/android/phone/ipcallsetting/IPCallInputDialog;)V

    iput-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->ok_onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/ipcallsetting/IPCallInputDialog;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mBtn_ok:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/ipcallsetting/IPCallInputDialog;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->isIPNumExist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/ipcallsetting/IPCallInputDialog;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mPickByIntent:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/ipcallsetting/IPCallInputDialog;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mHintContentText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/ipcallsetting/IPCallInputDialog;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mHintInput:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/ipcallsetting/IPCallInputDialog;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/ipcallsetting/IPCallInputDialog;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->showSoftInputFromWindow(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/ipcallsetting/IPCallInputDialog;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mSubscription:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/ipcallsetting/IPCallInputDialog;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/ipcallsetting/IPCallInputDialog;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->dialNumber(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private dialNumber(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "ipNumber"
    .parameter "phoneNumber"

    .prologue
    .line 352
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 384
    :cond_4
    :goto_4
    return-void

    .line 358
    :cond_5
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 361
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 363
    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 364
    invoke-direct {p0, p2}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 369
    :cond_19
    const-string v1, "InputDialogActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialNumber ipnumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", phoneNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mSubscription:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 376
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "tel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 379
    const-string v1, "android.intent.extra.PHONE_LOGNUMBER"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    const-string v1, "subscription"

    iget v2, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mSubscription:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 383
    invoke-virtual {p0, v0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->startActivity(Landroid/content/Intent;)V

    goto :goto_4
.end method

.method private formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "phoneNumber"

    .prologue
    .line 392
    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 394
    const-string v0, "+86"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 396
    const-string v0, "+86"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 404
    :cond_1a
    :goto_1a
    return-object p1

    .line 399
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1a
.end method

.method private initOtherUi()V
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 274
    invoke-virtual {p0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c02ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, content_ok_button:Ljava/lang/String;
    const v2, 0x7f07008e

    invoke-virtual {p0, v2}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mBtn_ok:Landroid/widget/Button;

    .line 279
    iget-boolean v2, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mPickByIntent:Z

    if-eqz v2, :cond_53

    .line 280
    invoke-virtual {p0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c02ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 281
    iget-object v2, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mHintInput:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    iget-object v2, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 283
    iget-object v2, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mHintContentText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    :goto_38
    iget-object v2, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mBtn_ok:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v2, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mBtn_ok:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->ok_onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    const v2, 0x7f07008f

    invoke-virtual {p0, v2}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 296
    .local v0, btn_cancel:Landroid/widget/Button;
    iget-object v2, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->cancel_onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    return-void

    .line 285
    .end local v0           #btn_cancel:Landroid/widget/Button;
    :cond_53
    iget-object v2, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mHintContentText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    iget-object v2, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 288
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->showSoftInputFromWindow(Z)V

    .line 289
    iget-object v2, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mBtn_ok:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_38
.end method

.method private isIPNumExist(Ljava/lang/String;)Z
    .registers 11
    .parameter "ipcall"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 305
    const/4 v7, 0x0

    .line 310
    .local v7, isExist:Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 311
    invoke-virtual {p0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mSubscription:I

    if-nez v1, :cond_33

    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB1_URI:Landroid/net/Uri;

    :goto_18
    sget-object v2, Lcom/android/phone/ipcallsetting/IPCallUtils;->PROJECTION:[Ljava/lang/String;

    const-string v3, "_data = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 318
    .local v6, cursor:Landroid/database/Cursor;
    :goto_24
    if-eqz v6, :cond_2d

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2d

    .line 319
    const/4 v7, 0x1

    .line 322
    :cond_2d
    if-eqz v6, :cond_32

    .line 323
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 326
    :cond_32
    return v7

    .line 311
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_33
    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB2_URI:Landroid/net/Uri;

    goto :goto_18

    .line 315
    :cond_36
    invoke-virtual {p0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/ipcallsetting/IPCallUtils;->PROJECTION:[Ljava/lang/String;

    const-string v3, "_data = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6       #cursor:Landroid/database/Cursor;
    goto :goto_24
.end method

.method private showSoftInputFromWindow(Z)V
    .registers 6
    .parameter "show"

    .prologue
    const/4 v3, 0x0

    .line 334
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 336
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz p1, :cond_19

    .line 337
    invoke-virtual {p0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 339
    iget-object v1, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 344
    :goto_18
    return-void

    .line 341
    :cond_19
    iget-object v1, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_18
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 187
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 189
    sget-boolean v0, Lcom/android/phone/ipcallsetting/IPCallUtils;->IS_SUPPORT_IPCALL:Z

    if-nez v0, :cond_e

    .line 190
    invoke-virtual {p0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->finish()V

    .line 271
    :goto_d
    return-void

    .line 195
    :cond_e
    invoke-virtual {p0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 196
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "pickByIntent"

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mPickByIntent:Z

    .line 198
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 199
    invoke-virtual {p0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "subscription"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mSubscription:I

    .line 201
    const-string v0, "InputDialogActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IPCall mSubscription = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_4a
    iget-boolean v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mPickByIntent:Z

    if-eqz v0, :cond_fd

    .line 206
    const-string v0, "phoneNumber"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mPhoneNumber:Ljava/lang/String;

    .line 208
    const-string v8, ""

    .line 213
    .local v8, ipNumber:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 214
    invoke-virtual {p0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mSubscription:I

    if-nez v1, :cond_d9

    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB1_CURRENT_URI:Landroid/net/Uri;

    :goto_6c
    sget-object v2, Lcom/android/phone/ipcallsetting/IPCallUtils;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 221
    .local v6, cursor:Landroid/database/Cursor;
    :goto_74
    if-eqz v6, :cond_89

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_89

    .line 222
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 223
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 227
    :cond_89
    if-eqz v6, :cond_8e

    .line 228
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 231
    :cond_8e
    const/4 v9, 0x0

    .line 233
    .local v9, totalCount:I
    const-string v0, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 236
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 237
    invoke-virtual {p0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mSubscription:I

    if-nez v1, :cond_eb

    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB1_URI:Landroid/net/Uri;

    :goto_ab
    sget-object v2, Lcom/android/phone/ipcallsetting/IPCallUtils;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 245
    :goto_b3
    if-eqz v6, :cond_bc

    .line 246
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 247
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 251
    :cond_bc
    const-string v0, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c6

    if-le v9, v10, :cond_fd

    .line 255
    :cond_c6
    iget-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mPhoneNumber:Ljava/lang/String;

    invoke-direct {p0, v8, v0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->dialNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->setResult(ILandroid/content/Intent;)V

    .line 257
    invoke-virtual {p0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->finish()V

    goto/16 :goto_d

    .line 214
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v9           #totalCount:I
    :cond_d9
    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB2_CURRENT_URI:Landroid/net/Uri;

    goto :goto_6c

    .line 218
    :cond_dc
    invoke-virtual {p0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_CURRENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/ipcallsetting/IPCallUtils;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6       #cursor:Landroid/database/Cursor;
    goto :goto_74

    .line 237
    .restart local v9       #totalCount:I
    :cond_eb
    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB2_URI:Landroid/net/Uri;

    goto :goto_ab

    .line 241
    :cond_ee
    invoke-virtual {p0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/ipcallsetting/IPCallUtils;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_b3

    .line 263
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #ipNumber:Ljava/lang/String;
    .end local v9           #totalCount:I
    :cond_fd
    invoke-virtual {p0, v10}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->requestWindowFeature(I)Z

    .line 264
    const v0, 0x7f040019

    invoke-virtual {p0, v0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->setContentView(I)V

    .line 265
    const v0, 0x7f07008b

    invoke-virtual {p0, v0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mHintInput:Landroid/widget/TextView;

    .line 266
    const v0, 0x7f07008d

    invoke-virtual {p0, v0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mEditText:Landroid/widget/EditText;

    .line 267
    iget-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 268
    const v0, 0x7f07008c

    invoke-virtual {p0, v0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->mHintContentText:Landroid/widget/TextView;

    .line 270
    invoke-direct {p0}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->initOtherUi()V

    goto/16 :goto_d
.end method
