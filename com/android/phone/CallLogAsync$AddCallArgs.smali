.class public Lcom/android/phone/CallLogAsync$AddCallArgs;
.super Ljava/lang/Object;
.source "CallLogAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallLogAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddCallArgs"
.end annotation


# instance fields
.field public final callType:I

.field public final ci:Lcom/android/internal/telephony/CallerInfo;

.field public final context:Landroid/content/Context;

.field public final durationInSec:I

.field public final number:Ljava/lang/String;

.field public final presentation:I

.field public final subFlag:I

.field public final timestamp:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJ)V
    .registers 12
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "timestamp"
    .parameter "durationInMillis"

    .prologue
    .line 89
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 109
    iput-object p3, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 110
    iput p4, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    .line 111
    iput p5, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    .line 112
    iput-wide p6, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->timestamp:J

    .line 113
    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->subFlag:I

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJI)V
    .registers 15
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "timestamp"
    .parameter "durationInMillis"
    .parameter "subscription"

    .prologue
    .line 137
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 139
    iput-object p2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 140
    iput-object p3, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 141
    iput p4, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    .line 142
    iput p5, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    .line 143
    iput-wide p6, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->timestamp:J

    .line 144
    const-wide/16 v2, 0x3e8

    div-long v2, p8, v2

    long-to-int v2, v2

    iput v2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 146
    const/4 v2, 0x1

    if-ne p10, v2, :cond_36

    invoke-static {}, Lcom/android/phone/CallLogAsync;->access$000()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-static {}, Lcom/android/phone/CallLogAsync;->access$100()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 147
    :cond_25
    invoke-static {}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p10}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getSlotIdFromSubId(I)I

    move-result v0

    .line 148
    .local v0, slotid:I
    const/4 v1, 0x0

    .line 149
    .local v1, subid:I
    if-nez v0, :cond_34

    .line 155
    const/4 v1, 0x2

    .line 159
    :goto_31
    iput v1, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->subFlag:I

    .line 163
    .end local v0           #slotid:I
    .end local v1           #subid:I
    :goto_33
    return-void

    .line 157
    .restart local v0       #slotid:I
    .restart local v1       #subid:I
    :cond_34
    move v1, p10

    goto :goto_31

    .line 161
    .end local v0           #slotid:I
    .end local v1           #subid:I
    :cond_36
    iput p10, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->subFlag:I

    goto :goto_33
.end method
