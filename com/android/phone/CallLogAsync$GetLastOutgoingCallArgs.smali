.class public Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;
.super Ljava/lang/Object;
.source "CallLogAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallLogAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetLastOutgoingCallArgs"
.end annotation


# instance fields
.field public final callback:Lcom/android/phone/CallLogAsync$OnLastOutgoingCallComplete;

.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/phone/CallLogAsync$OnLastOutgoingCallComplete;)V
    .registers 3
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 187
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p1, p0, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;->context:Landroid/content/Context;

    .line 189
    iput-object p2, p0, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;->callback:Lcom/android/phone/CallLogAsync$OnLastOutgoingCallComplete;

    .line 190
    return-void
.end method
