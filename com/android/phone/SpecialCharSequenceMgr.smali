.class public Lcom/android/phone/SpecialCharSequenceMgr;
.super Ljava/lang/Object;
.source "SpecialCharSequenceMgr.java"


# static fields
.field private static final DBG:Z = false

.field private static final MMI_IMEI_DISPLAY:Ljava/lang/String; = "*#06#"

.field private static final TAG:Ljava/lang/String; = "PhoneApp"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method private static handleAdnEntry(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9
    .parameter "context"
    .parameter "input"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 185
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 209
    :cond_10
    :goto_10
    return v3

    .line 189
    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 190
    .local v2, len:I
    if-le v2, v4, :cond_10

    const/4 v5, 0x5

    if-ge v2, v5, :cond_10

    const-string v5, "#"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 192
    const/4 v5, 0x0

    add-int/lit8 v6, v2, -0x1

    :try_start_25
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 193
    .local v0, index:I
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.PICK"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    .local v1, intent:Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_58

    .line 196
    const-string v5, "com.android.phone"

    const-string v6, "com.android.phone.MSimContacts"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    :goto_45
    const/high16 v5, 0x1000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 203
    const-string v5, "index"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    move v3, v4

    .line 206
    goto :goto_10

    .line 199
    :cond_58
    const-string v5, "com.android.phone"

    const-string v6, "com.android.phone.SimContacts"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_5f
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_5f} :catch_60

    goto :goto_45

    .line 207
    .end local v0           #index:I
    .end local v1           #intent:Landroid/content/Intent;
    :catch_60
    move-exception v4

    goto :goto_10
.end method

.method static handleChars(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .parameter "context"
    .parameter "input"

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/phone/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method static handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z
    .registers 5
    .parameter "context"
    .parameter "input"
    .parameter "pukInputActivity"

    .prologue
    .line 99
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, dialString:Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/android/phone/SpecialCharSequenceMgr;->handleIMEIDisplay(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-static {p0, v0, p2}, Lcom/android/phone/SpecialCharSequenceMgr;->handlePinEntry(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-static {p0, v0}, Lcom/android/phone/SpecialCharSequenceMgr;->handleAdnEntry(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-static {p0, v0}, Lcom/android/phone/SpecialCharSequenceMgr;->handleSecretCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 105
    :cond_1c
    const/4 v1, 0x1

    .line 108
    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method static handleCharsForLockedDevice(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z
    .registers 5
    .parameter "context"
    .parameter "input"
    .parameter "pukInputActivity"

    .prologue
    .line 123
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, dialString:Ljava/lang/String;
    invoke-static {p0, v0, p2}, Lcom/android/phone/SpecialCharSequenceMgr;->handlePinEntry(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 132
    const/4 v1, 0x1

    .line 135
    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private static handleIMEIDisplay(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .parameter "context"
    .parameter "input"

    .prologue
    .line 262
    const-string v0, "*#06#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 263
    invoke-static {p0}, Lcom/android/phone/SpecialCharSequenceMgr;->showDeviceIdPanel(Landroid/content/Context;)V

    .line 264
    const/4 v0, 0x1

    .line 267
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private static handlePinEntry(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z
    .registers 12
    .parameter "context"
    .parameter "input"
    .parameter "pukInputActivity"

    .prologue
    .line 217
    const-string v7, "**04"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_10

    const-string v7, "**05"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7c

    :cond_10
    const-string v7, "#"

    invoke-virtual {p1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7c

    .line 219
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 220
    .local v0, app:Lcom/android/phone/PhoneApp;
    const/4 v5, 0x0

    .line 221
    .local v5, phone:Lcom/android/internal/telephony/Phone;
    const/4 v3, 0x0

    .line 222
    .local v3, isPukRequired:Z
    const-string v7, "**05"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_73

    .line 228
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    .line 229
    .local v4, numPhones:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2f
    if-ge v1, v4, :cond_55

    .line 230
    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->isSimPukLocked(I)Z

    move-result v7

    if-eqz v7, :cond_70

    .line 231
    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 232
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sending PUK on subscription :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/SpecialCharSequenceMgr;->log(Ljava/lang/String;)V

    .line 236
    :cond_55
    if-nez v5, :cond_5e

    .line 237
    const-string v7, "No Subscription is PUK-Locked..Using default phone"

    invoke-static {v7}, Lcom/android/phone/SpecialCharSequenceMgr;->log(Ljava/lang/String;)V

    .line 238
    iget-object v5, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 245
    .end local v1           #i:I
    .end local v4           #numPhones:I
    :cond_5e
    :goto_5e
    invoke-interface {v5, p1}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v2

    .line 252
    .local v2, isMMIHandled:Z
    if-eqz v2, :cond_6f

    const-string v7, "**05"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6f

    .line 253
    invoke-virtual {v0, p2}, Lcom/android/phone/PhoneApp;->setPukEntryActivity(Landroid/app/Activity;)V

    .line 257
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v2           #isMMIHandled:Z
    .end local v3           #isPukRequired:Z
    .end local v5           #phone:Lcom/android/internal/telephony/Phone;
    :cond_6f
    :goto_6f
    return v2

    .line 229
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    .restart local v1       #i:I
    .restart local v3       #isPukRequired:Z
    .restart local v4       #numPhones:I
    .restart local v5       #phone:Lcom/android/internal/telephony/Phone;
    :cond_70
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 242
    .end local v1           #i:I
    .end local v4           #numPhones:I
    :cond_73
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getVoiceSubscription()I

    move-result v6

    .line 243
    .local v6, voiceSub:I
    invoke-virtual {v0, v6}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    goto :goto_5e

    .line 257
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v3           #isPukRequired:Z
    .end local v5           #phone:Lcom/android/internal/telephony/Phone;
    .end local v6           #voiceSub:I
    :cond_7c
    const/4 v2, 0x0

    goto :goto_6f
.end method

.method private static handleSecretCode(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9
    .parameter "context"
    .parameter "input"

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    .line 149
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 150
    .local v1, len:I
    const/16 v3, 0x8

    if-le v1, v3, :cond_43

    const-string v3, "*#*#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    const-string v3, "#*#*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 151
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SECRET_CODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android_secret_code://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    add-int/lit8 v6, v1, -0x4

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 153
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 175
    .end local v0           #intent:Landroid/content/Intent;
    :goto_42
    return v2

    .line 158
    :cond_43
    const-string v3, "*#2846#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 160
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SECRET_CODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android_secret_code://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 162
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_42

    .line 166
    .end local v0           #intent:Landroid/content/Intent;
    :cond_79
    const-string v3, "*#2846*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    .line 168
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SECRET_CODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android_secret_code://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 170
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_42

    .line 175
    .end local v0           #intent:Landroid/content/Intent;
    :cond_af
    const/4 v2, 0x0

    goto :goto_42
.end method

.method private static log(Ljava/lang/String;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 288
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SpecialCharSequenceMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-void
.end method

.method private static showDeviceIdPanel(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    .line 273
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 274
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/TelephonyCapabilities;->getDeviceIdLabel(Lcom/android/internal/telephony/Phone;)I

    move-result v2

    .line 275
    .local v2, labelId:I
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, deviceId:Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c002d

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 283
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d7

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 284
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 285
    return-void
.end method
