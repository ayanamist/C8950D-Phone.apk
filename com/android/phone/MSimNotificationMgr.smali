.class public Lcom/android/phone/MSimNotificationMgr;
.super Lcom/android/phone/NotificationMgr;
.source "MSimNotificationMgr.java"


# static fields
.field static final CALL_FORWARD_NOTIFICATION_SUB2:I = 0x15

.field static final CALL_FORWARD_XDIVERT:I = 0x16

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "MSimNotificationMgr"

.field static final VOICEMAIL_NOTIFICATION_SUB2:I = 0x14


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/MSimNotificationMgr;->DBG:Z

    return-void
.end method

.method private constructor <init>(Lcom/android/phone/PhoneApp;)V
    .registers 2
    .parameter "app"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/phone/NotificationMgr;-><init>(Lcom/android/phone/PhoneApp;)V

    .line 60
    return-void
.end method

.method static init(Lcom/android/phone/PhoneApp;)Lcom/android/phone/MSimNotificationMgr;
    .registers 5
    .parameter "app"

    .prologue
    .line 71
    const-class v1, Lcom/android/phone/MSimNotificationMgr;

    monitor-enter v1

    .line 72
    :try_start_3
    sget-object v0, Lcom/android/phone/MSimNotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    if-nez v0, :cond_19

    .line 73
    new-instance v0, Lcom/android/phone/MSimNotificationMgr;

    invoke-direct {v0, p0}, Lcom/android/phone/MSimNotificationMgr;-><init>(Lcom/android/phone/PhoneApp;)V

    sput-object v0, Lcom/android/phone/MSimNotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    .line 75
    sget-object v0, Lcom/android/phone/MSimNotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateNotificationsAtStartup()V

    .line 79
    :goto_13
    sget-object v0, Lcom/android/phone/MSimNotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    check-cast v0, Lcom/android/phone/MSimNotificationMgr;

    monitor-exit v1

    return-object v0

    .line 77
    :cond_19
    const-string v0, "MSimNotificationMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/MSimNotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 80
    :catchall_34
    move-exception v0

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 312
    const-string v0, "MSimNotificationMgr"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-void
.end method


