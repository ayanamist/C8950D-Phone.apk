.class public Lcom/android/phone/XDivertUtility;
.super Ljava/lang/Object;
.source "XDivertUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/XDivertUtility$XDivertBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final EVENT_SUBSCRIPTION_DEACTIVATED:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "XDivertUtility"

.field private static final SIM_IMSI:Ljava/lang/String; = "sim_imsi_key"

.field private static final SIM_NUMBER:Ljava/lang/String; = "sim_number_key"

.field private static final SIM_RECORDS_LOADED:I = 0x1

.field private static final SUB1:I = 0x0

.field private static final SUB2:I = 0x1

.field protected static sMe:Lcom/android/phone/XDivertUtility;


# instance fields
.field private mApp:Lcom/android/phone/MSimPhoneApp;

.field private mCallNotifier:Lcom/android/phone/MSimCallNotifier;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mHasImsiChanged:[Z

.field private mImsiFromSim:[Ljava/lang/String;

.field private mLineNumber:[Ljava/lang/String;

.field private mNumPhones:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mStoredImsi:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/XDivertUtility;->mNumPhones:I

    .line 146
    new-instance v0, Lcom/android/phone/XDivertUtility$1;

    invoke-direct {v0, p0}, Lcom/android/phone/XDivertUtility$1;-><init>(Lcom/android/phone/XDivertUtility;)V

    iput-object v0, p0, Lcom/android/phone/XDivertUtility;->mHandler:Landroid/os/Handler;

    .line 77
    sput-object p0, Lcom/android/phone/XDivertUtility;->sMe:Lcom/android/phone/XDivertUtility;

    .line 78
    return-void
.end method

.method private constructor <init>(Lcom/android/phone/MSimPhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/MSimCallNotifier;Landroid/content/Context;)V
    .registers 13
    .parameter "app"
    .parameter "phone"
    .parameter "callNotifier"
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/phone/XDivertUtility;->mNumPhones:I

    .line 146
    new-instance v3, Lcom/android/phone/XDivertUtility$1;

    invoke-direct {v3, p0}, Lcom/android/phone/XDivertUtility$1;-><init>(Lcom/android/phone/XDivertUtility;)V

    iput-object v3, p0, Lcom/android/phone/XDivertUtility;->mHandler:Landroid/os/Handler;

    .line 94
    const-string v3, "XDivertUtility"

    const-string v4, "onCreate()..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/SubscriptionManager;

    move-result-object v2

    .line 97
    .local v2, subMgr:Lcom/android/internal/telephony/SubscriptionManager;
    iput-object p1, p0, Lcom/android/phone/XDivertUtility;->mApp:Lcom/android/phone/MSimPhoneApp;

    .line 98
    iput-object p2, p0, Lcom/android/phone/XDivertUtility;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 99
    iput-object p3, p0, Lcom/android/phone/XDivertUtility;->mCallNotifier:Lcom/android/phone/MSimCallNotifier;

    .line 100
    iput-object p4, p0, Lcom/android/phone/XDivertUtility;->mContext:Landroid/content/Context;

    .line 102
    new-instance v3, Lcom/android/phone/XDivertUtility$XDivertBroadcastReceiver;

    invoke-direct {v3, p0, v7}, Lcom/android/phone/XDivertUtility$XDivertBroadcastReceiver;-><init>(Lcom/android/phone/XDivertUtility;Lcom/android/phone/XDivertUtility$1;)V

    iput-object v3, p0, Lcom/android/phone/XDivertUtility;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v3

    iput v3, p0, Lcom/android/phone/XDivertUtility;->mNumPhones:I

    .line 105
    iget v3, p0, Lcom/android/phone/XDivertUtility;->mNumPhones:I

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/XDivertUtility;->mImsiFromSim:[Ljava/lang/String;

    .line 106
    iget v3, p0, Lcom/android/phone/XDivertUtility;->mNumPhones:I

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/XDivertUtility;->mStoredImsi:[Ljava/lang/String;

    .line 107
    iget v3, p0, Lcom/android/phone/XDivertUtility;->mNumPhones:I

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/XDivertUtility;->mLineNumber:[Ljava/lang/String;

    .line 108
    iget v3, p0, Lcom/android/phone/XDivertUtility;->mNumPhones:I

    new-array v3, v3, [Z

    iput-object v3, p0, Lcom/android/phone/XDivertUtility;->mHasImsiChanged:[Z

    .line 110
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4c
    iget v3, p0, Lcom/android/phone/XDivertUtility;->mNumPhones:I

    if-ge v0, v3, :cond_6e

    .line 111
    iget-object v3, p0, Lcom/android/phone/XDivertUtility;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v0, v3, v4, v7}, Lcom/android/internal/telephony/SubscriptionManager;->registerForSubscriptionDeactivated(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 113
    invoke-virtual {p1, v0}, Lcom/android/phone/MSimPhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/XDivertUtility;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 115
    iget-object v3, p0, Lcom/android/phone/XDivertUtility;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/XDivertUtility;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v6, v5}, Lcom/android/internal/telephony/Phone;->registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 116
    iget-object v3, p0, Lcom/android/phone/XDivertUtility;->mHasImsiChanged:[Z

    aput-boolean v6, v3, v0

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    .line 119
    :cond_6e
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 121
    .local v1, intentFilter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/phone/XDivertUtility;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/XDivertUtility;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/XDivertUtility;)Lcom/android/phone/MSimPhoneApp;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/XDivertUtility;->mApp:Lcom/android/phone/MSimPhoneApp;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/XDivertUtility;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/XDivertUtility;->mImsiFromSim:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/XDivertUtility;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/XDivertUtility;->mStoredImsi:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/XDivertUtility;)Lcom/android/phone/MSimCallNotifier;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/XDivertUtility;->mCallNotifier:Lcom/android/phone/MSimCallNotifier;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/XDivertUtility;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/XDivertUtility;->mLineNumber:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/XDivertUtility;)[Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/XDivertUtility;->mHasImsiChanged:[Z

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/XDivertUtility;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/phone/XDivertUtility;->onSubscriptionDeactivated()V

    return-void
.end method

.method static getInstance()Lcom/android/phone/XDivertUtility;
    .registers 1

    .prologue
    .line 125
    sget-object v0, Lcom/android/phone/XDivertUtility;->sMe:Lcom/android/phone/XDivertUtility;

    return-object v0
.end method

.method static init(Lcom/android/phone/MSimPhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/MSimCallNotifier;Landroid/content/Context;)Lcom/android/phone/XDivertUtility;
    .registers 8
    .parameter "app"
    .parameter "phone"
    .parameter "callNotifier"
    .parameter "context"

    .prologue
    .line 82
    const-class v1, Lcom/android/phone/XDivertUtility;

    monitor-enter v1

    .line 83
    :try_start_3
    sget-object v0, Lcom/android/phone/XDivertUtility;->sMe:Lcom/android/phone/XDivertUtility;

    if-nez v0, :cond_12

    .line 84
    new-instance v0, Lcom/android/phone/XDivertUtility;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/phone/XDivertUtility;-><init>(Lcom/android/phone/MSimPhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/MSimCallNotifier;Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/XDivertUtility;->sMe:Lcom/android/phone/XDivertUtility;

    .line 88
    :goto_e
    sget-object v0, Lcom/android/phone/XDivertUtility;->sMe:Lcom/android/phone/XDivertUtility;

    monitor-exit v1

    return-object v0

    .line 86
    :cond_12
    const-string v0, "XDivertUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/XDivertUtility;->sMe:Lcom/android/phone/XDivertUtility;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 89
    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method private onSubscriptionDeactivated()V
    .registers 3

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/phone/XDivertUtility;->mCallNotifier:Lcom/android/phone/MSimCallNotifier;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/MSimCallNotifier;->onXDivertChanged(Z)V

    .line 248
    return-void
.end method


# virtual methods
.method protected checkImsiReady()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 204
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget v3, p0, Lcom/android/phone/XDivertUtility;->mNumPhones:I

    if-ge v0, v3, :cond_5b

    .line 205
    iget-object v3, p0, Lcom/android/phone/XDivertUtility;->mStoredImsi:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/phone/XDivertUtility;->getSimImsi(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 206
    iget-object v3, p0, Lcom/android/phone/XDivertUtility;->mImsiFromSim:[Ljava/lang/String;

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/telephony/MSimTelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 208
    iget-object v3, p0, Lcom/android/phone/XDivertUtility;->mImsiFromSim:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_29

    iget-object v3, p0, Lcom/android/phone/XDivertUtility;->mImsiFromSim:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string v4, ""

    if-ne v3, v4, :cond_2a

    .line 220
    :cond_29
    :goto_29
    return v1

    .line 210
    :cond_2a
    iget-object v3, p0, Lcom/android/phone/XDivertUtility;->mStoredImsi:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_44

    iget-object v3, p0, Lcom/android/phone/XDivertUtility;->mImsiFromSim:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_58

    iget-object v3, p0, Lcom/android/phone/XDivertUtility;->mImsiFromSim:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/android/phone/XDivertUtility;->mStoredImsi:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58

    .line 214
    :cond_44
    iget-object v3, p0, Lcom/android/phone/XDivertUtility;->mCallNotifier:Lcom/android/phone/MSimCallNotifier;

    invoke-virtual {v3, v1}, Lcom/android/phone/MSimCallNotifier;->setXDivertStatus(Z)V

    .line 215
    iget-object v3, p0, Lcom/android/phone/XDivertUtility;->mImsiFromSim:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3, v0}, Lcom/android/phone/XDivertUtility;->setSimImsi(Ljava/lang/String;I)V

    .line 216
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/android/phone/XDivertUtility;->storeNumber(Ljava/lang/String;I)V

    .line 217
    iget-object v3, p0, Lcom/android/phone/XDivertUtility;->mHasImsiChanged:[Z

    aput-boolean v2, v3, v0

    .line 204
    :cond_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5b
    move v1, v2

    .line 220
    goto :goto_29
.end method

.method protected getLineNumbers()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/phone/XDivertUtility;->mLineNumber:[Ljava/lang/String;

    return-object v0
.end method

.method protected getNumber(I)Ljava/lang/String;
    .registers 5
    .parameter "subscription"

    .prologue
    .line 252
    iget-object v1, p0, Lcom/android/phone/XDivertUtility;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 254
    .local v0, sp:Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sim_number_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getSimImsi(I)Ljava/lang/String;
    .registers 5
    .parameter "subscription"

    .prologue
    .line 230
    iget-object v1, p0, Lcom/android/phone/XDivertUtility;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 232
    .local v0, sp:Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sim_imsi_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected setSimImsi(Ljava/lang/String;I)V
    .registers 7
    .parameter "imsi"
    .parameter "subscription"

    .prologue
    .line 237
    iget-object v2, p0, Lcom/android/phone/XDivertUtility;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 239
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 240
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim_imsi_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 241
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 242
    return-void
.end method

.method protected storeNumber(Ljava/lang/String;I)V
    .registers 7
    .parameter "number"
    .parameter "subscription"

    .prologue
    .line 259
    iget-object v2, p0, Lcom/android/phone/XDivertUtility;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 261
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 262
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim_number_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 263
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 267
    iget-object v2, p0, Lcom/android/phone/XDivertUtility;->mLineNumber:[Ljava/lang/String;

    aput-object p1, v2, p2

    .line 268
    return-void
.end method
