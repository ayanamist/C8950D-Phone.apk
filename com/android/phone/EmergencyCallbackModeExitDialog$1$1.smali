.class Lcom/android/phone/EmergencyCallbackModeExitDialog$1$1;
.super Ljava/lang/Object;
.source "EmergencyCallbackModeExitDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyCallbackModeExitDialog$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/EmergencyCallbackModeExitDialog$1;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyCallbackModeExitDialog$1;)V
    .registers 2
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$1$1;->this$1:Lcom/android/phone/EmergencyCallbackModeExitDialog$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$1$1;->this$1:Lcom/android/phone/EmergencyCallbackModeExitDialog$1;

    iget-object v0, v0, Lcom/android/phone/EmergencyCallbackModeExitDialog$1;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    invoke-static {v0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->access$200(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V

    .line 165
    return-void
.end method
