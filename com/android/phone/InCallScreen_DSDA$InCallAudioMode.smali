.class public final enum Lcom/android/phone/InCallScreen_DSDA$InCallAudioMode;
.super Ljava/lang/Enum;
.source "InCallScreen_DSDA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen_DSDA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InCallAudioMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/InCallScreen_DSDA$InCallAudioMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/InCallScreen_DSDA$InCallAudioMode;

.field public static final enum BLUETOOTH:Lcom/android/phone/InCallScreen_DSDA$InCallAudioMode;

.field public static final enum EARPIECE:Lcom/android/phone/InCallScreen_DSDA$InCallAudioMode;

.field public static final enum SPEAKER:Lcom/android/phone/InCallScreen_DSDA$InCallAudioMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 251
    new-instance v0, Lcom/android/phone/InCallScreen_DSDA$InCallAudioMode;

    const-string v1, "SPEAKER"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen_DSDA$InCallAudioMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallScreen_DSDA$InCallAudioMode;->SPEAKER:Lcom/android/phone/InCallScreen_DSDA$InCallAudioMode;

    .line 252
    new-instance v0, Lcom/android/phone/InCallScreen_DSDA$InCallAudioMode;

    const-string v1, "BLUETOOTH"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/InCallScreen_DSDA$InCallAudioMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallScreen_DSDA$InCallAudioMode;->BLUETOOTH:Lcom/android/phone/InCallScreen_DSDA$InCallAudioMode;

    .line 253
    new-instance v0, Lcom/android/phone/InCallScreen_DSDA$InCallAudioMode;

    const-string v1, "EARPIECE"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/InCallScreen_DSDA$InCallAudioMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallScreen_DSDA$InCallAudioMode;->EARPIECE:Lcom/android/phone/InCallScreen_DSDA$InCallAudioMode;

    .line 250
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/phone/InCallScreen_DSDA$InCallAudioMode;

    sget-object v1, Lcom/android/phone/InCallScreen_DSDA$InCallAudioMode;->SPEAKER:Lcom/android/phone/InCallScreen_DSDA$InCallAudioMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/InCallScreen_DSDA$InCallAudioMode;->BLUETOOTH:Lcom/android/phone/InCallScreen_DSDA$InCallAudioMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/InCallScreen_DSDA$InCallAudioMode;->EARPIECE:Lcom/android/phone/InCallScreen_DSDA$InCallAudioMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/InCallScreen_DSDA$InCallAudioMode;->$VALUES:[Lcom/android/phone/InCallScreen_DSDA$InCallAudioMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 250
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/InCallScreen_DSDA$InCallAudioMode;
    .registers 2
    .parameter "name"

    .prologue
    .line 250
    const-class v0, Lcom/android/phone/InCallScreen_DSDA$InCallAudioMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InCallScreen_DSDA$InCallAudioMode;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/InCallScreen_DSDA$InCallAudioMode;
    .registers 1

    .prologue
    .line 250
    sget-object v0, Lcom/android/phone/InCallScreen_DSDA$InCallAudioMode;->$VALUES:[Lcom/android/phone/InCallScreen_DSDA$InCallAudioMode;

    invoke-virtual {v0}, [Lcom/android/phone/InCallScreen_DSDA$InCallAudioMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/InCallScreen_DSDA$InCallAudioMode;

    return-object v0
.end method
