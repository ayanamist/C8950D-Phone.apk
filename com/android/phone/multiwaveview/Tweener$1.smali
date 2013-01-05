.class final Lcom/android/phone/multiwaveview/Tweener$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Tweener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/multiwaveview/Tweener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 148
    #calls: Lcom/android/phone/multiwaveview/Tweener;->remove(Landroid/animation/Animator;)V
    invoke-static {p1}, Lcom/android/phone/multiwaveview/Tweener;->access$000(Landroid/animation/Animator;)V

    .line 149
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 143
    #calls: Lcom/android/phone/multiwaveview/Tweener;->remove(Landroid/animation/Animator;)V
    invoke-static {p1}, Lcom/android/phone/multiwaveview/Tweener;->access$000(Landroid/animation/Animator;)V

    .line 144
    return-void
.end method
