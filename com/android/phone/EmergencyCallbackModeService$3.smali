.class Lcom/android/phone/EmergencyCallbackModeService$3;
.super Landroid/os/CountDownTimer;
.source "EmergencyCallbackModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyCallbackModeService;->startTimerNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyCallbackModeService;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyCallbackModeService;JJ)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/phone/EmergencyCallbackModeService$3;->this$0:Lcom/android/phone/EmergencyCallbackModeService;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 1

    .prologue
    .line 173
    return-void
.end method

.method public onTick(J)V
    .registers 4
    .parameter "millisUntilFinished"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService$3;->this$0:Lcom/android/phone/EmergencyCallbackModeService;

    invoke-static {v0, p1, p2}, Lcom/android/phone/EmergencyCallbackModeService;->access$102(Lcom/android/phone/EmergencyCallbackModeService;J)J

    .line 167
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService$3;->this$0:Lcom/android/phone/EmergencyCallbackModeService;

    invoke-static {v0, p1, p2}, Lcom/android/phone/EmergencyCallbackModeService;->access$200(Lcom/android/phone/EmergencyCallbackModeService;J)V

    .line 168
    return-void
.end method