# virtual methods
.method updateCfi(ZI)V
    .registers 14
    .parameter "visible"
    .parameter "subscription"

    .prologue
    const/4 v10, 0x0

    .line 222
    sget-boolean v6, Lcom/android/phone/MSimNotificationMgr;->DBG:Z

    if-eqz v6, :cond_25

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCfi(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "sub = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/MSimNotificationMgr;->log(Ljava/lang/String;)V

    .line 223
    :cond_25
    const/4 v6, 0x2

    new-array v0, v6, [I

    fill-array-data v0, :array_80

    .line 226
    .local v0, callfwdIcon:[I
    if-nez p2, :cond_77

    const/4 v3, 0x6

    .line 229
    .local v3, notificationId:I
    :goto_2e
    if-eqz p1, :cond_7a

    .line 241
    aget v4, v0, p2

    .line 244
    .local v4, resId:I
    const/4 v5, 0x1

    .line 246
    .local v5, showExpandedNotification:Z
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    .local v1, intent:Landroid/content/Intent;
    const/high16 v6, 0x1000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 249
    const-string v6, "com.android.phone"

    const-string v7, "com.android.phone.MSimCallFeaturesSetting"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    new-instance v2, Landroid/app/Notification;

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    invoke-direct {v2, v4, v6, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 258
    .local v2, notification:Landroid/app/Notification;
    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v8, 0x7f0c0080

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v9, 0x7f0c0083

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v9, v10, v1, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 271
    iget v6, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v2, Landroid/app/Notification;->flags:I

    .line 273
    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v6, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 279
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #notification:Landroid/app/Notification;
    .end local v4           #resId:I
    .end local v5           #showExpandedNotification:Z
    :goto_76
    return-void

    .line 226
    .end local v3           #notificationId:I
    :cond_77
    const/16 v3, 0x15

    goto :goto_2e

    .line 277
    .restart local v3       #notificationId:I
    :cond_7a
    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v6, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_76

    .line 223
    :array_80
    .array-data 0x4
        0x7at 0x0t 0x2t 0x7ft
        0x7bt 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method updateMwi(ZLcom/android/internal/telephony/Phone;)V
    .registers 29
    .parameter "visible"
    .parameter "phone"

    .prologue
    .line 90
    sget-boolean v22, Lcom/android/phone/MSimNotificationMgr;->DBG:Z

    if-eqz v22, :cond_22

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "updateMwi(): "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/phone/MSimNotificationMgr;->log(Ljava/lang/String;)V

    .line 91
    :cond_22
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v15

    .line 92
    .local v15, subscription:I
    if-eqz p1, :cond_200

    .line 93
    const v14, 0x108007e

    .line 94
    .local v14, resId:I
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v5, v0, [I

    fill-array-data v5, :array_214

    .line 107
    .local v5, iconId:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f0c01bf

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 108
    .local v10, notificationTitle:Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v21

    .line 109
    .local v21, vmNumber:Ljava/lang/String;
    sget-boolean v22, Lcom/android/phone/MSimNotificationMgr;->DBG:Z

    if-eqz v22, :cond_79

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "- got vm number: \'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " on Subscription: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/phone/MSimNotificationMgr;->log(Ljava/lang/String;)V

    .line 111
    :cond_79
    aget v14, v5, v15

    .line 128
    if-nez v21, :cond_cc

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v22

    if-nez v22, :cond_cc

    .line 129
    sget-boolean v22, Lcom/android/phone/MSimNotificationMgr;->DBG:Z

    if-eqz v22, :cond_90

    const-string v22, "- Null vm number: SIM records not loaded (yet)..."

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/phone/MSimNotificationMgr;->log(Ljava/lang/String;)V

    .line 142
    :cond_90
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/NotificationMgr;->mVmNumberRetriesRemaining:I

    move/from16 v22, v0

    add-int/lit8 v23, v22, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/NotificationMgr;->mVmNumberRetriesRemaining:I

    if-lez v22, :cond_c5

    .line 143
    sget-boolean v22, Lcom/android/phone/MSimNotificationMgr;->DBG:Z

    if-eqz v22, :cond_ad

    const-string v22, "  - Retrying in 10000 msec..."

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/phone/MSimNotificationMgr;->log(Ljava/lang/String;)V

    .line 144
    :cond_ad
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/phone/MSimCallNotifier;

    const-wide/16 v23, 0x2710

    move-object/from16 v0, v22

    move-wide/from16 v1, v23

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/MSimCallNotifier;->sendMwiChangedDelayed(JLcom/android/internal/telephony/Phone;)V

    .line 214
    .end local v5           #iconId:[I
    .end local v10           #notificationTitle:Ljava/lang/String;
    .end local v14           #resId:I
    .end local v21           #vmNumber:Ljava/lang/String;
    :goto_c4
    return-void

    .line 148
    .restart local v5       #iconId:[I
    .restart local v10       #notificationTitle:Ljava/lang/String;
    .restart local v14       #resId:I
    .restart local v21       #vmNumber:Ljava/lang/String;
    :cond_c5
    const-string v22, "MSimNotificationMgr"

    const-string v23, "NotificationMgr.updateMwi: getVoiceMailNumber() failed after 5 retries; giving up."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_cc
    invoke-static/range {p2 .. p2}, Lcom/android/phone/TelephonyCapabilities;->supportsVoiceMessageCount(Lcom/android/internal/telephony/Phone;)Z

    move-result v22

    if-eqz v22, :cond_fb

    .line 156
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v20

    .line 157
    .local v20, vmCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f0c01c0

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 159
    .local v16, titleFormat:Ljava/lang/String;
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 163
    .end local v16           #titleFormat:Ljava/lang/String;
    .end local v20           #vmCount:I
    :cond_fb
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1d8

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f0c01c2

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 172
    .local v9, notificationText:Ljava/lang/String;
    :goto_10e
    new-instance v6, Landroid/content/Intent;

    const-string v22, "android.intent.action.CALL"

    const-string v23, "voicemail"

    const-string v24, ""

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 174
    .local v6, intent:Landroid/content/Intent;
    const-string v22, "subscription"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 177
    .local v12, pendingIntent:Landroid/app/PendingIntent;
    new-instance v7, Landroid/app/Notification;

    const/16 v22, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    move-object/from16 v0, v22

    move-wide/from16 v1, v23

    invoke-direct {v7, v14, v0, v1, v2}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 184
    .local v7, notification:Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v7, v0, v10, v9, v12}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 190
    iget v0, v7, Landroid/app/Notification;->defaults:I

    move/from16 v22, v0

    or-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    iput v0, v7, Landroid/app/Notification;->defaults:I

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 193
    .local v13, prefs:Landroid/content/SharedPreferences;
    const-string v22, "button_voicemail_notification_vibrate_when_key"

    const-string v23, "never"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 195
    .local v19, vibrateWhen:Ljava/lang/String;
    const-string v22, "always"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 196
    .local v17, vibrateAlways:Z
    const-string v22, "silent"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 197
    .local v18, vibrateSilent:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "audio"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    .line 199
    .local v4, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1fb

    const/4 v11, 0x1

    .line 200
    .local v11, nowSilent:Z
    :goto_1a7
    if-nez v17, :cond_1ad

    if-eqz v18, :cond_1b7

    if-eqz v11, :cond_1b7

    .line 201
    :cond_1ad
    iget v0, v7, Landroid/app/Notification;->defaults:I

    move/from16 v22, v0

    or-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    iput v0, v7, Landroid/app/Notification;->defaults:I

    .line 204
    :cond_1b7
    iget v0, v7, Landroid/app/Notification;->flags:I

    move/from16 v22, v0

    or-int/lit8 v22, v22, 0x20

    move/from16 v0, v22

    iput v0, v7, Landroid/app/Notification;->flags:I

    .line 205
    invoke-static {v7}, Lcom/android/phone/MSimNotificationMgr;->configureLedNotification(Landroid/app/Notification;)V

    .line 206
    if-nez v15, :cond_1fd

    const/4 v8, 0x5

    .line 208
    .local v8, notificationId:I
    :goto_1c7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v22, v0

    const/16 v23, 0x5

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_c4

    .line 167
    .end local v4           #audioManager:Landroid/media/AudioManager;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #notification:Landroid/app/Notification;
    .end local v8           #notificationId:I
    .end local v9           #notificationText:Ljava/lang/String;
    .end local v11           #nowSilent:Z
    .end local v12           #pendingIntent:Landroid/app/PendingIntent;
    .end local v13           #prefs:Landroid/content/SharedPreferences;
    .end local v17           #vibrateAlways:Z
    .end local v18           #vibrateSilent:Z
    .end local v19           #vibrateWhen:Ljava/lang/String;
    :cond_1d8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f0c01c1

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v21 .. v21}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #notificationText:Ljava/lang/String;
    goto/16 :goto_10e

    .line 199
    .restart local v4       #audioManager:Landroid/media/AudioManager;
    .restart local v6       #intent:Landroid/content/Intent;
    .restart local v7       #notification:Landroid/app/Notification;
    .restart local v12       #pendingIntent:Landroid/app/PendingIntent;
    .restart local v13       #prefs:Landroid/content/SharedPreferences;
    .restart local v17       #vibrateAlways:Z
    .restart local v18       #vibrateSilent:Z
    .restart local v19       #vibrateWhen:Ljava/lang/String;
    :cond_1fb
    const/4 v11, 0x0

    goto :goto_1a7

    .line 206
    .restart local v11       #nowSilent:Z
    :cond_1fd
    const/16 v8, 0x14

    goto :goto_1c7

    .line 210
    .end local v4           #audioManager:Landroid/media/AudioManager;
    .end local v5           #iconId:[I
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #notification:Landroid/app/Notification;
    .end local v9           #notificationText:Ljava/lang/String;
    .end local v10           #notificationTitle:Ljava/lang/String;
    .end local v11           #nowSilent:Z
    .end local v12           #pendingIntent:Landroid/app/PendingIntent;
    .end local v13           #prefs:Landroid/content/SharedPreferences;
    .end local v14           #resId:I
    .end local v17           #vibrateAlways:Z
    .end local v18           #vibrateSilent:Z
    .end local v19           #vibrateWhen:Ljava/lang/String;
    .end local v21           #vmNumber:Ljava/lang/String;
    :cond_200
    if-nez v15, :cond_210

    const/4 v8, 0x5

    .line 212
    .restart local v8       #notificationId:I
    :goto_203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_c4

    .line 210
    .end local v8           #notificationId:I
    :cond_210
    const/16 v8, 0x14

    goto :goto_203

    .line 94
    nop

    :array_214
    .array-data 0x4
        0x9et 0x0t 0x8t 0x1t
        0x9ft 0x0t 0x8t 0x1t
    .end array-data
.end method

.method updateXDivert(Z)V
    .registers 11
    .parameter "visible"

    .prologue
    const/16 v8, 0x16

    const/4 v7, 0x0

    .line 287
    const-string v3, "MSimNotificationMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateXDivert: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    if-eqz p1, :cond_60

    .line 289
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 290
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 291
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.MSimCallFeaturesSetting"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const v2, 0x7f02007c

    .line 294
    .local v2, resId:I
    new-instance v1, Landroid/app/Notification;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 299
    .local v1, notification:Landroid/app/Notification;
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0c01f3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v6, 0x7f0c01fb

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v6, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 305
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v8, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 309
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #notification:Landroid/app/Notification;
    .end local v2           #resId:I
    :goto_5f
    return-void

    .line 307
    :cond_60
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v8}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_5f
.end method
