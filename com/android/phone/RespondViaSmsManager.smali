.class public Lcom/android/phone/RespondViaSmsManager;
.super Ljava/lang/Object;
.source "RespondViaSmsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/RespondViaSmsManager$Settings;,
        Lcom/android/phone/RespondViaSmsManager$RespondViaSmsCancelListener;,
        Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final KEY_CANNED_RESPONSE_PREF_1:Ljava/lang/String; = "canned_response_pref_1"

.field private static final KEY_CANNED_RESPONSE_PREF_2:Ljava/lang/String; = "canned_response_pref_2"

.field private static final KEY_CANNED_RESPONSE_PREF_3:Ljava/lang/String; = "canned_response_pref_3"

.field private static final KEY_CANNED_RESPONSE_PREF_4:Ljava/lang/String; = "canned_response_pref_4"

.field private static final NUM_CANNED_RESPONSES:I = 0x4

.field protected static final SET_RESPOND_VIA_SMS_FLAG:I = 0x66

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "respond_via_sms_prefs"

.field private static final TAG:Ljava/lang/String; = "RespondViaSmsManager"

.field protected static final UPDATE_SCREEN:I = 0x65

.field private static final VDBG:Z


# instance fields
.field private mCannedResponses:[Ljava/lang/String;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mPopup:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/RespondViaSmsManager;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 105
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/android/phone/RespondViaSmsManager;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-static {p0}, Lcom/android/phone/RespondViaSmsManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/RespondViaSmsManager;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/phone/RespondViaSmsManager;->launchSmsCompose(Ljava/lang/String;)V

    return-void
.end method

.method public static allowRespondViaSmsForCall(Lcom/android/internal/telephony/Call;)Z
    .registers 8
    .parameter "ringingCall"

    .prologue
    const/4 v3, 0x0

    .line 555
    sget-boolean v4, Lcom/android/phone/RespondViaSmsManager;->DBG:Z

    if-eqz v4, :cond_21

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowRespondViaSmsForCall("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/RespondViaSmsManager;->log(Ljava/lang/String;)V

    .line 558
    :cond_21
    if-nez p0, :cond_2b

    .line 559
    const-string v4, "RespondViaSmsManager"

    const-string v5, "allowRespondViaSmsForCall: null ringingCall!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :goto_2a
    return v3

    .line 562
    :cond_2b
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v4

    if-nez v4, :cond_4e

    .line 567
    const-string v4, "RespondViaSmsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allowRespondViaSmsForCall: ringingCall not ringing! state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 571
    :cond_4e
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 572
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    if-nez v0, :cond_5c

    .line 576
    const-string v4, "RespondViaSmsManager"

    const-string v5, "allowRespondViaSmsForCall: null Connection!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 581
    :cond_5c
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 582
    .local v1, number:Ljava/lang/String;
    sget-boolean v4, Lcom/android/phone/RespondViaSmsManager;->DBG:Z

    if-eqz v4, :cond_80

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- number: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/RespondViaSmsManager;->log(Ljava/lang/String;)V

    .line 583
    :cond_80
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 584
    const-string v4, "RespondViaSmsManager"

    const-string v5, "allowRespondViaSmsForCall: no incoming number!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 587
    :cond_8e
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9c

    .line 593
    const-string v4, "RespondViaSmsManager"

    const-string v5, "allowRespondViaSmsForCall: incoming \'number\' is a SIP address."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 598
    :cond_9c
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    .line 599
    .local v2, presentation:I
    sget-boolean v4, Lcom/android/phone/RespondViaSmsManager;->DBG:Z

    if-eqz v4, :cond_ba

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- presentation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/RespondViaSmsManager;->log(Ljava/lang/String;)V

    .line 600
    :cond_ba
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v2, v4, :cond_c7

    .line 604
    const-string v4, "RespondViaSmsManager"

    const-string v5, "allowRespondViaSmsForCall: PRESENTATION_RESTRICTED."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    .line 615
    :cond_c7
    const/4 v3, 0x1

    goto/16 :goto_2a
.end method

.method private launchSmsCompose(Ljava/lang/String;)V
    .registers 6
    .parameter "phoneNumber"

    .prologue
    .line 362
    const-string v2, "sms"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 363
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 371
    .local v0, intent:Landroid/content/Intent;
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/phone/RespondViaSmsManager;->updateKeyguardPolicy(Z)V

    .line 374
    invoke-virtual {p0}, Lcom/android/phone/RespondViaSmsManager;->getUiScreen()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 396
    return-void
.end method

.method private loadCannedResponses()[Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 488
    sget-boolean v3, Lcom/android/phone/RespondViaSmsManager;->DBG:Z

    if-eqz v3, :cond_a

    const-string v3, "loadCannedResponses()..."

    invoke-static {v3}, Lcom/android/phone/RespondViaSmsManager;->log(Ljava/lang/String;)V

    .line 491
    :cond_a
    invoke-virtual {p0}, Lcom/android/phone/RespondViaSmsManager;->getUiScreen()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "respond_via_sms_prefs"

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 494
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/phone/RespondViaSmsManager;->getUiScreen()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 497
    .local v1, res:Landroid/content/res/Resources;
    const/4 v3, 0x4

    new-array v2, v3, [Ljava/lang/String;

    .line 502
    .local v2, responses:[Ljava/lang/String;
    const-string v3, "canned_response_pref_1"

    const v4, 0x7f0c02a9

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 504
    const/4 v3, 0x1

    const-string v4, "canned_response_pref_2"

    const v5, 0x7f0c02aa

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 506
    const/4 v3, 0x2

    const-string v4, "canned_response_pref_3"

    const v5, 0x7f0c02ab

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 508
    const/4 v3, 0x3

    const-string v4, "canned_response_pref_4"

    const v5, 0x7f0c02ac

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 510
    return-object v2
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 620
    const-string v0, "RespondViaSmsManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    return-void
.end method


# virtual methods
.method dismissCallScreen()V
    .registers 2

    .prologue
    .line 664
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->dismissCallScreen()V

    .line 665
    return-void
.end method

.method public dismissPopup()V
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager;->mPopup:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    .line 198
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager;->mPopup:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/RespondViaSmsManager;->mPopup:Landroid/app/Dialog;

    .line 201
    :cond_c
    return-void
.end method

.method getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;
    .registers 2

    .prologue
    .line 659
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method protected getUiScreen()Landroid/app/Activity;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Activity;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method protected sendReuestToUIElement(I)V
    .registers 4
    .parameter "what"

    .prologue
    .line 640
    packed-switch p1, :pswitch_data_16

    .line 650
    :goto_3
    return-void

    .line 642
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    goto :goto_3

    .line 645
    :pswitch_a
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getInCallTouchUi()Lcom/android/phone/InCallTouchUi;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallTouchUi;->setInternalRespondViaSmsCanceled(Z)V

    goto :goto_3

    .line 640
    nop

    :pswitch_data_16
    .packed-switch 0x65
        :pswitch_4
        :pswitch_a
    .end packed-switch
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "phoneNumber"
    .parameter "message"

    .prologue
    .line 343
    const-string v2, "smsto"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 344
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.mms.intent.action.SENDTO_NO_CONFIRMATION"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 345
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    const-string v2, "subscription"

    invoke-virtual {p0}, Lcom/android/phone/RespondViaSmsManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 352
    invoke-virtual {p0}, Lcom/android/phone/RespondViaSmsManager;->getUiScreen()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 353
    return-void
.end method

.method public setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .registers 2
    .parameter "inCallScreen"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 110
    return-void
.end method

.method public showRespondViaSmsPopup(Lcom/android/internal/telephony/Call;)V
    .registers 12
    .parameter "ringingCall"

    .prologue
    .line 118
    sget-boolean v7, Lcom/android/phone/RespondViaSmsManager;->DBG:Z

    if-eqz v7, :cond_9

    const-string v7, "showRespondViaSmsPopup()..."

    invoke-static {v7}, Lcom/android/phone/RespondViaSmsManager;->log(Ljava/lang/String;)V

    .line 121
    :cond_9
    new-instance v3, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/phone/RespondViaSmsManager;->getUiScreen()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 128
    .local v3, lv:Landroid/widget/ListView;
    invoke-direct {p0}, Lcom/android/phone/RespondViaSmsManager;->loadCannedResponses()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/RespondViaSmsManager;->mCannedResponses:[Ljava/lang/String;

    .line 132
    iget-object v7, p0, Lcom/android/phone/RespondViaSmsManager;->mCannedResponses:[Ljava/lang/String;

    array-length v7, v7

    add-int/lit8 v4, v7, 0x1

    .line 133
    .local v4, numPopupItems:I
    iget-object v7, p0, Lcom/android/phone/RespondViaSmsManager;->mCannedResponses:[Ljava/lang/String;

    invoke-static {v7, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 135
    .local v6, popupItems:[Ljava/lang/String;
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0}, Lcom/android/phone/RespondViaSmsManager;->getUiScreen()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c02ad

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 138
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/phone/RespondViaSmsManager;->getUiScreen()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x1090003

    const v9, 0x1020014

    invoke-direct {v0, v7, v8, v9, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 145
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 154
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 157
    .local v2, c:Lcom/android/internal/telephony/Connection;
    if-nez v2, :cond_58

    .line 164
    const-string v7, "RespondViaSmsManager"

    const-string v8, "showRespondViaSmsPopup: null connection; bailing out..."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :goto_57
    return-void

    .line 174
    :cond_58
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, phoneNumber:Ljava/lang/String;
    new-instance v7, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;

    invoke-direct {v7, p0, v5}, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;-><init>(Lcom/android/phone/RespondViaSmsManager;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 179
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/RespondViaSmsManager;->getUiScreen()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsCancelListener;

    invoke-direct {v8, p0}, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsCancelListener;-><init>(Lcom/android/phone/RespondViaSmsManager;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 185
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/RespondViaSmsManager;->mPopup:Landroid/app/Dialog;

    .line 186
    iget-object v7, p0, Lcom/android/phone/RespondViaSmsManager;->mPopup:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    goto :goto_57
.end method

.method protected updateKeyguardPolicy(Z)V
    .registers 3
    .parameter "updateKeyguardPolicy"

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, p1}, Lcom/android/phone/InCallScreen;->updateKeyguardPolicy(Z)V

    .line 654
    return-void
.end method
