.class public Lcom/android/phone/CdmaCallForwardOptions;
.super Landroid/preference/PreferenceActivity;
.source "CdmaCallForwardOptions.java"

# interfaces
.implements Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;


# static fields
.field private static final BUTTON_ACTIVATION_KEY:Ljava/lang/String; = "button_cdma_activation_key"

.field private static final BUTTON_DEACTIVATION_KEY:Ljava/lang/String; = "button_cdma_deactivation_key"

.field private static final CF_NUMBER_PREF_ID:I = 0x1

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CdmaCallForward"

.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field private dialogTitleId:I

.field private mButtonActivation:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonDeactivation:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/CdmaCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 191
    const-string v0, "CdmaCallForward"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method

.method private showErrorDialog()V
    .registers 4

    .prologue
    .line 183
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 184
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c032e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 185
    const v1, 0x7f0c0098

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 186
    const v1, 0x7f0c00a3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 187
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 188
    return-void
.end method

.method private transferToDial(ZLjava/lang/String;)V
    .registers 10
    .parameter "isActive"
    .parameter "phoneNumber"

    .prologue
    .line 100
    const-string v0, ""

    .line 101
    .local v0, fc:Ljava/lang/String;
    iget v3, p0, Lcom/android/phone/CdmaCallForwardOptions;->dialogTitleId:I

    sparse-switch v3, :sswitch_data_84

    .line 126
    :goto_7
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 127
    .local v2, phoneNumberBuffer:Ljava/lang/StringBuffer;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 130
    invoke-direct {p0}, Lcom/android/phone/CdmaCallForwardOptions;->showErrorDialog()V

    .line 152
    :goto_15
    return-void

    .line 103
    .end local v2           #phoneNumberBuffer:Ljava/lang/StringBuffer;
    :sswitch_16
    if-eqz p1, :cond_1f

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->cfu_activation:Ljava/lang/String;

    .line 105
    :goto_1e
    goto :goto_7

    .line 103
    :cond_1f
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->cfu_deactivation:Ljava/lang/String;

    goto :goto_1e

    .line 108
    :sswitch_26
    if-eqz p1, :cond_2f

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->cfb_activation:Ljava/lang/String;

    .line 110
    :goto_2e
    goto :goto_7

    .line 108
    :cond_2f
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->cfb_deactivation:Ljava/lang/String;

    goto :goto_2e

    .line 113
    :sswitch_36
    if-eqz p1, :cond_3f

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->cfnrc_activation:Ljava/lang/String;

    .line 115
    :goto_3e
    goto :goto_7

    .line 113
    :cond_3f
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->cfnrc_deactivation:Ljava/lang/String;

    goto :goto_3e

    .line 118
    :sswitch_46
    if-eqz p1, :cond_4f

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->cfnry_activation:Ljava/lang/String;

    .line 120
    :goto_4e
    goto :goto_7

    .line 118
    :cond_4f
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->cfnry_deactivation:Ljava/lang/String;

    goto :goto_4e

    .line 133
    .restart local v2       #phoneNumberBuffer:Ljava/lang/StringBuffer;
    :cond_56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_62

    .line 135
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    :cond_62
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 142
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 148
    const-string v3, "subscription"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaCallForwardOptions;->startActivity(Landroid/content/Intent;)V

    goto :goto_15

    .line 101
    nop

    :sswitch_data_84
    .sparse-switch
        0x7f0c0082 -> :sswitch_16
        0x7f0c0088 -> :sswitch_26
        0x7f0c008e -> :sswitch_46
        0x7f0c0093 -> :sswitch_36
    .end sparse-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 158
    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    if-nez p3, :cond_7

    .line 179
    :cond_6
    :goto_6
    return-void

    .line 164
    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallForwardOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CdmaCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 166
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 172
    packed-switch p1, :pswitch_data_2e

    goto :goto_6

    .line 174
    :pswitch_23
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonActivation:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_6

    .line 172
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_23
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f050007

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallForwardOptions;->addPreferencesFromResource(I)V

    .line 48
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallForwardOptions;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cf_dialog_title_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->dialogTitleId:I

    .line 52
    const-string v0, "button_cdma_activation_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallForwardOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonActivation:Lcom/android/phone/EditPhoneNumberPreference;

    .line 53
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonActivation:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_37

    .line 54
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonActivation:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 55
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonActivation:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 56
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonActivation:Lcom/android/phone/EditPhoneNumberPreference;

    iget v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->dialogTitleId:I

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 58
    :cond_37
    const-string v0, "button_cdma_deactivation_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallForwardOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonDeactivation:Landroid/preference/Preference;

    .line 59
    return-void
.end method

.method public onDialogClosed(Lcom/android/phone/EditPhoneNumberPreference;I)V
    .registers 5
    .parameter "preference"
    .parameter "buttonClicked"

    .prologue
    .line 71
    const/4 v1, -0x2

    if-ne p2, v1, :cond_4

    .line 81
    :cond_3
    :goto_3
    return-void

    .line 75
    :cond_4
    instance-of v1, p1, Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v1, :cond_3

    .line 76
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonActivation:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v1, :cond_3

    .line 77
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonActivation:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, phoneNumber:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/phone/CdmaCallForwardOptions;->transferToDial(ZLjava/lang/String;)V

    goto :goto_3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 88
    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonActivation:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p2, v2, :cond_7

    .line 96
    :goto_6
    return v0

    .line 91
    :cond_7
    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonDeactivation:Landroid/preference/Preference;

    if-ne p2, v2, :cond_10

    .line 93
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CdmaCallForwardOptions;->transferToDial(ZLjava/lang/String;)V

    goto :goto_6

    :cond_10
    move v0, v1

    .line 96
    goto :goto_6
.end method
