.class public Lcom/android/phone/EmergencyCallbackModeService$LocalBinder;
.super Landroid/os/Binder;
.source "EmergencyCallbackModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EmergencyCallbackModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyCallbackModeService;


# direct methods
.method public constructor <init>(Lcom/android/phone/EmergencyCallbackModeService;)V
    .registers 2
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/phone/EmergencyCallbackModeService$LocalBinder;->this$0:Lcom/android/phone/EmergencyCallbackModeService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/android/phone/EmergencyCallbackModeService;
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService$LocalBinder;->this$0:Lcom/android/phone/EmergencyCallbackModeService;

    return-object v0
.end method
