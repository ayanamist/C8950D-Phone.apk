.class final Lcom/android/phone/CallCard$Fade$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CallCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallCard$Fade;->hide(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2635
    iput-object p1, p0, Lcom/android/phone/CallCard$Fade$1;->val$view:Landroid/view/View;

    iput p2, p0, Lcom/android/phone/CallCard$Fade$1;->val$visibility:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 2637
    iget-object v0, p0, Lcom/android/phone/CallCard$Fade$1;->val$view:Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2638
    iget-object v0, p0, Lcom/android/phone/CallCard$Fade$1;->val$view:Landroid/view/View;

    iget v1, p0, Lcom/android/phone/CallCard$Fade$1;->val$visibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2639
    iget-object v0, p0, Lcom/android/phone/CallCard$Fade$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2641
    iget-object v0, p0, Lcom/android/phone/CallCard$Fade$1;->val$view:Landroid/view/View;

    const v1, 0x7f07000b

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2644
    return-void
.end method
