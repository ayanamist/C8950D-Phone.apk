.class public Lcom/android/phone/multiwaveview/MultiWaveView;
.super Landroid/view/View;
.source "MultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/multiwaveview/MultiWaveView$OnTriggerListener;
    }
.end annotation


# static fields
.field private static final CHEVRON_ANIMATION_DURATION:I = 0x352

.field private static final CHEVRON_INCREMENTAL_DELAY:I = 0xa0

.field private static final DEBUG:Z = false

.field private static final HIDE_ANIMATION_DELAY:I = 0xc8

.field private static final HIDE_ANIMATION_DURATION:I = 0x4b0

.field private static final RETURN_TO_HOME_DELAY:I = 0x4b0

.field private static final RETURN_TO_HOME_DURATION:I = 0x12c

.field private static final SHOW_ANIMATION_DELAY:I = 0x0

.field private static final SHOW_ANIMATION_DURATION:I = 0x0

.field private static final SNAP_MARGIN_DEFAULT:F = 20.0f

.field private static final STATE_ACTIVE:[I = null

.field private static final STATE_FINISH:I = 0x4

.field private static final STATE_FIRST_TOUCH:I = 0x1

.field private static final STATE_FOCUSED:[I = null

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_INACTIVE:[I = null

.field private static final STATE_SNAP:I = 0x3

.field private static final STATE_TRACKING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MultiWaveView"

.field private static final TAP_RADIUS_SCALE_ACCESSIBILITY_ENABLED:F = 1.3f


# instance fields
.field private isFirstTriggerTargets:Z

.field private mActiveTarget:I

.field private mAnimatingTargets:Z

.field private mChevronAnimationInterpolator:Landroid/animation/TimeInterpolator;

.field private mChevronAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/multiwaveview/Tweener;",
            ">;"
        }
    .end annotation
.end field

.field private mChevronDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/multiwaveview/TargetDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectionDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectionDescriptionsResourceId:I

.field private mDragging:Z

.field private mFeedbackCount:I

.field private mGrabbedState:I

.field private mHandleAnimation:Lcom/android/phone/multiwaveview/Tweener;

.field private mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

.field private mHitRadius:F

.field private mHorizontalOffset:F

.field private mNewTargetResources:I

.field private mOnTriggerListener:Lcom/android/phone/multiwaveview/MultiWaveView$OnTriggerListener;

.field private mOuterRadius:F

.field private mOuterRing:Lcom/android/phone/multiwaveview/TargetDrawable;

.field private mResetListener:Landroid/animation/Animator$AnimatorListener;

.field private mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

.field private mSnapMargin:F

.field private mTapRadius:F

.field private mTargetAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/multiwaveview/Tweener;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDescriptionsResourceId:I

.field private mTargetDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/multiwaveview/TargetDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetResourceId:I

.field private mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

.field private mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mVerticalOffset:F

.field private mVibrationDuration:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mWaveCenterX:F

.field private mWaveCenterY:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x2

    .line 70
    new-array v0, v1, [I

    fill-array-data v0, :array_18

    sput-object v0, Lcom/android/phone/multiwaveview/MultiWaveView;->STATE_ACTIVE:[I

    .line 72
    new-array v0, v1, [I

    fill-array-data v0, :array_20

    sput-object v0, Lcom/android/phone/multiwaveview/MultiWaveView;->STATE_INACTIVE:[I

    .line 74
    new-array v0, v1, [I

    fill-array-data v0, :array_28

    sput-object v0, Lcom/android/phone/multiwaveview/MultiWaveView;->STATE_FOCUSED:[I

    return-void

    .line 70
    nop

    :array_18
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0xa2t 0x0t 0x1t 0x1t
    .end array-data

    .line 72
    :array_20
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0x5et 0xfft 0xfet 0xfet
    .end array-data

    .line 74
    :array_28
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0x9ct 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/multiwaveview/MultiWaveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 16
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 171
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    sget-object v11, Lcom/android/phone/multiwaveview/Ease$Quad;->easeOut:Landroid/animation/TimeInterpolator;

    iput-object v11, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mChevronAnimationInterpolator:Landroid/animation/TimeInterpolator;

    .line 97
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 98
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    .line 99
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mChevronAnimations:Ljava/util/ArrayList;

    .line 100
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    .line 109
    const/4 v11, 0x3

    iput v11, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mFeedbackCount:I

    .line 110
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mVibrationDuration:I

    .line 112
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mActiveTarget:I

    .line 116
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mVerticalOffset:F

    .line 117
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHorizontalOffset:F

    .line 118
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRadius:F

    .line 119
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHitRadius:F

    .line 120
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mSnapMargin:F

    .line 124
    new-instance v11, Lcom/android/phone/multiwaveview/MultiWaveView$1;

    invoke-direct {v11, p0}, Lcom/android/phone/multiwaveview/MultiWaveView$1;-><init>(Lcom/android/phone/multiwaveview/MultiWaveView;)V

    iput-object v11, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    .line 130
    new-instance v11, Lcom/android/phone/multiwaveview/MultiWaveView$2;

    invoke-direct {v11, p0}, Lcom/android/phone/multiwaveview/MultiWaveView$2;-><init>(Lcom/android/phone/multiwaveview/MultiWaveView;)V

    iput-object v11, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    .line 137
    new-instance v11, Lcom/android/phone/multiwaveview/MultiWaveView$3;

    invoke-direct {v11, p0}, Lcom/android/phone/multiwaveview/MultiWaveView$3;-><init>(Lcom/android/phone/multiwaveview/MultiWaveView;)V

    iput-object v11, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 145
    new-instance v11, Lcom/android/phone/multiwaveview/MultiWaveView$4;

    invoke-direct {v11, p0}, Lcom/android/phone/multiwaveview/MultiWaveView$4;-><init>(Lcom/android/phone/multiwaveview/MultiWaveView;)V

    iput-object v11, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    .line 159
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->isFirstTriggerTargets:Z

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 174
    .local v9, res:Landroid/content/res/Resources;
    sget-object v11, Lcom/android/internal/R$styleable;->MultiWaveView:[I

    invoke-virtual {p1, p2, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 175
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v11, 0x9

    iget v12, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRadius:F

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    iput v11, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRadius:F

    .line 176
    const/16 v11, 0xf

    iget v12, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHorizontalOffset:F

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    iput v11, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHorizontalOffset:F

    .line 178
    const/16 v11, 0xe

    iget v12, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mVerticalOffset:F

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    iput v11, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mVerticalOffset:F

    .line 180
    const/16 v11, 0xa

    iget v12, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHitRadius:F

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    iput v11, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHitRadius:F

    .line 181
    const/16 v11, 0xc

    iget v12, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mSnapMargin:F

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    iput v11, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mSnapMargin:F

    .line 182
    const/16 v11, 0xb

    iget v12, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mVibrationDuration:I

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mVibrationDuration:I

    .line 184
    const/16 v11, 0xd

    iget v12, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mFeedbackCount:I

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mFeedbackCount:I

    .line 186
    new-instance v11, Lcom/android/phone/multiwaveview/TargetDrawable;

    const/4 v12, 0x3

    invoke-virtual {v0, v12}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-direct {v11, v9, v12}, Lcom/android/phone/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    iput-object v11, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    .line 188
    iget-object v11, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v11}, Lcom/android/phone/multiwaveview/TargetDrawable;->getWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->floatValue()F

    move-result v11

    iput v11, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTapRadius:F

    .line 189
    new-instance v11, Lcom/android/phone/multiwaveview/TargetDrawable;

    const/16 v12, 0x8

    invoke-virtual {v0, v12}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-direct {v11, v9, v12}, Lcom/android/phone/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    iput-object v11, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/phone/multiwaveview/TargetDrawable;

    .line 192
    const/4 v11, 0x4

    new-array v4, v11, [I

    fill-array-data v4, :array_15e

    .line 197
    .local v4, chevrons:[I
    move-object v1, v4

    .local v1, arr$:[I
    array-length v7, v1

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_de
    if-ge v6, v7, :cond_ff

    aget v2, v1, v6

    .line 198
    .local v2, chevron:I
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 199
    .local v3, chevronDrawable:Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_e7
    iget v11, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mFeedbackCount:I

    if-ge v5, v11, :cond_fc

    .line 200
    iget-object v12, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    if-eqz v3, :cond_fa

    new-instance v11, Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-direct {v11, v9, v3}, Lcom/android/phone/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    :goto_f4
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    add-int/lit8 v5, v5, 0x1

    goto :goto_e7

    .line 200
    :cond_fa
    const/4 v11, 0x0

    goto :goto_f4

    .line 197
    :cond_fc
    add-int/lit8 v6, v6, 0x1

    goto :goto_de

    .line 206
    .end local v2           #chevron:I
    .end local v3           #chevronDrawable:Landroid/graphics/drawable/Drawable;
    .end local v5           #i:I
    :cond_ff
    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    .line 207
    .local v8, outValue:Landroid/util/TypedValue;
    const/4 v11, 0x2

    invoke-virtual {v0, v11, v8}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v11

    if-eqz v11, :cond_110

    .line 208
    iget v11, v8, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {p0, v11}, Lcom/android/phone/multiwaveview/MultiWaveView;->internalSetTargetResources(I)V

    .line 210
    :cond_110
    iget-object v11, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    if-eqz v11, :cond_11c

    iget-object v11, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_124

    .line 211
    :cond_11c
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Must specify at least one target drawable"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 215
    :cond_124
    const/4 v11, 0x0

    invoke-virtual {v0, v11, v8}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v11

    if-eqz v11, :cond_13a

    .line 216
    iget v10, v8, Landroid/util/TypedValue;->resourceId:I

    .line 217
    .local v10, resourceId:I
    if-nez v10, :cond_137

    .line 218
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Must specify target descriptions"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 220
    :cond_137
    invoke-virtual {p0, v10}, Lcom/android/phone/multiwaveview/MultiWaveView;->setTargetDescriptionsResourceId(I)V

    .line 224
    .end local v10           #resourceId:I
    :cond_13a
    const/4 v11, 0x1

    invoke-virtual {v0, v11, v8}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v11

    if-eqz v11, :cond_150

    .line 225
    iget v10, v8, Landroid/util/TypedValue;->resourceId:I

    .line 226
    .restart local v10       #resourceId:I
    if-nez v10, :cond_14d

    .line 227
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Must specify direction descriptions"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 229
    :cond_14d
    invoke-virtual {p0, v10}, Lcom/android/phone/multiwaveview/MultiWaveView;->setDirectionDescriptionsResourceId(I)V

    .line 232
    .end local v10           #resourceId:I
    :cond_150
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 233
    iget v11, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mVibrationDuration:I

    if-lez v11, :cond_15c

    const/4 v11, 0x1

    :goto_158
    invoke-virtual {p0, v11}, Lcom/android/phone/multiwaveview/MultiWaveView;->setVibrateEnabled(Z)V

    .line 234
    return-void

    .line 233
    :cond_15c
    const/4 v11, 0x0

    goto :goto_158

    .line 192
    :array_15e
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/phone/multiwaveview/MultiWaveView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterX:F

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/multiwaveview/MultiWaveView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterY:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/multiwaveview/MultiWaveView;IFF)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/multiwaveview/MultiWaveView;->switchToState(IFF)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/multiwaveview/MultiWaveView;)Lcom/android/phone/multiwaveview/TargetDrawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/multiwaveview/MultiWaveView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mNewTargetResources:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/phone/multiwaveview/MultiWaveView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mNewTargetResources:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/phone/multiwaveview/MultiWaveView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/phone/multiwaveview/MultiWaveView;->internalSetTargetResources(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/multiwaveview/MultiWaveView;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/phone/multiwaveview/MultiWaveView;->hideTargets(Z)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/phone/multiwaveview/MultiWaveView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mAnimatingTargets:Z

    return p1
.end method

.method private announceTargets()V
    .registers 9

    .prologue
    .line 978
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 979
    .local v5, utterance:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 980
    .local v2, targetCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v2, :cond_3f

    .line 981
    invoke-direct {p0, v1}, Lcom/android/phone/multiwaveview/MultiWaveView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v3

    .line 982
    .local v3, targetDescription:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/phone/multiwaveview/MultiWaveView;->getDirectionDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 983
    .local v0, directionDescription:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2f

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2f

    .line 985
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 986
    .local v4, text:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    .end local v4           #text:Ljava/lang/String;
    :cond_2f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3c

    .line 989
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/multiwaveview/MultiWaveView;->announceText(Ljava/lang/String;)V

    .line 980
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 992
    .end local v0           #directionDescription:Ljava/lang/String;
    .end local v3           #targetDescription:Ljava/lang/String;
    :cond_3f
    return-void
.end method

.method private announceText(Ljava/lang/String;)V
    .registers 3
    .parameter "text"

    .prologue
    .line 995
    invoke-virtual {p0, p1}, Lcom/android/phone/multiwaveview/MultiWaveView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 996
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/phone/multiwaveview/MultiWaveView;->sendAccessibilityEvent(I)V

    .line 997
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/multiwaveview/MultiWaveView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 998
    return-void
.end method

.method private deactivateTargets()V
    .registers 4

    .prologue
    .line 387
    iget-object v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/multiwaveview/TargetDrawable;

    .line 388
    .local v1, target:Lcom/android/phone/multiwaveview/TargetDrawable;
    sget-object v2, Lcom/android/phone/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v1, v2}, Lcom/android/phone/multiwaveview/TargetDrawable;->setState([I)V

    goto :goto_6

    .line 390
    .end local v1           #target:Lcom/android/phone/multiwaveview/TargetDrawable;
    :cond_18
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mActiveTarget:I

    .line 391
    return-void
.end method

.method private dispatchGrabbedEvent(I)V
    .registers 3
    .parameter "whichHandler"

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->vibrate()V

    .line 429
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/android/phone/multiwaveview/MultiWaveView$OnTriggerListener;

    if-eqz v0, :cond_c

    .line 430
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/android/phone/multiwaveview/MultiWaveView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/phone/multiwaveview/MultiWaveView$OnTriggerListener;->onGrabbed(Landroid/view/View;I)V

    .line 432
    :cond_c
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .registers 3
    .parameter "whichHandle"

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->isFirstTriggerTargets:Z

    if-eqz v0, :cond_13

    .line 416
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->isFirstTriggerTargets:Z

    .line 421
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->vibrate()V

    .line 422
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/android/phone/multiwaveview/MultiWaveView$OnTriggerListener;

    if-eqz v0, :cond_13

    .line 423
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/android/phone/multiwaveview/MultiWaveView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/phone/multiwaveview/MultiWaveView$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 425
    :cond_13
    return-void
.end method

.method private dist2(FF)F
    .registers 5
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 964
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private doFinish()V
    .registers 13

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/high16 v5, 0x3f80

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 435
    iget v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mActiveTarget:I

    .line 436
    .local v0, activeTarget:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_96

    move v1, v3

    .line 439
    .local v1, targetHit:Z
    :goto_c
    invoke-direct {p0, v3}, Lcom/android/phone/multiwaveview/MultiWaveView;->hideTargets(Z)V

    .line 442
    iget-object v6, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    if-eqz v1, :cond_99

    const/4 v2, 0x0

    :goto_14
    invoke-virtual {v6, v2}, Lcom/android/phone/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 443
    if-eqz v1, :cond_9c

    .line 444
    iget-object v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/multiwaveview/TargetDrawable;

    sget-object v6, Lcom/android/phone/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v2, v6}, Lcom/android/phone/multiwaveview/TargetDrawable;->setState([I)V

    .line 446
    invoke-direct {p0, v0}, Lcom/android/phone/multiwaveview/MultiWaveView;->hideUnselected(I)V

    .line 450
    iget v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mActiveTarget:I

    invoke-direct {p0, v2}, Lcom/android/phone/multiwaveview/MultiWaveView;->dispatchTriggerEvent(I)V

    .line 451
    iget-object v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    const-wide/16 v6, 0x0

    const/16 v8, 0xe

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "ease"

    aput-object v9, v8, v4

    sget-object v9, Lcom/android/phone/multiwaveview/Ease$Quart;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v9, v8, v3

    const-string v3, "delay"

    aput-object v3, v8, v10

    const/16 v3, 0x4b0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v11

    const/4 v3, 0x4

    const-string v9, "alpha"

    aput-object v9, v8, v3

    const/4 v3, 0x5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v8, v3

    const/4 v3, 0x6

    const-string v5, "x"

    aput-object v5, v8, v3

    const/4 v3, 0x7

    iget v5, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterX:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v8, v3

    const/16 v3, 0x8

    const-string v5, "y"

    aput-object v5, v8, v3

    const/16 v3, 0x9

    iget v5, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterY:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v8, v3

    const/16 v3, 0xa

    const-string v5, "onUpdate"

    aput-object v5, v8, v3

    const/16 v3, 0xb

    iget-object v5, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v5, v8, v3

    const/16 v3, 0xc

    const-string v5, "onComplete"

    aput-object v5, v8, v3

    const/16 v3, 0xd

    iget-object v5, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v5, v8, v3

    invoke-static {v2, v6, v7, v8}, Lcom/android/phone/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/phone/multiwaveview/Tweener;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleAnimation:Lcom/android/phone/multiwaveview/Tweener;

    .line 471
    :goto_92
    invoke-direct {p0, v4}, Lcom/android/phone/multiwaveview/MultiWaveView;->setGrabbedState(I)V

    .line 472
    return-void

    .end local v1           #targetHit:Z
    :cond_96
    move v1, v4

    .line 436
    goto/16 :goto_c

    .restart local v1       #targetHit:Z
    :cond_99
    move v2, v5

    .line 442
    goto/16 :goto_14

    .line 461
    :cond_9c
    iget-object v6, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    const-wide/16 v7, 0x12c

    const/16 v2, 0xe

    new-array v9, v2, [Ljava/lang/Object;

    const-string v2, "ease"

    aput-object v2, v9, v4

    sget-object v2, Lcom/android/phone/multiwaveview/Ease$Quart;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v2, v9, v3

    const-string v2, "delay"

    aput-object v2, v9, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v11

    const/4 v2, 0x4

    const-string v3, "alpha"

    aput-object v3, v9, v2

    const/4 v2, 0x5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v9, v2

    const/4 v2, 0x6

    const-string v3, "x"

    aput-object v3, v9, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterX:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v9, v2

    const/16 v2, 0x8

    const-string v3, "y"

    aput-object v3, v9, v2

    const/16 v2, 0x9

    iget v3, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterY:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v9, v2

    const/16 v2, 0xa

    const-string v3, "onUpdate"

    aput-object v3, v9, v2

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v3, v9, v2

    const/16 v2, 0xc

    const-string v3, "onComplete"

    aput-object v3, v9, v2

    const/16 v3, 0xd

    iget-boolean v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mDragging:Z

    if-eqz v2, :cond_103

    iget-object v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    :goto_fa
    aput-object v2, v9, v3

    invoke-static {v6, v7, v8, v9}, Lcom/android/phone/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/phone/multiwaveview/Tweener;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleAnimation:Lcom/android/phone/multiwaveview/Tweener;

    goto :goto_92

    :cond_103
    iget-object v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    goto :goto_fa
.end method

.method private dump()V
    .registers 4

    .prologue
    .line 237
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Outer Radius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HitRadius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHitRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnapMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mSnapMargin:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FeedbackCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mFeedbackCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VibrationDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mVibrationDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TapRadius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTapRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaveCenterX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaveCenterY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HorizontalOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHorizontalOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VerticalOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mVerticalOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void
.end method

.method private getDirectionDescription(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1014
    :cond_c
    iget v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mDirectionDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/android/phone/multiwaveview/MultiWaveView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    .line 1015
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_2b

    .line 1016
    const-string v0, "MultiWaveView"

    const-string v1, "The number of target drawables must be euqal to the number of direction descriptions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    const/4 v0, 0x0

    .line 1021
    :goto_2a
    return-object v0

    :cond_2b
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2a
.end method

.method private getScaledTapRadiusSquared()F
    .registers 4

    .prologue
    .line 969
    iget-object v1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 970
    const v1, 0x3fa66666

    iget v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTapRadius:F

    mul-float v0, v1, v2

    .line 974
    .local v0, scaledTapRadius:F
    :goto_13
    invoke-direct {p0, v0}, Lcom/android/phone/multiwaveview/MultiWaveView;->square(F)F

    move-result v1

    return v1

    .line 972
    .end local v0           #scaledTapRadius:F
    :cond_18
    iget v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTapRadius:F

    .restart local v0       #scaledTapRadius:F
    goto :goto_13
.end method

.method private getTargetDescription(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1002
    :cond_c
    iget v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/android/phone/multiwaveview/MultiWaveView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    .line 1003
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_2b

    .line 1004
    const-string v0, "MultiWaveView"

    const-string v1, "The number of target drawables must be euqal to the number of target descriptions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    const/4 v0, 0x0

    .line 1009
    :goto_2a
    return-object v0

    :cond_2b
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2a
.end method

.method private handleDown(Landroid/view/MotionEvent;)V
    .registers 3
    .parameter "event"

    .prologue
    .line 741
    invoke-direct {p0, p1}, Lcom/android/phone/multiwaveview/MultiWaveView;->trySwitchToFirstTouchState(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 742
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mDragging:Z

    .line 743
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->stopTargetAnimation()V

    .line 744
    invoke-virtual {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->ping()V

    .line 746
    :cond_f
    return-void
.end method

.method private handleMove(Landroid/view/MotionEvent;)V
    .registers 32
    .parameter "event"

    .prologue
    .line 754
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mDragging:Z

    move/from16 v28, v0

    if-nez v28, :cond_c

    .line 755
    invoke-direct/range {p0 .. p1}, Lcom/android/phone/multiwaveview/MultiWaveView;->trySwitchToFirstTouchState(Landroid/view/MotionEvent;)Z

    .line 826
    :goto_b
    return-void

    .line 759
    :cond_c
    const/4 v4, -0x1

    .line 760
    .local v4, activeTarget:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v10

    .line 761
    .local v10, historySize:I
    const/4 v13, 0x0

    .local v13, k:I
    :goto_12
    add-int/lit8 v28, v10, 0x1

    move/from16 v0, v28

    if-ge v13, v0, :cond_1b5

    .line 762
    if-ge v13, v10, :cond_f9

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v26

    .line 763
    .local v26, x:F
    :goto_20
    if-ge v13, v10, :cond_ff

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v27

    .line 764
    .local v27, y:F
    :goto_28
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterX:F

    move/from16 v28, v0

    sub-float v24, v26, v28

    .line 765
    .local v24, tx:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterY:F

    move/from16 v28, v0

    sub-float v25, v27, v28

    .line 766
    .local v25, ty:F
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/phone/multiwaveview/MultiWaveView;->dist2(FF)F

    move-result v28

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v23, v0

    .line 767
    .local v23, touchRadius:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRadius:F

    move/from16 v28, v0

    cmpl-float v28, v23, v28

    if-lez v28, :cond_105

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRadius:F

    move/from16 v28, v0

    div-float v18, v28, v23

    .line 768
    .local v18, scale:F
    :goto_62
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterX:F

    move/from16 v28, v0

    mul-float v29, v24, v18

    add-float v14, v28, v29

    .line 769
    .local v14, limitX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterY:F

    move/from16 v28, v0

    mul-float v29, v25, v18

    add-float v15, v28, v29

    .line 771
    .local v15, limitY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_109

    const/16 v19, 0x1

    .line 772
    .local v19, singleTarget:Z
    :goto_8a
    if-eqz v19, :cond_10d

    .line 774
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRadius:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mSnapMargin:F

    move/from16 v29, v0

    sub-float v20, v28, v29

    .line 775
    .local v20, snapRadius:F
    cmpl-float v28, v23, v20

    if-lez v28, :cond_a3

    .line 776
    const/4 v4, 0x0

    .line 777
    move/from16 v26, v14

    .line 778
    move/from16 v27, v15

    .line 798
    .end local v20           #snapRadius:F
    :cond_a3
    :goto_a3
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v4, v0, :cond_18e

    .line 799
    const/16 v28, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/multiwaveview/MultiWaveView;->switchToState(IFF)V

    .line 800
    if-eqz v19, :cond_166

    move/from16 v16, v14

    .line 801
    .local v16, newX:F
    :goto_ba
    if-eqz v19, :cond_17a

    move/from16 v17, v15

    .line 802
    .local v17, newY:F
    :goto_be
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/multiwaveview/MultiWaveView;->moveHandleTo(FFZ)V

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/phone/multiwaveview/TargetDrawable;

    .line 804
    .local v6, currentTarget:Lcom/android/phone/multiwaveview/TargetDrawable;
    sget-object v28, Lcom/android/phone/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lcom/android/phone/multiwaveview/TargetDrawable;->hasState([I)Z

    move-result v28

    if-eqz v28, :cond_f5

    .line 805
    sget-object v28, Lcom/android/phone/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lcom/android/phone/multiwaveview/TargetDrawable;->setState([I)V

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/phone/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 761
    .end local v6           #currentTarget:Lcom/android/phone/multiwaveview/TargetDrawable;
    .end local v16           #newX:F
    .end local v17           #newY:F
    :cond_f5
    :goto_f5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_12

    .line 762
    .end local v14           #limitX:F
    .end local v15           #limitY:F
    .end local v18           #scale:F
    .end local v19           #singleTarget:Z
    .end local v23           #touchRadius:F
    .end local v24           #tx:F
    .end local v25           #ty:F
    .end local v26           #x:F
    .end local v27           #y:F
    :cond_f9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v26

    goto/16 :goto_20

    .line 763
    .restart local v26       #x:F
    :cond_ff
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v27

    goto/16 :goto_28

    .line 767
    .restart local v23       #touchRadius:F
    .restart local v24       #tx:F
    .restart local v25       #ty:F
    .restart local v27       #y:F
    :cond_105
    const/high16 v18, 0x3f80

    goto/16 :goto_62

    .line 771
    .restart local v14       #limitX:F
    .restart local v15       #limitY:F
    .restart local v18       #scale:F
    :cond_109
    const/16 v19, 0x0

    goto/16 :goto_8a

    .line 782
    .restart local v19       #singleTarget:Z
    :cond_10d
    const v5, 0x7f7fffff

    .line 783
    .local v5, best:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHitRadius:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHitRadius:F

    move/from16 v29, v0

    mul-float v11, v28, v29

    .line 784
    .local v11, hitRadius2:F
    const/4 v12, 0x0

    .local v12, i:I
    :goto_11f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v12, v0, :cond_160

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/phone/multiwaveview/TargetDrawable;

    .line 787
    .local v21, target:Lcom/android/phone/multiwaveview/TargetDrawable;
    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/multiwaveview/TargetDrawable;->getX()F

    move-result v28

    sub-float v8, v14, v28

    .line 788
    .local v8, dx:F
    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/multiwaveview/TargetDrawable;->getY()F

    move-result v28

    sub-float v9, v15, v28

    .line 789
    .local v9, dy:F
    mul-float v28, v8, v8

    mul-float v29, v9, v9

    add-float v7, v28, v29

    .line 790
    .local v7, dist2:F
    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/multiwaveview/TargetDrawable;->isValid()Z

    move-result v28

    if-eqz v28, :cond_15d

    cmpg-float v28, v7, v11

    if-gez v28, :cond_15d

    cmpg-float v28, v7, v5

    if-gez v28, :cond_15d

    .line 791
    move v4, v12

    .line 792
    move v5, v7

    .line 784
    :cond_15d
    add-int/lit8 v12, v12, 0x1

    goto :goto_11f

    .line 795
    .end local v7           #dist2:F
    .end local v8           #dx:F
    .end local v9           #dy:F
    .end local v21           #target:Lcom/android/phone/multiwaveview/TargetDrawable;
    :cond_160
    move/from16 v26, v14

    .line 796
    move/from16 v27, v15

    goto/16 :goto_a3

    .line 800
    .end local v5           #best:F
    .end local v11           #hitRadius2:F
    .end local v12           #i:I
    :cond_166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual/range {v28 .. v28}, Lcom/android/phone/multiwaveview/TargetDrawable;->getX()F

    move-result v16

    goto/16 :goto_ba

    .line 801
    .restart local v16       #newX:F
    :cond_17a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual/range {v28 .. v28}, Lcom/android/phone/multiwaveview/TargetDrawable;->getY()F

    move-result v17

    goto/16 :goto_be

    .line 809
    .end local v16           #newX:F
    :cond_18e
    const/16 v28, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/multiwaveview/MultiWaveView;->switchToState(IFF)V

    .line 810
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/multiwaveview/MultiWaveView;->moveHandleTo(FFZ)V

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    move-object/from16 v28, v0

    const/high16 v29, 0x3f80

    invoke-virtual/range {v28 .. v29}, Lcom/android/phone/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto/16 :goto_f5

    .line 816
    .end local v14           #limitX:F
    .end local v15           #limitY:F
    .end local v18           #scale:F
    .end local v19           #singleTarget:Z
    .end local v23           #touchRadius:F
    .end local v24           #tx:F
    .end local v25           #ty:F
    .end local v26           #x:F
    .end local v27           #y:F
    :cond_1b5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/phone/multiwaveview/MultiWaveView;->invalidateGlobalRegion(Lcom/android/phone/multiwaveview/TargetDrawable;)V

    .line 818
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mActiveTarget:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-eq v0, v4, :cond_1f4

    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v4, v0, :cond_1f4

    .line 819
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/multiwaveview/MultiWaveView;->dispatchGrabbedEvent(I)V

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v28

    if-eqz v28, :cond_1f4

    .line 821
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/multiwaveview/MultiWaveView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v22

    .line 822
    .local v22, targetContentDescription:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/phone/multiwaveview/MultiWaveView;->announceText(Ljava/lang/String;)V

    .line 825
    .end local v22           #targetContentDescription:Ljava/lang/String;
    :cond_1f4
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mActiveTarget:I

    goto/16 :goto_b
.end method

.method private handleUp(Landroid/view/MotionEvent;)V
    .registers 5
    .parameter "event"

    .prologue
    .line 750
    const/4 v0, 0x4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/multiwaveview/MultiWaveView;->switchToState(IFF)V

    .line 751
    return-void
.end method

.method private hideChevrons()V
    .registers 4

    .prologue
    .line 932
    iget-object v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/multiwaveview/TargetDrawable;

    .line 933
    .local v0, chevron:Lcom/android/phone/multiwaveview/TargetDrawable;
    if-eqz v0, :cond_6

    .line 934
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/phone/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_6

    .line 937
    .end local v0           #chevron:Lcom/android/phone/multiwaveview/TargetDrawable;
    :cond_19
    return-void
.end method

.method private hideTargets(Z)V
    .registers 16
    .parameter "animate"

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 511
    iget-object v4, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_10

    .line 512
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->stopTargetAnimation()V

    .line 516
    :cond_10
    iput-boolean p1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mAnimatingTargets:Z

    .line 517
    if-eqz p1, :cond_9a

    .line 518
    if-eqz p1, :cond_5d

    const/16 v0, 0x4b0

    .line 519
    .local v0, duration:I
    :goto_18
    iget-object v4, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/multiwaveview/TargetDrawable;

    .line 520
    .local v2, target:Lcom/android/phone/multiwaveview/TargetDrawable;
    sget-object v4, Lcom/android/phone/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v2, v4}, Lcom/android/phone/multiwaveview/TargetDrawable;->setState([I)V

    .line 521
    iget-object v4, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    int-to-long v5, v0

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "alpha"

    aput-object v8, v7, v3

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v11

    const-string v8, "delay"

    aput-object v8, v7, v12

    const/16 v8, 0xc8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v13

    const/4 v8, 0x4

    const-string v9, "onUpdate"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget-object v9, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v9, v7, v8

    invoke-static {v2, v5, v6, v7}, Lcom/android/phone/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/phone/multiwaveview/Tweener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .end local v0           #duration:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #target:Lcom/android/phone/multiwaveview/TargetDrawable;
    :cond_5d
    move v0, v3

    .line 518
    goto :goto_18

    .line 526
    .restart local v0       #duration:I
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_5f
    iget-object v4, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/phone/multiwaveview/TargetDrawable;

    int-to-long v6, v0

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "alpha"

    aput-object v9, v8, v3

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v8, v11

    const-string v3, "delay"

    aput-object v3, v8, v12

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v13

    const/4 v3, 0x4

    const-string v9, "onUpdate"

    aput-object v9, v8, v3

    const/4 v3, 0x5

    iget-object v9, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v9, v8, v3

    const/4 v3, 0x6

    const-string v9, "onComplete"

    aput-object v9, v8, v3

    const/4 v3, 0x7

    iget-object v9, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v9, v8, v3

    invoke-static {v5, v6, v7, v8}, Lcom/android/phone/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/phone/multiwaveview/Tweener;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    .end local v0           #duration:I
    :goto_99
    return-void

    .line 532
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_9a
    iget-object v3, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_a0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/multiwaveview/TargetDrawable;

    .line 533
    .restart local v2       #target:Lcom/android/phone/multiwaveview/TargetDrawable;
    sget-object v3, Lcom/android/phone/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v2, v3}, Lcom/android/phone/multiwaveview/TargetDrawable;->setState([I)V

    .line 534
    invoke-virtual {v2, v10}, Lcom/android/phone/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_a0

    .line 536
    .end local v2           #target:Lcom/android/phone/multiwaveview/TargetDrawable;
    :cond_b5
    iget-object v3, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v3, v10}, Lcom/android/phone/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_99
.end method

.method private hideUnselected(I)V
    .registers 5
    .parameter "active"

    .prologue
    const/4 v2, 0x0

    .line 502
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 503
    if-eq v0, p1, :cond_17

    .line 504
    iget-object v1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v1, v2}, Lcom/android/phone/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 502
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 507
    :cond_1a
    iget-object v1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v1, v2}, Lcom/android/phone/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 508
    return-void
.end method

.method private internalSetTargetResources(I)V
    .registers 9
    .parameter "resourceId"

    .prologue
    .line 581
    invoke-virtual {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 582
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 583
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 584
    .local v1, count:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 585
    .local v5, targetDrawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/multiwaveview/TargetDrawable;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_16
    if-ge v3, v1, :cond_27

    .line 586
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 587
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    new-instance v6, Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-direct {v6, v4, v2}, Lcom/android/phone/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 589
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_27
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 590
    iput p1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetResourceId:I

    .line 591
    iput-object v5, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 592
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->updateTargetPositions()V

    .line 593
    return-void
.end method

.method private loadDescriptions(I)Ljava/util/ArrayList;
    .registers 8
    .parameter "resourceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1025
    invoke-virtual {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1026
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 1027
    .local v2, count:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1028
    .local v4, targetContentDescriptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_16
    if-ge v3, v2, :cond_22

    .line 1029
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1030
    .local v1, contentDescription:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1028
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1032
    .end local v1           #contentDescription:Ljava/lang/String;
    :cond_22
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1033
    return-object v4
.end method

.method private moveHandleTo(FFZ)V
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "animate"

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v0, p1}, Lcom/android/phone/multiwaveview/TargetDrawable;->setX(F)V

    .line 737
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v0, p2}, Lcom/android/phone/multiwaveview/TargetDrawable;->setY(F)V

    .line 738
    return-void
.end method

.method private performInitialLayout(FF)V
    .registers 8
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 881
    iget v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_17

    .line 882
    const/high16 v0, 0x3f00

    invoke-direct {p0, p1, p2}, Lcom/android/phone/multiwaveview/MultiWaveView;->dist2(FF)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRadius:F

    .line 884
    :cond_17
    iget v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHitRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2f

    .line 886
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/phone/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHitRadius:F

    .line 888
    :cond_2f
    iget v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mSnapMargin:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_4a

    .line 889
    const/4 v0, 0x1

    const/high16 v1, 0x41a0

    invoke-virtual {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mSnapMargin:F

    .line 892
    :cond_4a
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->hideChevrons()V

    .line 893
    invoke-direct {p0, v4}, Lcom/android/phone/multiwaveview/MultiWaveView;->hideTargets(Z)V

    .line 894
    invoke-direct {p0, p1, p2, v4}, Lcom/android/phone/multiwaveview/MultiWaveView;->moveHandleTo(FFZ)V

    .line 895
    return-void
.end method

.method private resolveMeasured(II)I
    .registers 6
    .parameter "measureSpec"
    .parameter "desired"

    .prologue
    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 267
    .local v1, specSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_16

    .line 276
    move v0, v1

    .line 278
    :goto_d
    return v0

    .line 269
    :sswitch_e
    move v0, p2

    .line 270
    goto :goto_d

    .line 272
    :sswitch_10
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 273
    goto :goto_d

    .line 267
    nop

    :sswitch_data_16
    .sparse-switch
        -0x80000000 -> :sswitch_10
        0x0 -> :sswitch_e
    .end sparse-switch
.end method

.method private responseToIncommingCallWhenMotionDown()V
    .registers 11

    .prologue
    const/4 v3, 0x1

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    .line 475
    iget v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mActiveTarget:I

    .line 476
    .local v0, activeTarget:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_93

    move v1, v3

    .line 479
    .local v1, targetHit:Z
    :goto_a
    iget-object v6, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    if-eqz v1, :cond_96

    const/4 v2, 0x0

    :goto_f
    invoke-virtual {v6, v2}, Lcom/android/phone/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 480
    if-eqz v1, :cond_8f

    .line 481
    iget-object v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/multiwaveview/TargetDrawable;

    sget-object v6, Lcom/android/phone/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v2, v6}, Lcom/android/phone/multiwaveview/TargetDrawable;->setState([I)V

    .line 483
    invoke-direct {p0, v0}, Lcom/android/phone/multiwaveview/MultiWaveView;->hideUnselected(I)V

    .line 487
    iget v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mActiveTarget:I

    invoke-direct {p0, v2}, Lcom/android/phone/multiwaveview/MultiWaveView;->dispatchTriggerEvent(I)V

    .line 488
    iget-object v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    const-wide/16 v6, 0x0

    const/16 v8, 0xe

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "ease"

    aput-object v9, v8, v4

    sget-object v9, Lcom/android/phone/multiwaveview/Ease$Quart;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v9, v8, v3

    const/4 v3, 0x2

    const-string v9, "delay"

    aput-object v9, v8, v3

    const/4 v3, 0x3

    const/16 v9, 0x4b0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    const/4 v3, 0x4

    const-string v9, "alpha"

    aput-object v9, v8, v3

    const/4 v3, 0x5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v8, v3

    const/4 v3, 0x6

    const-string v5, "x"

    aput-object v5, v8, v3

    const/4 v3, 0x7

    iget v5, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterX:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v8, v3

    const/16 v3, 0x8

    const-string v5, "y"

    aput-object v5, v8, v3

    const/16 v3, 0x9

    iget v5, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterY:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v8, v3

    const/16 v3, 0xa

    const-string v5, "onUpdate"

    aput-object v5, v8, v3

    const/16 v3, 0xb

    iget-object v5, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v5, v8, v3

    const/16 v3, 0xc

    const-string v5, "onComplete"

    aput-object v5, v8, v3

    const/16 v3, 0xd

    iget-object v5, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v5, v8, v3

    invoke-static {v2, v6, v7, v8}, Lcom/android/phone/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/phone/multiwaveview/Tweener;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleAnimation:Lcom/android/phone/multiwaveview/Tweener;

    .line 497
    :cond_8f
    invoke-direct {p0, v4}, Lcom/android/phone/multiwaveview/MultiWaveView;->setGrabbedState(I)V

    .line 498
    return-void

    .end local v1           #targetHit:Z
    :cond_93
    move v1, v4

    .line 476
    goto/16 :goto_a

    .restart local v1       #targetHit:Z
    :cond_96
    move v2, v5

    .line 479
    goto/16 :goto_f
.end method

.method private setGrabbedState(I)V
    .registers 4
    .parameter "newState"

    .prologue
    .line 854
    iget v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mGrabbedState:I

    if-eq p1, v0, :cond_16

    .line 855
    if-eqz p1, :cond_9

    .line 856
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->vibrate()V

    .line 858
    :cond_9
    iput p1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mGrabbedState:I

    .line 859
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/android/phone/multiwaveview/MultiWaveView$OnTriggerListener;

    if-eqz v0, :cond_16

    .line 860
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/android/phone/multiwaveview/MultiWaveView$OnTriggerListener;

    iget v1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/android/phone/multiwaveview/MultiWaveView$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 863
    :cond_16
    return-void
.end method

.method private showTargets(Z)V
    .registers 15
    .parameter "animate"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x3f80

    .line 541
    iget-object v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_11

    .line 542
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->stopTargetAnimation()V

    .line 544
    :cond_11
    iput-boolean p1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mAnimatingTargets:Z

    .line 545
    if-eqz p1, :cond_93

    .line 546
    iget-object v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/multiwaveview/TargetDrawable;

    .line 547
    .local v1, target:Lcom/android/phone/multiwaveview/TargetDrawable;
    sget-object v2, Lcom/android/phone/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v1, v2}, Lcom/android/phone/multiwaveview/TargetDrawable;->setState([I)V

    .line 548
    iget-object v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    const-wide/16 v3, 0x0

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "alpha"

    aput-object v6, v5, v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v10

    const-string v6, "delay"

    aput-object v6, v5, v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v12

    const/4 v6, 0x4

    const-string v7, "onUpdate"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v7, v5, v6

    invoke-static {v1, v3, v4, v5}, Lcom/android/phone/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/phone/multiwaveview/Tweener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 553
    .end local v1           #target:Lcom/android/phone/multiwaveview/TargetDrawable;
    :cond_59
    iget-object v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/phone/multiwaveview/TargetDrawable;

    const-wide/16 v4, 0x0

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "alpha"

    aput-object v7, v6, v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v10

    const-string v7, "delay"

    aput-object v7, v6, v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v12

    const/4 v7, 0x4

    const-string v8, "onUpdate"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget-object v8, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "onComplete"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    iget-object v8, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/android/phone/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/phone/multiwaveview/Tweener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    :goto_92
    return-void

    .line 559
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_93
    iget-object v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_99
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ae

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/multiwaveview/TargetDrawable;

    .line 560
    .restart local v1       #target:Lcom/android/phone/multiwaveview/TargetDrawable;
    sget-object v2, Lcom/android/phone/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v1, v2}, Lcom/android/phone/multiwaveview/TargetDrawable;->setState([I)V

    .line 561
    invoke-virtual {v1, v8}, Lcom/android/phone/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_99

    .line 563
    .end local v1           #target:Lcom/android/phone/multiwaveview/TargetDrawable;
    :cond_ae
    iget-object v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v2, v8}, Lcom/android/phone/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_92
.end method

.method private square(F)F
    .registers 3
    .parameter "d"

    .prologue
    .line 960
    mul-float v0, p1, p1

    return v0
.end method

.method private startChevronAnimation()V
    .registers 21

    .prologue
    .line 336
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v11}, Lcom/android/phone/multiwaveview/TargetDrawable;->getWidth()I

    move-result v11

    int-to-float v11, v11

    const v12, 0x3ecccccd

    mul-float v8, v11, v12

    .line 337
    .local v8, r:F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRadius:F

    const v12, 0x3f666666

    mul-float v1, v11, v12

    .line 338
    .local v1, chevronAnimationDistance:F
    const/4 v11, 0x4

    new-array v6, v11, [[F

    const/4 v11, 0x0

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterX:F

    sub-float/2addr v14, v8

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterY:F

    aput v14, v12, v13

    aput-object v12, v6, v11

    const/4 v11, 0x1

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterX:F

    add-float/2addr v14, v8

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterY:F

    aput v14, v12, v13

    aput-object v12, v6, v11

    const/4 v11, 0x2

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterX:F

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterY:F

    sub-float/2addr v14, v8

    aput v14, v12, v13

    aput-object v12, v6, v11

    const/4 v11, 0x3

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterX:F

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterY:F

    add-float/2addr v14, v8

    aput v14, v12, v13

    aput-object v12, v6, v11

    .line 343
    .local v6, from:[[F
    const/4 v11, 0x4

    new-array v10, v11, [[F

    const/4 v11, 0x0

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterX:F

    sub-float/2addr v14, v1

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterY:F

    aput v14, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterX:F

    add-float/2addr v14, v1

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterY:F

    aput v14, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterX:F

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterY:F

    sub-float/2addr v14, v1

    aput v14, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterX:F

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterY:F

    add-float/2addr v14, v1

    aput v14, v12, v13

    aput-object v12, v10, v11

    .line 349
    .local v10, to:[[F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mChevronAnimations:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 350
    const/high16 v9, 0x3f00

    .line 351
    .local v9, startScale:F
    const/high16 v5, 0x4000

    .line 352
    .local v5, endScale:F
    const/4 v4, 0x0

    .local v4, direction:I
    :goto_d1
    const/4 v11, 0x4

    if-ge v4, v11, :cond_1ba

    .line 353
    const/4 v2, 0x0

    .local v2, count:I
    :goto_d5
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mFeedbackCount:I

    if-ge v2, v11, :cond_1b6

    .line 354
    mul-int/lit16 v3, v2, 0xa0

    .line 355
    .local v3, delay:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mFeedbackCount:I

    mul-int/2addr v12, v4

    add-int/2addr v12, v2

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/phone/multiwaveview/TargetDrawable;

    .line 356
    .local v7, icon:Lcom/android/phone/multiwaveview/TargetDrawable;
    if-nez v7, :cond_f2

    .line 353
    :goto_ef
    add-int/lit8 v2, v2, 0x1

    goto :goto_d5

    .line 359
    :cond_f2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mChevronAnimations:Ljava/util/ArrayList;

    const-wide/16 v12, 0x352

    const/16 v14, 0x10

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "ease"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mChevronAnimationInterpolator:Landroid/animation/TimeInterpolator;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "delay"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string v16, "x"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v18, v6, v4

    const/16 v19, 0x0

    aget v18, v18, v19

    aput v18, v16, v17

    const/16 v17, 0x1

    aget-object v18, v10, v4

    const/16 v19, 0x0

    aget v18, v18, v19

    aput v18, v16, v17

    aput-object v16, v14, v15

    const/4 v15, 0x6

    const-string v16, "y"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v18, v6, v4

    const/16 v19, 0x1

    aget v18, v18, v19

    aput v18, v16, v17

    const/16 v17, 0x1

    aget-object v18, v10, v4

    const/16 v19, 0x1

    aget v18, v18, v19

    aput v18, v16, v17

    aput-object v16, v14, v15

    const/16 v15, 0x8

    const-string v16, "alpha"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_1bc

    aput-object v16, v14, v15

    const/16 v15, 0xa

    const-string v16, "scaleX"

    aput-object v16, v14, v15

    const/16 v15, 0xb

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_1c4

    aput-object v16, v14, v15

    const/16 v15, 0xc

    const-string v16, "scaleY"

    aput-object v16, v14, v15

    const/16 v15, 0xd

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_1cc

    aput-object v16, v14, v15

    const/16 v15, 0xe

    const-string v16, "onUpdate"

    aput-object v16, v14, v15

    const/16 v15, 0xf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v7, v12, v13, v14}, Lcom/android/phone/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/phone/multiwaveview/Tweener;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_ef

    .line 352
    .end local v3           #delay:I
    .end local v7           #icon:Lcom/android/phone/multiwaveview/TargetDrawable;
    :cond_1b6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_d1

    .line 370
    .end local v2           #count:I
    :cond_1ba
    return-void

    .line 359
    nop

    :array_1bc
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1c4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x40t
    .end array-data

    :array_1cc
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x40t
    .end array-data
.end method

.method private stopChevronAnimation()V
    .registers 4

    .prologue
    .line 373
    iget-object v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mChevronAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/multiwaveview/Tweener;

    .line 374
    .local v0, anim:Lcom/android/phone/multiwaveview/Tweener;
    iget-object v2, v0, Lcom/android/phone/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->end()V

    goto :goto_6

    .line 376
    .end local v0           #anim:Lcom/android/phone/multiwaveview/Tweener;
    :cond_18
    iget-object v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mChevronAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 377
    return-void
.end method

.method private stopHandleAnimation()V
    .registers 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleAnimation:Lcom/android/phone/multiwaveview/Tweener;

    if-eqz v0, :cond_e

    .line 381
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleAnimation:Lcom/android/phone/multiwaveview/Tweener;

    iget-object v0, v0, Lcom/android/phone/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleAnimation:Lcom/android/phone/multiwaveview/Tweener;

    .line 384
    :cond_e
    return-void
.end method

.method private stopTargetAnimation()V
    .registers 4

    .prologue
    .line 568
    iget-object v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/multiwaveview/Tweener;

    .line 569
    .local v0, anim:Lcom/android/phone/multiwaveview/Tweener;
    iget-object v2, v0, Lcom/android/phone/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->end()V

    goto :goto_6

    .line 571
    .end local v0           #anim:Lcom/android/phone/multiwaveview/Tweener;
    :cond_18
    iget-object v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 572
    return-void
.end method

.method private switchToState(IFF)V
    .registers 7
    .parameter "state"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    .line 296
    packed-switch p1, :pswitch_data_42

    .line 328
    :cond_4
    :goto_4
    :pswitch_4
    return-void

    .line 298
    :pswitch_5
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->deactivateTargets()V

    .line 300
    const-string v0, "ro.config.always_animation"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 302
    invoke-direct {p0, v2}, Lcom/android/phone/multiwaveview/MultiWaveView;->showTargets(Z)V

    .line 304
    :cond_13
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/android/phone/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/phone/multiwaveview/TargetDrawable;->setState([I)V

    goto :goto_4

    .line 308
    :pswitch_1b
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->stopHandleAnimation()V

    .line 309
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->deactivateTargets()V

    .line 310
    invoke-direct {p0, v2}, Lcom/android/phone/multiwaveview/MultiWaveView;->showTargets(Z)V

    .line 311
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/android/phone/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/phone/multiwaveview/TargetDrawable;->setState([I)V

    .line 312
    invoke-direct {p0, v2}, Lcom/android/phone/multiwaveview/MultiWaveView;->setGrabbedState(I)V

    .line 313
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 314
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->announceTargets()V

    goto :goto_4

    .line 325
    :pswitch_3e
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->doFinish()V

    goto :goto_4

    .line 296
    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_5
        :pswitch_1b
        :pswitch_4
        :pswitch_4
        :pswitch_3e
    .end packed-switch
.end method

.method private trySwitchToFirstTouchState(Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 866
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 867
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 868
    .local v3, y:F
    iget v6, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterX:F

    sub-float v0, v2, v6

    .line 869
    .local v0, dx:F
    iget v6, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterY:F

    sub-float v1, v3, v6

    .line 870
    .local v1, dy:F
    invoke-direct {p0, v0, v1}, Lcom/android/phone/multiwaveview/MultiWaveView;->dist2(FF)F

    move-result v6

    invoke-direct {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->getScaledTapRadiusSquared()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_27

    .line 872
    invoke-direct {p0, v4, v2, v3}, Lcom/android/phone/multiwaveview/MultiWaveView;->switchToState(IFF)V

    .line 873
    invoke-direct {p0, v2, v3, v5}, Lcom/android/phone/multiwaveview/MultiWaveView;->moveHandleTo(FFZ)V

    .line 874
    iput-boolean v4, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mDragging:Z

    .line 877
    :goto_26
    return v4

    :cond_27
    move v4, v5

    goto :goto_26
.end method

.method private updateTargetPositions()V
    .registers 11

    .prologue
    .line 921
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v6, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_42

    .line 922
    iget-object v6, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/multiwaveview/TargetDrawable;

    .line 923
    .local v3, targetIcon:Lcom/android/phone/multiwaveview/TargetDrawable;
    const-wide v6, -0x3fe6de04abbbd2e8L

    int-to-double v8, v2

    mul-double/2addr v6, v8

    iget-object v8, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    int-to-double v8, v8

    div-double v0, v6, v8

    .line 924
    .local v0, angle:D
    iget v6, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterX:F

    iget v7, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRadius:F

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v7, v8

    add-float v4, v6, v7

    .line 925
    .local v4, xPosition:F
    iget v6, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterY:F

    iget v7, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRadius:F

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v7, v8

    add-float v5, v6, v7

    .line 926
    .local v5, yPosition:F
    invoke-virtual {v3, v4}, Lcom/android/phone/multiwaveview/TargetDrawable;->setX(F)V

    .line 927
    invoke-virtual {v3, v5}, Lcom/android/phone/multiwaveview/TargetDrawable;->setY(F)V

    .line 921
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 929
    .end local v0           #angle:D
    .end local v3           #targetIcon:Lcom/android/phone/multiwaveview/TargetDrawable;
    .end local v4           #xPosition:F
    .end local v5           #yPosition:F
    :cond_42
    return-void
.end method

.method private vibrate()V
    .registers 4

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_c

    .line 576
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mVibrator:Landroid/os/Vibrator;

    iget v1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mVibrationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 578
    :cond_c
    return-void
.end method


# virtual methods
.method public getDirectionDescriptionsResourceId()I
    .registers 2

    .prologue
    .line 652
    iget v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mDirectionDescriptionsResourceId:I

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 259
    iget-object v1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/phone/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1d

    iget-object v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/phone/multiwaveview/TargetDrawable;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :cond_1d
    add-int/2addr v0, v1

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 252
    iget-object v1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/phone/multiwaveview/TargetDrawable;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1d

    iget-object v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/phone/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :cond_1d
    add-int/2addr v0, v1

    return v0
.end method

.method public getTargetDescriptionsResourceId()I
    .registers 2

    .prologue
    .line 631
    iget v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDescriptionsResourceId:I

    return v0
.end method

.method public getTargetResourceId()I
    .registers 2

    .prologue
    .line 610
    iget v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetResourceId:I

    return v0
.end method

.method public init()V
    .registers 3

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->deactivateTargets()V

    .line 291
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/multiwaveview/MultiWaveView;->showTargets(Z)V

    .line 292
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/android/phone/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/phone/multiwaveview/TargetDrawable;->setState([I)V

    .line 293
    return-void
.end method

.method invalidateGlobalRegion(Lcom/android/phone/multiwaveview/TargetDrawable;)V
    .registers 11
    .parameter "drawable"

    .prologue
    const/4 v6, 0x0

    .line 394
    invoke-virtual {p1}, Lcom/android/phone/multiwaveview/TargetDrawable;->getWidth()I

    move-result v3

    .line 395
    .local v3, width:I
    invoke-virtual {p1}, Lcom/android/phone/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    .line 396
    .local v1, height:I
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v4, v3

    int-to-float v5, v1

    invoke-direct {v0, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 397
    .local v0, childBounds:Landroid/graphics/RectF;
    invoke-virtual {p1}, Lcom/android/phone/multiwaveview/TargetDrawable;->getX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->intValue()I

    move-result v4

    div-int/lit8 v5, v3, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1}, Lcom/android/phone/multiwaveview/TargetDrawable;->getY()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->intValue()I

    move-result v5

    div-int/lit8 v6, v1, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 398
    move-object v2, p0

    .line 399
    .local v2, view:Landroid/view/View;
    :goto_34
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_73

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_73

    .line 400
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #view:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .line 401
    .restart local v2       #view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 402
    iget v4, v0, Landroid/graphics/RectF;->left:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->top:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    iget v6, v0, Landroid/graphics/RectF;->right:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_34

    .line 407
    :cond_73
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    .line 941
    iget-object v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v2, p1}, Lcom/android/phone/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 942
    iget-object v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/multiwaveview/TargetDrawable;

    .line 943
    .local v1, target:Lcom/android/phone/multiwaveview/TargetDrawable;
    if-eqz v1, :cond_b

    .line 944
    invoke-virtual {v1, p1}, Lcom/android/phone/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_b

    .line 947
    .end local v1           #target:Lcom/android/phone/multiwaveview/TargetDrawable;
    :cond_1d
    iget-object v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_23
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/multiwaveview/TargetDrawable;

    .line 948
    .restart local v1       #target:Lcom/android/phone/multiwaveview/TargetDrawable;
    if-eqz v1, :cond_23

    .line 949
    invoke-virtual {v1, p1}, Lcom/android/phone/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_23

    .line 952
    .end local v1           #target:Lcom/android/phone/multiwaveview/TargetDrawable;
    :cond_35
    iget-object v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v2, p1}, Lcom/android/phone/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 953
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 830
    iget-object v1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 831
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 832
    .local v0, action:I
    packed-switch v0, :pswitch_data_2e

    .line 843
    :goto_13
    :pswitch_13
    invoke-virtual {p0, p1}, Lcom/android/phone/multiwaveview/MultiWaveView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 844
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 846
    .end local v0           #action:I
    :cond_19
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 834
    .restart local v0       #action:I
    :pswitch_1e
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_13

    .line 837
    :pswitch_23
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_13

    .line 840
    :pswitch_28
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_13

    .line 832
    nop

    :pswitch_data_2e
    .packed-switch 0x7
        :pswitch_23
        :pswitch_13
        :pswitch_1e
        :pswitch_28
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 13
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v6, 0x0

    .line 899
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 900
    sub-int v3, p4, p2

    .line 901
    .local v3, width:I
    sub-int v0, p5, p3

    .line 902
    .local v0, height:I
    iget v4, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHorizontalOffset:F

    iget-object v5, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v5}, Lcom/android/phone/multiwaveview/TargetDrawable;->getWidth()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->floatValue()F

    move-result v5

    add-float v1, v4, v5

    .line 903
    .local v1, newWaveCenterX:F
    iget v4, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mVerticalOffset:F

    iget-object v5, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/phone/multiwaveview/TargetDrawable;

    invoke-virtual {v5}, Lcom/android/phone/multiwaveview/TargetDrawable;->getHeight()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->floatValue()F

    move-result v5

    add-float v2, v4, v5

    .line 904
    .local v2, newWaveCenterY:F
    iget v4, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterX:F

    cmpg-float v4, v1, v4

    if-ltz v4, :cond_50

    iget v4, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterX:F

    cmpl-float v4, v1, v4

    if-gtz v4, :cond_50

    iget v4, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterY:F

    cmpg-float v4, v2, v4

    if-ltz v4, :cond_50

    iget v4, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterY:F

    cmpl-float v4, v2, v4

    if-lez v4, :cond_7a

    .line 905
    :cond_50
    iget v4, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterX:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_5f

    iget v4, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterY:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_5f

    .line 906
    invoke-direct {p0, v1, v2}, Lcom/android/phone/multiwaveview/MultiWaveView;->performInitialLayout(FF)V

    .line 908
    :cond_5f
    iput v1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterX:F

    .line 909
    iput v2, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterY:F

    .line 911
    iget-object v4, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/phone/multiwaveview/TargetDrawable;

    iget v5, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterX:F

    invoke-virtual {v4, v5}, Lcom/android/phone/multiwaveview/TargetDrawable;->setX(F)V

    .line 912
    iget-object v4, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOuterRing:Lcom/android/phone/multiwaveview/TargetDrawable;

    iget v5, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterY:F

    iget v6, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterY:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/phone/multiwaveview/TargetDrawable;->setY(F)V

    .line 914
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->updateTargetPositions()V

    .line 917
    :cond_7a
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->getSuggestedMinimumWidth()I

    move-result v1

    .line 284
    .local v1, minimumWidth:I
    invoke-virtual {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->getSuggestedMinimumHeight()I

    move-result v0

    .line 285
    .local v0, minimumHeight:I
    invoke-direct {p0, p1, v1}, Lcom/android/phone/multiwaveview/MultiWaveView;->resolveMeasured(II)I

    move-result v3

    .line 286
    .local v3, viewWidth:I
    invoke-direct {p0, p2, v0}, Lcom/android/phone/multiwaveview/MultiWaveView;->resolveMeasured(II)I

    move-result v2

    .line 287
    .local v2, viewHeight:I
    invoke-virtual {p0, v3, v2}, Lcom/android/phone/multiwaveview/MultiWaveView;->setMeasuredDimension(II)V

    .line 288
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    .line 698
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 700
    .local v0, action:I
    const/4 v1, 0x0

    .line 701
    .local v1, handled:Z
    packed-switch v0, :pswitch_data_3a

    .line 730
    :goto_8
    invoke-virtual {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->invalidate()V

    .line 731
    if-eqz v1, :cond_34

    const/4 v2, 0x1

    :goto_e
    return v2

    .line 703
    :pswitch_f
    invoke-direct {p0, p1}, Lcom/android/phone/multiwaveview/MultiWaveView;->handleDown(Landroid/view/MotionEvent;)V

    .line 704
    const/4 v1, 0x1

    .line 705
    goto :goto_8

    .line 708
    :pswitch_14
    invoke-direct {p0, p1}, Lcom/android/phone/multiwaveview/MultiWaveView;->handleMove(Landroid/view/MotionEvent;)V

    .line 710
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->responseToIncommingCallWhenMotionDown()V

    .line 712
    const/4 v1, 0x1

    .line 713
    goto :goto_8

    .line 716
    :pswitch_1c
    invoke-direct {p0, p1}, Lcom/android/phone/multiwaveview/MultiWaveView;->handleMove(Landroid/view/MotionEvent;)V

    .line 717
    invoke-direct {p0, p1}, Lcom/android/phone/multiwaveview/MultiWaveView;->handleUp(Landroid/view/MotionEvent;)V

    .line 718
    const/4 v1, 0x1

    .line 719
    goto :goto_8

    .line 722
    :pswitch_24
    invoke-direct {p0, p1}, Lcom/android/phone/multiwaveview/MultiWaveView;->handleMove(Landroid/view/MotionEvent;)V

    .line 724
    const-string v2, "MultiWaveView"

    const-string v3, "MultiWaveView@onTouchEvent#MotionEvent.ACTION_CANCEL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/phone/multiwaveview/MultiWaveView;->reset(Z)V

    .line 727
    const/4 v1, 0x1

    goto :goto_8

    .line 731
    :cond_34
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_e

    .line 701
    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_f
        :pswitch_1c
        :pswitch_14
        :pswitch_24
    .end packed-switch
.end method

.method public ping()V
    .registers 1

    .prologue
    .line 674
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->stopChevronAnimation()V

    .line 675
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->startChevronAnimation()V

    .line 676
    return-void
.end method

.method public reset(Z)V
    .registers 4
    .parameter "animate"

    .prologue
    .line 685
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->stopChevronAnimation()V

    .line 686
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->stopHandleAnimation()V

    .line 687
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->stopTargetAnimation()V

    .line 688
    invoke-direct {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->hideChevrons()V

    .line 689
    invoke-direct {p0, p1}, Lcom/android/phone/multiwaveview/MultiWaveView;->hideTargets(Z)V

    .line 690
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    iget v1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterX:F

    invoke-virtual {v0, v1}, Lcom/android/phone/multiwaveview/TargetDrawable;->setX(F)V

    .line 691
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    iget v1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mWaveCenterY:F

    invoke-virtual {v0, v1}, Lcom/android/phone/multiwaveview/TargetDrawable;->setY(F)V

    .line 692
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/android/phone/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/android/phone/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/phone/multiwaveview/TargetDrawable;->setState([I)V

    .line 693
    invoke-static {}, Lcom/android/phone/multiwaveview/Tweener;->reset()V

    .line 694
    return-void
.end method

.method public setDirectionDescriptionsResourceId(I)V
    .registers 3
    .parameter "resourceId"

    .prologue
    .line 640
    iput p1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mDirectionDescriptionsResourceId:I

    .line 641
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 642
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 644
    :cond_b
    return-void
.end method

.method public setOnTriggerListener(Lcom/android/phone/multiwaveview/MultiWaveView$OnTriggerListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 956
    iput-object p1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/android/phone/multiwaveview/MultiWaveView$OnTriggerListener;

    .line 957
    return-void
.end method

.method public setTargetDescriptionsResourceId(I)V
    .registers 3
    .parameter "resourceId"

    .prologue
    .line 619
    iput p1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDescriptionsResourceId:I

    .line 620
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 621
    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 623
    :cond_b
    return-void
.end method

.method public setTargetResources(I)V
    .registers 3
    .parameter "resourceId"

    .prologue
    .line 601
    iget-boolean v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mAnimatingTargets:Z

    if-eqz v0, :cond_7

    .line 603
    iput p1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mNewTargetResources:I

    .line 607
    :goto_6
    return-void

    .line 605
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/phone/multiwaveview/MultiWaveView;->internalSetTargetResources(I)V

    goto :goto_6
.end method

.method public setTargetsFirstTriggerStatus(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->isFirstTriggerTargets:Z

    .line 163
    return-void
.end method

.method public setVibrateEnabled(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 661
    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_15

    .line 662
    invoke-virtual {p0}, Lcom/android/phone/multiwaveview/MultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mVibrator:Landroid/os/Vibrator;

    .line 666
    :goto_14
    return-void

    .line 664
    :cond_15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/multiwaveview/MultiWaveView;->mVibrator:Landroid/os/Vibrator;

    goto :goto_14
.end method
