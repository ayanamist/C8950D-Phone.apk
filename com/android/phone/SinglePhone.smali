.class public Lcom/android/phone/SinglePhone;
.super Ljava/lang/Object;
.source "SinglePhone.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field static final DBG_LEVEL:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "SinglePhone"

.field private static final VDBG:Z


# instance fields
.field public mCdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

.field public mCdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

.field public mCdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

.field public mCdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

.field public mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

.field public mIsSimPinEnabled:Z

.field public mIsSimPukLocked:Z

.field public mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

.field public mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_d

    :goto_a
    sput-boolean v0, Lcom/android/phone/SinglePhone;->DBG:Z

    return-void

    :cond_d
    move v0, v1

    goto :goto_a
.end method

.method constructor <init>(I)V
    .registers 6
    .parameter "subscription"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/phone/SinglePhone;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    .line 61
    iput-object v2, p0, Lcom/android/phone/SinglePhone;->mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 69
    iput-object v2, p0, Lcom/android/phone/SinglePhone;->mCdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    .line 70
    iput-object v2, p0, Lcom/android/phone/SinglePhone;->mCdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    .line 71
    iput-object v2, p0, Lcom/android/phone/SinglePhone;->mCdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    .line 72
    iput-object v2, p0, Lcom/android/phone/SinglePhone;->mCdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    .line 78
    invoke-static {p1}, Lcom/android/internal/telephony/MSimPhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SinglePhone;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 80
    iget-object v1, p0, Lcom/android/phone/SinglePhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v3, :cond_2e

    const/4 v0, 0x1

    .line 82
    .local v0, phoneIsCdma:Z
    :goto_22
    iget-object v1, p0, Lcom/android/phone/SinglePhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v3, :cond_2d

    .line 83
    invoke-virtual {p0}, Lcom/android/phone/SinglePhone;->initializeCdmaVariables()V

    .line 86
    :cond_2d
    return-void

    .line 80
    .end local v0           #phoneIsCdma:Z
    :cond_2e
    const/4 v0, 0x0

    goto :goto_22
.end method


# virtual methods
.method public clearCdmaVariables()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 111
    iget-object v0, p0, Lcom/android/phone/SinglePhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 112
    iput-object v2, p0, Lcom/android/phone/SinglePhone;->mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 113
    iput-object v2, p0, Lcom/android/phone/SinglePhone;->mCdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    .line 114
    iput-object v2, p0, Lcom/android/phone/SinglePhone;->mCdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    .line 115
    iput-object v2, p0, Lcom/android/phone/SinglePhone;->mCdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    .line 116
    iput-object v2, p0, Lcom/android/phone/SinglePhone;->mCdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    .line 118
    :cond_14
    return-void
.end method

.method public initializeCdmaVariables()V
    .registers 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/SinglePhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_41

    .line 92
    new-instance v0, Lcom/android/phone/CdmaPhoneCallState;

    invoke-direct {v0}, Lcom/android/phone/CdmaPhoneCallState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/SinglePhone;->mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 93
    iget-object v0, p0, Lcom/android/phone/SinglePhone;->mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->CdmaPhoneCallStateInit()V

    .line 95
    iget-object v0, p0, Lcom/android/phone/SinglePhone;->mCdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-nez v0, :cond_20

    .line 96
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;-><init>()V

    iput-object v0, p0, Lcom/android/phone/SinglePhone;->mCdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    .line 98
    :cond_20
    iget-object v0, p0, Lcom/android/phone/SinglePhone;->mCdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    if-nez v0, :cond_2b

    .line 99
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;-><init>()V

    iput-object v0, p0, Lcom/android/phone/SinglePhone;->mCdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    .line 101
    :cond_2b
    iget-object v0, p0, Lcom/android/phone/SinglePhone;->mCdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-nez v0, :cond_36

    .line 102
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/SinglePhone;->mCdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    .line 104
    :cond_36
    iget-object v0, p0, Lcom/android/phone/SinglePhone;->mCdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    if-nez v0, :cond_41

    .line 105
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/SinglePhone;->mCdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    .line 108
    :cond_41
    return-void
.end method
