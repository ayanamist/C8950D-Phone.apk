.class final Lcom/android/phone/PhoneUtils$8;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private backClick:J

.field private firstClick:J

.field private secondClick:J


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 2523
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2524
    iput-wide v0, p0, Lcom/android/phone/PhoneUtils$8;->firstClick:J

    .line 2525
    iput-wide v0, p0, Lcom/android/phone/PhoneUtils$8;->secondClick:J

    .line 2526
    iput-wide v0, p0, Lcom/android/phone/PhoneUtils$8;->backClick:J

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "v"
    .parameter "event"

    .prologue
    .line 2528
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_18

    .line 2529
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/android/phone/PhoneUtils$8;->firstClick:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    .line 2530
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/PhoneUtils$8;->firstClick:J

    .line 2531
    iget-wide v0, p0, Lcom/android/phone/PhoneUtils$8;->firstClick:J

    iput-wide v0, p0, Lcom/android/phone/PhoneUtils$8;->backClick:J

    .line 2542
    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0

    .line 2533
    :cond_1a
    iget-wide v0, p0, Lcom/android/phone/PhoneUtils$8;->backClick:J

    iput-wide v0, p0, Lcom/android/phone/PhoneUtils$8;->firstClick:J

    .line 2534
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/PhoneUtils$8;->secondClick:J

    .line 2535
    iget-wide v0, p0, Lcom/android/phone/PhoneUtils$8;->secondClick:J

    iput-wide v0, p0, Lcom/android/phone/PhoneUtils$8;->backClick:J

    .line 2536
    iget-wide v0, p0, Lcom/android/phone/PhoneUtils$8;->secondClick:J

    iget-wide v2, p0, Lcom/android/phone/PhoneUtils$8;->firstClick:J

    sub-long/2addr v0, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_18

    .line 2537
    const-string v0, "j00172194 .View.OnTouchListener(). time is less than 500"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->access$900(Ljava/lang/String;)V

    .line 2538
    const/4 v0, 0x1

    goto :goto_19
.end method
