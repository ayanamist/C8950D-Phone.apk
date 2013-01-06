.class Lcom/android/phone/InCallFragment$18;
.super Ljava/lang/Object;
.source "InCallFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallFragment;->handleOnscreenButtonClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallFragment;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 801
    iput-object p1, p0, Lcom/android/phone/InCallFragment$18;->this$0:Lcom/android/phone/InCallFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 803

    iget-object v0, p0, Lcom/android/phone/InCallFragment$18;->this$0:Lcom/android/phone/InCallFragment;

    invoke-static {v0}, Lcom/android/phone/InCallFragment;->access$1105(Lcom/android/phone/InCallFragment;)V

    .line 804
    return-void
.end method
