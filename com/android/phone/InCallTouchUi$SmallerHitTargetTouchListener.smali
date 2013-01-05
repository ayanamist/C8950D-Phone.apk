.class Lcom/android/phone/InCallTouchUi$SmallerHitTargetTouchListener;
.super Ljava/lang/Object;
.source "InCallTouchUi.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallTouchUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmallerHitTargetTouchListener"
.end annotation


# static fields
.field private static final HIT_TARGET_PERCENT_X:I = 0x32

.field private static final HIT_TARGET_PERCENT_Y:I = 0x50

.field private static final X_EDGE:I = 0x19

.field private static final X_HIT_MAX:I = 0x4b

.field private static final X_HIT_MIN:I = 0x19

.field private static final Y_EDGE:I = 0xa

.field private static final Y_HIT_MAX:I = 0x5a

.field private static final Y_HIT_MIN:I = 0xa


# instance fields
.field mDownEventHit:Z

.field final synthetic this$0:Lcom/android/phone/InCallTouchUi;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallTouchUi;)V
    .registers 2
    .parameter

    .prologue
    .line 1385
    iput-object p1, p0, Lcom/android/phone/InCallTouchUi$SmallerHitTargetTouchListener;->this$0:Lcom/android/phone/InCallTouchUi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 13
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1426
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_3d

    .line 1430
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v0, v8

    .line 1431
    .local v0, touchX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v2, v8

    .line 1433
    .local v2, touchY:I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 1434
    .local v5, viewWidth:I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1437
    .local v4, viewHeight:I
    mul-int/lit8 v8, v0, 0x64

    int-to-float v8, v8

    int-to-float v9, v5

    div-float/2addr v8, v9

    float-to-int v1, v8

    .line 1438
    .local v1, touchXPercent:I
    mul-int/lit8 v8, v2, 0x64

    int-to-float v8, v8

    int-to-float v9, v4

    div-float/2addr v8, v9

    float-to-int v3, v8

    .line 1447
    .local v3, touchYPercent:I
    const/16 v8, 0x19

    if-lt v1, v8, :cond_36

    const/16 v8, 0x4b

    if-gt v1, v8, :cond_36

    const/16 v8, 0xa

    if-lt v3, v8, :cond_36

    const/16 v8, 0x5a

    if-le v3, v8, :cond_39

    .line 1451
    :cond_36
    iput-boolean v7, p0, Lcom/android/phone/InCallTouchUi$SmallerHitTargetTouchListener;->mDownEventHit:Z

    .line 1466
    .end local v0           #touchX:I
    .end local v1           #touchXPercent:I
    .end local v2           #touchY:I
    .end local v3           #touchYPercent:I
    .end local v4           #viewHeight:I
    .end local v5           #viewWidth:I
    :cond_38
    :goto_38
    return v6

    .line 1456
    .restart local v0       #touchX:I
    .restart local v1       #touchXPercent:I
    .restart local v2       #touchY:I
    .restart local v3       #touchYPercent:I
    .restart local v4       #viewHeight:I
    .restart local v5       #viewWidth:I
    :cond_39
    iput-boolean v6, p0, Lcom/android/phone/InCallTouchUi$SmallerHitTargetTouchListener;->mDownEventHit:Z

    move v6, v7

    .line 1457
    goto :goto_38

    .line 1466
    .end local v0           #touchX:I
    .end local v1           #touchXPercent:I
    .end local v2           #touchY:I
    .end local v3           #touchYPercent:I
    .end local v4           #viewHeight:I
    .end local v5           #viewWidth:I
    :cond_3d
    iget-boolean v8, p0, Lcom/android/phone/InCallTouchUi$SmallerHitTargetTouchListener;->mDownEventHit:Z

    if-eqz v8, :cond_38

    move v6, v7

    goto :goto_38
.end method
