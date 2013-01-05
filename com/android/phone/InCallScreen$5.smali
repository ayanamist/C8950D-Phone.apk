.class Lcom/android/phone/InCallScreen$5;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->onSuppServiceFailed(Landroid/os/AsyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;

.field final synthetic val$errorMessageResId:I


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1986
    iput-object p1, p0, Lcom/android/phone/InCallScreen$5;->this$0:Lcom/android/phone/InCallScreen;

    iput p2, p0, Lcom/android/phone/InCallScreen$5;->val$errorMessageResId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1988
    const v0, 0x7f0c01ce

    iget v1, p0, Lcom/android/phone/InCallScreen$5;->val$errorMessageResId:I

    if-ne v0, v1, :cond_c

    .line 1989
    iget-object v0, p0, Lcom/android/phone/InCallScreen$5;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->hangupRingingCall()V

    .line 1990
    :cond_c
    return-void
.end method
