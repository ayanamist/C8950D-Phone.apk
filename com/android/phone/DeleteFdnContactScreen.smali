.class public Lcom/android/phone/DeleteFdnContactScreen;
.super Landroid/app/Activity;
.source "DeleteFdnContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final EVENT_PIN2_CHECK_COMPLETE:I = 0x12c

.field private static final INTENT_EXTRA_EFID:Ljava/lang/String; = "efid"

.field private static final INTENT_EXTRA_INDEX:Ljava/lang/String; = "index"

.field protected static final INTENT_EXTRA_NAME:Ljava/lang/String; = "name"

.field protected static final INTENT_EXTRA_NUMBER:Ljava/lang/String; = "number"

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneApp"

.field protected static final PIN2_REQUEST_CODE:I = 0x64

.field private static final SUB1:I = 0x0

.field private static final SUB2:I = 0x1

.field private static mSubscription:I


# instance fields
.field private mEfid:Ljava/lang/String;

.field private mFDNHandler:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mIndex:Ljava/lang/String;

.field protected mName:Ljava/lang/String;

.field protected mNumber:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field protected mPin2:Ljava/lang/String;

.field protected mQueryHandler:Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/DeleteFdnContactScreen;->mSubscription:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mHandler:Landroid/os/Handler;

    .line 250
    new-instance v0, Lcom/android/phone/DeleteFdnContactScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/DeleteFdnContactScreen$2;-><init>(Lcom/android/phone/DeleteFdnContactScreen;)V

    iput-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mFDNHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/DeleteFdnContactScreen;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/phone/DeleteFdnContactScreen;->handleResult(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/DeleteFdnContactScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/phone/DeleteFdnContactScreen;->deleteContactReq()V

    return-void
.end method

.method private authenticatePin2()V
    .registers 6

    .prologue
    .line 175
    const-string v2, "gsm.sim.num.pin2"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, strPIN2RetryNum:Ljava/lang/String;
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " DeleteFdnContactScreen: authenticatePin2() : strPIN2RetryNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4d

    .line 178
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 179
    :cond_3a
    const v2, 0x7f0c0327

    invoke-virtual {p0, v2}, Lcom/android/phone/DeleteFdnContactScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 180
    invoke-virtual {p0}, Lcom/android/phone/DeleteFdnContactScreen;->finish()V

    .line 188
    :goto_4c
    return-void

    .line 185
    :cond_4d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 186
    .local v0, intent:Landroid/content/Intent;
    const-class v2, Lcom/android/phone/GetPin2Screen;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 187
    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2}, Lcom/android/phone/DeleteFdnContactScreen;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4c
.end method

.method private deleteContactReq()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 138
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .local v6, buf:Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 141
    const-string v0, "number=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_18
    :goto_18
    const-string v0, "\' AND pin2=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mPin2:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v0, "\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v0, " AND efid=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mEfid:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const-string v0, "\' AND index=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mIndex:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v0, "\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string v0, "content://icc/fdn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 168
    .local v3, uri:Landroid/net/Uri;
    new-instance v0, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;

    invoke-virtual {p0}, Lcom/android/phone/DeleteFdnContactScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;-><init>(Lcom/android/phone/DeleteFdnContactScreen;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mQueryHandler:Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;

    .line 169
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mQueryHandler:Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 170
    return-void

    .line 144
    .end local v3           #uri:Landroid/net/Uri;
    :cond_5d
    const-string v0, "tag=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 147
    const-string v0, "\' AND number=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18
.end method

.method private handleResult(Z)V
    .registers 6
    .parameter "success"

    .prologue
    .line 206
    if-eqz p1, :cond_1d

    .line 208
    invoke-virtual {p0}, Lcom/android/phone/DeleteFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0167

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/DeleteFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    .line 214
    :goto_10
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/DeleteFdnContactScreen$1;

    invoke-direct {v1, p0}, Lcom/android/phone/DeleteFdnContactScreen$1;-><init>(Lcom/android/phone/DeleteFdnContactScreen;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 220
    return-void

    .line 211
    :cond_1d
    invoke-virtual {p0}, Lcom/android/phone/DeleteFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0168

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/DeleteFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_10
.end method


# virtual methods
.method protected deleteContact()V
    .registers 4

    .prologue
    .line 128
    iget-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen;->mFDNHandler:Landroid/os/Handler;

    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 129
    .local v0, onComplete:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 130
    const-string v1, "GSM"

    const-string v2, "DeleteFdnContactsScreen:deleteContact(): mPhone.getIccCard() ! = null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/DeleteFdnContactScreen;->mPin2:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/IccCard;->supplyPin2(Ljava/lang/String;Landroid/os/Message;)V

    .line 133
    :cond_22
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/DeleteFdnContactScreen;->displayProgress(Z)V

    .line 134
    return-void
.end method

.method protected displayProgress(Z)V
    .registers 5
    .parameter "flag"

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/android/phone/DeleteFdnContactScreen;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    if-eqz p1, :cond_c

    const/4 v0, -0x1

    :goto_8
    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureInt(II)V

    .line 194
    return-void

    .line 191
    :cond_c
    const/4 v0, -0x2

    goto :goto_8
.end method

.method protected log(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 247
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DeleteFdnContact] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 92
    packed-switch p1, :pswitch_data_30

    .line 108
    :goto_3
    return-void

    .line 94
    :pswitch_4
    if-eqz p3, :cond_26

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 95
    .local v0, extras:Landroid/os/Bundle;
    :goto_a
    if-eqz v0, :cond_28

    .line 96
    const-string v1, "pin2"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen;->mPin2:Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Lcom/android/phone/DeleteFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0166

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/DeleteFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/phone/DeleteFdnContactScreen;->deleteContact()V

    goto :goto_3

    .line 94
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_26
    const/4 v0, 0x0

    goto :goto_a

    .line 103
    .restart local v0       #extras:Landroid/os/Bundle;
    :cond_28
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/phone/DeleteFdnContactScreen;->displayProgress(Z)V

    .line 104
    invoke-virtual {p0}, Lcom/android/phone/DeleteFdnContactScreen;->finish()V

    goto :goto_3

    .line 92
    :pswitch_data_30
    .packed-switch 0x64
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/phone/DeleteFdnContactScreen;->resolveIntent()V

    .line 78
    invoke-direct {p0}, Lcom/android/phone/DeleteFdnContactScreen;->authenticatePin2()V

    .line 80
    invoke-virtual {p0}, Lcom/android/phone/DeleteFdnContactScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 81
    const v0, 0x7f040008

    invoke-virtual {p0, v0}, Lcom/android/phone/DeleteFdnContactScreen;->setContentView(I)V

    .line 83
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 85
    return-void
.end method

.method protected resolveIntent()V
    .registers 3

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/phone/DeleteFdnContactScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 113
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen;->mName:Ljava/lang/String;

    .line 114
    const-string v1, "number"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen;->mNumber:Ljava/lang/String;

    .line 116
    const-string v1, "efid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen;->mEfid:Ljava/lang/String;

    .line 117
    const-string v1, "index"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen;->mIndex:Ljava/lang/String;

    .line 124
    return-void
.end method

.method protected showStatus(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "statusMsg"

    .prologue
    .line 199
    if-eqz p1, :cond_a

    .line 200
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 203
    :cond_a
    return-void
.end method
