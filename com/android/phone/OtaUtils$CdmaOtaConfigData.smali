.class public Lcom/android/phone/OtaUtils$CdmaOtaConfigData;
.super Ljava/lang/Object;
.source "OtaUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/OtaUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CdmaOtaConfigData"
.end annotation


# instance fields
.field public configComplete:Z

.field public otaPlaySuccessFailureTone:I

.field public otaShowActivateFailTimes:I

.field public otaShowActivationScreen:I

.field public otaShowListeningScreen:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1614
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1615
    const-string v0, "CdmaOtaConfigData constructor!"

    invoke-static {v0}, Lcom/android/phone/OtaUtils;->access$000(Ljava/lang/String;)V

    .line 1616
    iput v1, p0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowActivationScreen:I

    .line 1617
    iput v1, p0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowListeningScreen:I

    .line 1618
    iput v1, p0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowActivateFailTimes:I

    .line 1619
    iput v1, p0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaPlaySuccessFailureTone:I

    .line 1620
    return-void
.end method
