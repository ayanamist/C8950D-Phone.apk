.class public Lcom/android/phone/NetworkQueryService$LocalBinder;
.super Landroid/os/Binder;
.source "NetworkQueryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkQueryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkQueryService;


# direct methods
.method public constructor <init>(Lcom/android/phone/NetworkQueryService;)V
    .registers 2
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/phone/NetworkQueryService$LocalBinder;->this$0:Lcom/android/phone/NetworkQueryService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/android/phone/INetworkQueryService;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService$LocalBinder;->this$0:Lcom/android/phone/NetworkQueryService;

    invoke-static {v0}, Lcom/android/phone/NetworkQueryService;->access$000(Lcom/android/phone/NetworkQueryService;)Lcom/android/phone/INetworkQueryService$Stub;

    move-result-object v0

    return-object v0
.end method
