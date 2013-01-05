.class final Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
.super Ljava/lang/Object;
.source "MSimPhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MSimPhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MainThreadRequest"
.end annotation


# instance fields
.field public arg1:Ljava/lang/Object;

.field public arg2:Ljava/lang/Object;

.field public result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 146
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->arg1:Ljava/lang/Object;

    .line 148
    iput-object p2, p0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->arg2:Ljava/lang/Object;

    .line 149
    return-void
.end method
