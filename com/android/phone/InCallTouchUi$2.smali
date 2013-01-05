.class Lcom/android/phone/InCallTouchUi$2;
.super Ljava/lang/Object;
.source "InCallTouchUi.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallTouchUi;

.field final synthetic val$whichHandlerFinal:I


# direct methods
.method constructor <init>(Lcom/android/phone/InCallTouchUi;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1156
    iput-object p1, p0, Lcom/android/phone/InCallTouchUi$2;->this$0:Lcom/android/phone/InCallTouchUi;

    iput p2, p0, Lcom/android/phone/InCallTouchUi$2;->val$whichHandlerFinal:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 5
    .parameter "animation"

    .prologue
    const/16 v2, 0x8

    .line 1168
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$2;->this$0:Lcom/android/phone/InCallTouchUi;

    invoke-static {v0}, Lcom/android/phone/InCallTouchUi;->access$000(Lcom/android/phone/InCallTouchUi;)Lcom/android/phone/multiwaveview/MultiWaveView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/multiwaveview/MultiWaveView;->clearAnimation()V

    .line 1169
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$2;->this$0:Lcom/android/phone/InCallTouchUi;

    invoke-static {v0}, Lcom/android/phone/InCallTouchUi;->access$000(Lcom/android/phone/InCallTouchUi;)Lcom/android/phone/multiwaveview/MultiWaveView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/phone/multiwaveview/MultiWaveView;->setVisibility(I)V

    .line 1171
    iget v0, p0, Lcom/android/phone/InCallTouchUi$2;->val$whichHandlerFinal:I

    if-nez v0, :cond_29

    .line 1172
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$2;->this$0:Lcom/android/phone/InCallTouchUi;

    invoke-static {v0}, Lcom/android/phone/InCallTouchUi;->access$100(Lcom/android/phone/InCallTouchUi;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1173
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$2;->this$0:Lcom/android/phone/InCallTouchUi;

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mExtraButtonRow:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1176
    :cond_29
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 1164
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 1160
    return-void
.end method
