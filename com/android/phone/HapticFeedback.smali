.class public Lcom/android/phone/HapticFeedback;
.super Ljava/lang/Object;
.source "HapticFeedback.java"


# static fields
.field private static final DURATION:J = 0xaL

.field private static final NO_REPEAT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "HapticFeedback"

.field private static final VIBRATION_PATTERN_ID:I = 0x1070020


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mHapticPattern:[J

.field private mSettingEnabled:Z

.field private mSystemSettings:Landroid/provider/Settings$System;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private loadHapticSystemPattern(Landroid/content/res/Resources;)Z
    .registers 8
    .parameter "r"

    .prologue
    const/4 v3, 0x0

    .line 139
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/phone/HapticFeedback;->mHapticPattern:[J

    .line 141
    const v4, 0x1070020

    :try_start_7
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getIntArray(I)[I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_a} :catch_18

    move-result-object v2

    .line 147
    .local v2, pattern:[I
    if-eqz v2, :cond_10

    array-length v4, v2

    if-nez v4, :cond_21

    .line 148
    :cond_10
    const-string v4, "HapticFeedback"

    const-string v5, "Haptic pattern is null or empty."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .end local v2           #pattern:[I
    :goto_17
    return v3

    .line 142
    :catch_18
    move-exception v1

    .line 143
    .local v1, nfe:Landroid/content/res/Resources$NotFoundException;
    const-string v4, "HapticFeedback"

    const-string v5, "Vibrate pattern missing."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 153
    .end local v1           #nfe:Landroid/content/res/Resources$NotFoundException;
    .restart local v2       #pattern:[I
    :cond_21
    array-length v3, v2

    new-array v3, v3, [J

    iput-object v3, p0, Lcom/android/phone/HapticFeedback;->mHapticPattern:[J

    .line 154
    const/4 v0, 0x0

    .local v0, i:I
    :goto_27
    array-length v3, v2

    if-ge v0, v3, :cond_34

    .line 155
    iget-object v3, p0, Lcom/android/phone/HapticFeedback;->mHapticPattern:[J

    aget v4, v2, v0

    int-to-long v4, v4

    aput-wide v4, v3, v0

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 157
    :cond_34
    const/4 v3, 0x1

    goto :goto_17
.end method


# virtual methods
.method public checkSystemSetting()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 107
    iget-boolean v2, p0, Lcom/android/phone/HapticFeedback;->mEnabled:Z

    if-nez v2, :cond_6

    .line 118
    :goto_5
    return-void

    .line 111
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/android/phone/HapticFeedback;->mSystemSettings:Landroid/provider/Settings$System;

    iget-object v2, p0, Lcom/android/phone/HapticFeedback;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "haptic_feedback_enabled"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 112
    .local v1, val:I
    if-eqz v1, :cond_22

    const/4 v2, 0x1

    :goto_14
    iput-boolean v2, p0, Lcom/android/phone/HapticFeedback;->mSettingEnabled:Z
    :try_end_16
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_16} :catch_17

    goto :goto_5

    .line 113
    .end local v1           #val:I
    :catch_17
    move-exception v0

    .line 114
    .local v0, nfe:Landroid/content/res/Resources$NotFoundException;
    const-string v2, "HapticFeedback"

    const-string v4, "Could not retrieve system setting."

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    iput-boolean v3, p0, Lcom/android/phone/HapticFeedback;->mSettingEnabled:Z

    goto :goto_5

    .end local v0           #nfe:Landroid/content/res/Resources$NotFoundException;
    .restart local v1       #val:I
    :cond_22
    move v2, v3

    .line 112
    goto :goto_14
.end method

.method public init(Landroid/content/Context;Z)V
    .registers 4
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 90
    iput-boolean p2, p0, Lcom/android/phone/HapticFeedback;->mEnabled:Z

    .line 91
    if-eqz p2, :cond_2a

    .line 92
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/android/phone/HapticFeedback;->mVibrator:Landroid/os/Vibrator;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/HapticFeedback;->loadHapticSystemPattern(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 94
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_2c

    iput-object v0, p0, Lcom/android/phone/HapticFeedback;->mHapticPattern:[J

    .line 96
    :cond_1d
    new-instance v0, Landroid/provider/Settings$System;

    invoke-direct {v0}, Landroid/provider/Settings$System;-><init>()V

    iput-object v0, p0, Lcom/android/phone/HapticFeedback;->mSystemSettings:Landroid/provider/Settings$System;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/HapticFeedback;->mContentResolver:Landroid/content/ContentResolver;

    .line 99
    :cond_2a
    return-void

    .line 94
    nop

    :array_2c
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public vibrate()V
    .registers 4

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/phone/HapticFeedback;->mEnabled:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/phone/HapticFeedback;->mSettingEnabled:Z

    if-nez v0, :cond_9

    .line 131
    :cond_8
    :goto_8
    return-void

    .line 130
    :cond_9
    iget-object v0, p0, Lcom/android/phone/HapticFeedback;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/android/phone/HapticFeedback;->mHapticPattern:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_8
.end method
