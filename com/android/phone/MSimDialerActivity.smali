.class public Lcom/android/phone/MSimDialerActivity;
.super Landroid/app/Activity;
.source "MSimDialerActivity.java"


# static fields
.field private static final DBG:Z = true

.field public static final INVALID_SUB:I = 0x63

.field public static final PHONE_SUBSCRIPTION:Ljava/lang/String; = "Subscription"

.field private static final TAG:Ljava/lang/String; = "MSimDialerActivity"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCallNumber:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;

.field private mNumber:Ljava/lang/String;

.field private mPhoneCount:I

.field private mTextNumber:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MSimDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/MSimDialerActivity;->mPhoneCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MSimDialerActivity;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/MSimDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/MSimDialerActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/phone/MSimDialerActivity;->startOutgoingCall(I)V

    return-void
.end method

.method private getSubscriptionForEmergencyCall()I
    .registers 4

    .prologue
    .line 125
    const-string v1, "MSimDialerActivity"

    const-string v2, "emergency call, getVoiceSubscriptionInService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getVoiceSubscriptionInService()I

    move-result v0

    .line 127
    .local v0, sub:I
    return v0
.end method

.method private launchMSDialer()V
    .registers 16

    .prologue
    const v14, 0x7f020037

    const/4 v13, 0x2

    .line 131
    iget-object v10, p0, Lcom/android/phone/MSimDialerActivity;->mNumber:Ljava/lang/String;

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    .line 132
    .local v6, isEmergency:Z
    if-eqz v6, :cond_1b

    .line 133
    const-string v10, "MSimDialerActivity"

    const-string v11, "emergency call"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-direct {p0}, Lcom/android/phone/MSimDialerActivity;->getSubscriptionForEmergencyCall()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/phone/MSimDialerActivity;->startOutgoingCall(I)V

    .line 225
    :goto_1a
    return-void

    .line 138
    :cond_1b
    iget-object v10, p0, Lcom/android/phone/MSimDialerActivity;->mContext:Landroid/content/Context;

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 140
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v11, 0x7f040009

    const v10, 0x7f07003a

    invoke-virtual {p0, v10}, Lcom/android/phone/MSimDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    invoke-virtual {v5, v11, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 143
    .local v7, layout:Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 144
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 145
    new-instance v10, Lcom/android/phone/MSimDialerActivity$1;

    invoke-direct {v10, p0}, Lcom/android/phone/MSimDialerActivity$1;-><init>(Lcom/android/phone/MSimDialerActivity;)V

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 172
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/MSimDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 174
    const v10, 0x7f07003b

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/phone/MSimDialerActivity;->mTextNumber:Landroid/widget/TextView;

    .line 176
    const-string v9, ""

    .line 177
    .local v9, vm:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/phone/MSimDialerActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    if-eqz v10, :cond_6a

    .line 178
    iget-object v10, p0, Lcom/android/phone/MSimDialerActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 180
    :cond_6a
    if-eqz v9, :cond_d8

    const-string v10, "voicemail"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d8

    .line 181
    iget-object v10, p0, Lcom/android/phone/MSimDialerActivity;->mTextNumber:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/phone/MSimDialerActivity;->mCallNumber:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "VoiceMail"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    const-string v10, "MSimDialerActivity"

    const-string v11, "its voicemail!!!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :goto_95
    const v10, 0x7f07003e

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 188
    .local v2, callCancel:Landroid/widget/Button;
    new-instance v10, Lcom/android/phone/MSimDialerActivity$2;

    invoke-direct {v10, p0}, Lcom/android/phone/MSimDialerActivity$2;-><init>(Lcom/android/phone/MSimDialerActivity;)V

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget v10, p0, Lcom/android/phone/MSimDialerActivity;->mPhoneCount:I

    new-array v1, v10, [Landroid/widget/Button;

    .line 196
    .local v1, callButton:[Landroid/widget/Button;
    new-array v3, v13, [I

    fill-array-data v3, :array_10e

    .line 197
    .local v3, callMark:[I
    new-array v8, v13, [I

    fill-array-data v8, :array_116

    .line 198
    .local v8, subString:[I
    const/4 v4, 0x0

    .line 199
    .local v4, index:I
    const/4 v4, 0x0

    :goto_b6
    iget v10, p0, Lcom/android/phone/MSimDialerActivity;->mPhoneCount:I

    if-ge v4, v10, :cond_f3

    .line 200
    aget v10, v3, v4

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    aput-object v10, v1, v4

    .line 201
    aget-object v10, v1, v4

    aget v11, v8, v4

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(I)V

    .line 202
    aget-object v10, v1, v4

    new-instance v11, Lcom/android/phone/MSimDialerActivity$3;

    invoke-direct {v11, p0}, Lcom/android/phone/MSimDialerActivity$3;-><init>(Lcom/android/phone/MSimDialerActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    add-int/lit8 v4, v4, 0x1

    goto :goto_b6

    .line 184
    .end local v1           #callButton:[Landroid/widget/Button;
    .end local v2           #callCancel:Landroid/widget/Button;
    .end local v3           #callMark:[I
    .end local v4           #index:I
    .end local v8           #subString:[I
    :cond_d8
    iget-object v10, p0, Lcom/android/phone/MSimDialerActivity;->mTextNumber:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/phone/MSimDialerActivity;->mCallNumber:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/MSimDialerActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_95

    .line 218
    .restart local v1       #callButton:[Landroid/widget/Button;
    .restart local v2       #callCancel:Landroid/widget/Button;
    .restart local v3       #callMark:[I
    .restart local v4       #index:I
    .restart local v8       #subString:[I
    :cond_f3
    invoke-static {}, Lcom/android/internal/telephony/MSimPhoneFactory;->getVoiceSubscription()I

    move-result v10

    if-nez v10, :cond_106

    .line 219
    const/4 v10, 0x0

    aget-object v10, v1, v10

    invoke-virtual {v10, v14}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 224
    :goto_ff
    iget-object v10, p0, Lcom/android/phone/MSimDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1a

    .line 221
    :cond_106
    const/4 v10, 0x1

    aget-object v10, v1, v10

    invoke-virtual {v10, v14}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_ff

    .line 196
    nop

    :array_10e
    .array-data 0x4
        0x3ct 0x0t 0x7t 0x7ft
        0x3dt 0x0t 0x7t 0x7ft
    .end array-data

    .line 197
    :array_116
    .array-data 0x4
        0xd0t 0x2t 0xct 0x7ft
        0xd1t 0x2t 0xct 0x7ft
    .end array-data
.end method

.method private startOutgoingCall(I)V
    .registers 5
    .parameter "subscription"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/phone/MSimDialerActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "subscription"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    iget-object v0, p0, Lcom/android/phone/MSimDialerActivity;->mIntent:Landroid/content/Intent;

    const-class v1, Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 240
    const-string v0, "MSimDialerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startOutgoingCall for sub "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MSimDialerActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget v0, p0, Lcom/android/phone/MSimDialerActivity;->mPhoneCount:I

    if-ge p1, v0, :cond_40

    .line 242
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/phone/MSimDialerActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/MSimDialerActivity;->setResult(ILandroid/content/Intent;)V

    .line 247
    :goto_3c
    invoke-virtual {p0}, Lcom/android/phone/MSimDialerActivity;->finish()V

    .line 248
    return-void

    .line 244
    :cond_40
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/MSimDialerActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/MSimDialerActivity;->setResult(ILandroid/content/Intent;)V

    .line 245
    const-string v0, "MSimDialerActivity"

    const-string v1, "call cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c
.end method


# virtual methods
.method isInCall(Lcom/android/internal/telephony/Phone;)Z
    .registers 3
    .parameter "phone"

    .prologue
    .line 228
    if-eqz p1, :cond_2e

    .line 229
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 232
    :cond_2c
    const/4 v0, 0x1

    .line 234
    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/phone/MSimDialerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MSimDialerActivity;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {p0}, Lcom/android/phone/MSimDialerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c02cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MSimDialerActivity;->mCallNumber:Ljava/lang/String;

    .line 75
    return-void
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 117
    const-string v0, "MSimDialerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MSimDialerActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/android/phone/MSimDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_29

    .line 119
    iget-object v0, p0, Lcom/android/phone/MSimDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MSimDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 122
    :cond_29
    return-void
.end method

.method protected onResume()V
    .registers 8

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 81
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    iput v4, p0, Lcom/android/phone/MSimDialerActivity;->mPhoneCount:I

    .line 82
    invoke-virtual {p0}, Lcom/android/phone/MSimDialerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/MSimDialerActivity;->mIntent:Landroid/content/Intent;

    .line 83
    const-string v4, "MSimDialerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Intent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/MSimDialerActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v4, p0, Lcom/android/phone/MSimDialerActivity;->mIntent:Landroid/content/Intent;

    invoke-static {v4, p0}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/MSimDialerActivity;->mNumber:Ljava/lang/String;

    .line 86
    const-string v4, "MSimDialerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mNumber "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/MSimDialerActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v4, p0, Lcom/android/phone/MSimDialerActivity;->mNumber:Ljava/lang/String;

    if-eqz v4, :cond_63

    .line 88
    iget-object v4, p0, Lcom/android/phone/MSimDialerActivity;->mNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/MSimDialerActivity;->mNumber:Ljava/lang/String;

    .line 89
    iget-object v4, p0, Lcom/android/phone/MSimDialerActivity;->mNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/MSimDialerActivity;->mNumber:Ljava/lang/String;

    .line 92
    :cond_63
    const/4 v2, 0x0

    .line 93
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    const/4 v3, 0x0

    .line 95
    .local v3, phoneInCall:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_66
    iget v4, p0, Lcom/android/phone/MSimDialerActivity;->mPhoneCount:I

    if-ge v0, v4, :cond_77

    .line 96
    invoke-static {v0}, Lcom/android/internal/telephony/MSimPhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 97
    invoke-virtual {p0, v2}, Lcom/android/phone/MSimDialerActivity;->isInCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    .line 98
    .local v1, inCall:Z
    if-eqz v2, :cond_aa

    if-eqz v1, :cond_aa

    .line 99
    const/4 v3, 0x1

    .line 103
    .end local v1           #inCall:Z
    :cond_77
    if-eqz v3, :cond_ad

    .line 104
    const-string v4, "MSimDialerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "subs ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] is in call"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/phone/MSimDialerActivity;->startOutgoingCall(I)V

    .line 112
    :goto_a2
    const-string v4, "MSimDialerActivity"

    const-string v5, "end of onResume()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void

    .line 95
    .restart local v1       #inCall:Z
    :cond_aa
    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    .line 108
    .end local v1           #inCall:Z
    :cond_ad
    const-string v4, "MSimDialerActivity"

    const-string v5, "launch dsdsdialer"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-direct {p0}, Lcom/android/phone/MSimDialerActivity;->launchMSDialer()V

    goto :goto_a2
.end method
