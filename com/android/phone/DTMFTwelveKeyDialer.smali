.class public Lcom/android/phone/DTMFTwelveKeyDialer;
.super Ljava/lang/Object;
.source "DTMFTwelveKeyDialer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DTMF_DURATION_MS:I = 0x78

.field private static final DTMF_SEND_CNF:I = 0x65

.field private static final LOG_TAG:Ljava/lang/String; = "DTMFTwelveKeyDialer"

.field private static final PHONE_DISCONNECT:I = 0x64

.field private static final mDisplayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final mToneMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mDTMFBurstCnfPending:Z

.field private mDTMFQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;

.field private mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

.field private mDialpadDigits:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mLocalToneEnabled:Z

.field mShortTone:Z

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneGeneratorLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/16 v7, 0x32

    const/16 v6, 0x31

    const/16 v5, 0x30

    const/16 v4, 0x2a

    const/16 v3, 0x23

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    .line 90
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x39

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f070041

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f070042

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f070043

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f070044

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f070045

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f070046

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f070047

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x37

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f070048

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f070049

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x39

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f07004b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f07004c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f07004a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-void
.end method

.method public constructor <init>(Lcom/android/phone/DTMFTwelveKeyDialerView;)V
    .registers 6
    .parameter "dialerView"

    .prologue
    const/4 v3, 0x0

    .line 354
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    .line 72
    iput-boolean v3, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFBurstCnfPending:Z

    .line 75
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFQueue:Ljava/util/Queue;

    .line 324
    new-instance v0, Lcom/android/phone/DTMFTwelveKeyDialer$1;

    invoke-direct {v0, p0}, Lcom/android/phone/DTMFTwelveKeyDialer$1;-><init>(Lcom/android/phone/DTMFTwelveKeyDialer;)V

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mHandler:Landroid/os/Handler;

    .line 358
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 362
    if-nez p1, :cond_31

    .line 363
    const-string v0, "DTMFTwelveKeyDialer"

    const-string v1, "DTMFTwelveKeyDialer: null dialerView!"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 367
    :cond_31
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    .line 370
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    if-eqz v0, :cond_66

    .line 371
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v0, p0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->setDialer(Lcom/android/phone/DTMFTwelveKeyDialer;)V

    .line 378
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    const v1, 0x7f070053

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialpadDigits:Landroid/widget/EditText;

    .line 379
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialpadDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_61

    .line 380
    new-instance v0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;-><init>(Lcom/android/phone/DTMFTwelveKeyDialer;Lcom/android/phone/DTMFTwelveKeyDialer$1;)V

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;

    .line 381
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialpadDigits:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 385
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialpadDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 390
    :cond_61
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-direct {p0, v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->setupKeypad(Lcom/android/phone/DTMFTwelveKeyDialerView;)V

    .line 392
    :cond_66
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/DTMFTwelveKeyDialer;C)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->processDtmf(C)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/DTMFTwelveKeyDialer;)Lcom/android/internal/telephony/CallManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 870
    const-string v0, "DTMFTwelveKeyDialer"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    return-void
.end method

.method private onDialerClose()V
    .registers 4

    .prologue
    .line 497
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 498
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 500
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 504
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->getUiScreen()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 505
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerCloseScreen()V

    .line 509
    :cond_17
    return-void
.end method

.method private onDialerOpen()V
    .registers 5

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 433
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 438
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerOpenScreen()V

    .line 441
    return-void
.end method

.method private final processDtmf(C)V
    .registers 4
    .parameter "c"

    .prologue
    .line 706
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 710
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialpadDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_13

    .line 720
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialpadDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    .line 724
    :cond_13
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 726
    invoke-virtual {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->startTone(C)V

    .line 733
    :cond_22
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 734
    return-void
.end method

.method private sendShortDtmfToNetwork(C)V
    .registers 9
    .parameter "dtmfDigit"

    .prologue
    const/4 v3, 0x1

    .line 911
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFQueue:Ljava/util/Queue;

    monitor-enter v2

    .line 912
    :try_start_4
    iget-boolean v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFBurstCnfPending:Z

    if-ne v1, v3, :cond_14

    .line 914
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFQueue:Ljava/util/Queue;

    new-instance v3, Ljava/lang/Character;

    invoke-direct {v3, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 924
    :goto_12
    monitor-exit v2

    .line 925
    return-void

    .line 916
    :cond_14
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    .line 920
    .local v0, dtmfStr:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x65

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v0, v3, v4, v5}, Lcom/android/internal/telephony/CallManager;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)Z

    .line 922
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFBurstCnfPending:Z

    goto :goto_12

    .line 924
    .end local v0           #dtmfStr:Ljava/lang/String;
    :catchall_2b
    move-exception v1

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method private setupKeypad(Lcom/android/phone/DTMFTwelveKeyDialerView;)V
    .registers 6
    .parameter "dialerView"

    .prologue
    .line 550
    sget-object v3, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 552
    .local v2, viewId:I
    invoke-virtual {p1, v2}, Lcom/android/phone/DTMFTwelveKeyDialerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 554
    .local v0, button:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 555
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 556
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_a

    .line 558
    .end local v0           #button:Landroid/view/View;
    .end local v2           #viewId:I
    :cond_29
    return-void
.end method


# virtual methods
.method public clearDigits()V
    .registers 3

    .prologue
    .line 763
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialpadDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_b

    .line 764
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialpadDigits:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 766
    :cond_b
    return-void
.end method

.method clearInCallScreenReference()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 410
    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 411
    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;

    .line 412
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 413
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFQueue:Ljava/util/Queue;

    monitor-enter v1

    .line 414
    const/4 v0, 0x0

    :try_start_11
    iput-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFBurstCnfPending:Z

    .line 415
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 416
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1d

    .line 417
    invoke-virtual {p0, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 418
    return-void

    .line 416
    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public closeDialer(Z)V
    .registers 4
    .parameter "animate"

    .prologue
    const/16 v1, 0x8

    .line 688
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 690
    if-eqz p1, :cond_13

    .line 691
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-static {v0, v1}, Lcom/android/phone/CallCard$Fade;->hide(Landroid/view/View;I)V

    .line 695
    :goto_f
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerClose()V

    .line 697
    :cond_12
    return-void

    .line 693
    :cond_13
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerView;->setVisibility(I)V

    goto :goto_f
.end method

.method protected getUiScreen()Landroid/app/Activity;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Activity;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 948
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method handleBurstDtmfConfirmation()V
    .registers 7

    .prologue
    .line 931
    const/4 v1, 0x0

    .line 932
    .local v1, dtmfChar:Ljava/lang/Character;
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFQueue:Ljava/util/Queue;

    monitor-enter v3

    .line 933
    const/4 v2, 0x0

    :try_start_5
    iput-boolean v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFBurstCnfPending:Z

    .line 934
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_31

    .line 935
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Character;

    move-object v1, v0

    .line 936
    const-string v2, "DTMFTwelveKeyDialer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The dtmf character removed from queue"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_31
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_3c

    .line 939
    if-eqz v1, :cond_3b

    .line 940
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->sendShortDtmfToNetwork(C)V

    .line 942
    :cond_3b
    return-void

    .line 938
    :catchall_3c
    move-exception v2

    :try_start_3d
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v2
.end method

.method isKeyEventAcceptable(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 863
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;

    invoke-virtual {v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->isKeyEventAcceptable(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isOpened()Z
    .registers 2

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-static {v0}, Lcom/android/phone/CallCard$Fade;->isFadingOut(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected onDialerCloseScreen()V
    .registers 2

    .prologue
    .line 956
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->onDialerClose()V

    .line 957
    return-void
.end method

.method public onDialerKeyDown(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;

    invoke-virtual {v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->onKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onDialerKeyUp(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;

    invoke-virtual {v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->onKeyUp(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onDialerOpenScreen()V
    .registers 2

    .prologue
    .line 952
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->onDialerOpen()V

    .line 953
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 624
    const/16 v1, 0x17

    if-ne p2, v1, :cond_1b

    .line 625
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 626
    .local v0, viewId:I
    sget-object v1, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 627
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_3c

    .line 641
    .end local v0           #viewId:I
    :cond_1b
    :goto_1b
    const/4 v1, 0x0

    return v1

    .line 629
    .restart local v0       #viewId:I
    :pswitch_1d
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1b

    .line 630
    sget-object v1, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->processDtmf(C)V

    goto :goto_1b

    .line 634
    :pswitch_37
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopTone()V

    goto :goto_1b

    .line 627
    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_37
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 565
    packed-switch p1, :pswitch_data_12

    .line 575
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->getUiScreen()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_c
    return v0

    .line 570
    :pswitch_d
    invoke-virtual {p0, v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    goto :goto_c

    .line 565
    nop

    :pswitch_data_12
    .packed-switch 0x4
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 587
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->getUiScreen()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "event"

    .prologue
    .line 596
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 599
    .local v0, viewId:I
    sget-object v1, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 600
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_32

    .line 615
    :cond_17
    :goto_17
    :pswitch_17
    const/4 v1, 0x0

    return v1

    .line 604
    :pswitch_19
    sget-object v1, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->processDtmf(C)V

    goto :goto_17

    .line 609
    :pswitch_2d
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopTone()V

    goto :goto_17

    .line 600
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_19
        :pswitch_2d
        :pswitch_17
        :pswitch_2d
    .end packed-switch
.end method

.method public openDialer(Z)V
    .registers 4
    .parameter "animate"

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_10

    .line 670
    if-eqz p1, :cond_11

    .line 671
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-static {v0}, Lcom/android/phone/CallCard$Fade;->show(Landroid/view/View;)V

    .line 675
    :goto_d
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerOpen()V

    .line 677
    :cond_10
    return-void

    .line 673
    :cond_11
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerView;->setVisibility(I)V

    goto :goto_d
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .registers 2
    .parameter "inCallScreen"

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 399
    return-void
.end method

.method public startDialerSession()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 459
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 463
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->getUiScreen()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dtmf_tone"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_3f

    :goto_25
    iput-boolean v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mLocalToneEnabled:Z

    .line 475
    :goto_27
    iget-boolean v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mLocalToneEnabled:Z

    if-eqz v1, :cond_3e

    .line 476
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 477
    :try_start_2e
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_30
    .catchall {:try_start_2e .. :try_end_30} :catchall_49

    if-nez v1, :cond_3d

    .line 479
    :try_start_32
    new-instance v1, Landroid/media/ToneGenerator;

    const/16 v3, 0x8

    const/16 v4, 0x50

    invoke-direct {v1, v3, v4}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_49
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_3d} :catch_44

    .line 485
    :cond_3d
    :goto_3d
    :try_start_3d
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_49

    .line 487
    :cond_3e
    return-void

    :cond_3f
    move v1, v2

    .line 463
    goto :goto_25

    .line 468
    :cond_41
    iput-boolean v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mLocalToneEnabled:Z

    goto :goto_27

    .line 480
    :catch_44
    move-exception v0

    .line 482
    .local v0, e:Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    :try_start_46
    iput-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_3d

    .line 485
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_49
    move-exception v1

    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_49

    throw v1
.end method

.method public startLocalToneIfNeeded(C)V
    .registers 7
    .parameter "c"

    .prologue
    .line 832
    sget-object v1, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 857
    :cond_c
    :goto_c
    return-void

    .line 835
    :cond_d
    iget-boolean v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mLocalToneEnabled:Z

    if-eqz v1, :cond_c

    .line 836
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 837
    :try_start_14
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v1, :cond_1d

    .line 855
    :goto_18
    monitor-exit v2

    goto :goto_c

    :catchall_1a
    move-exception v1

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1a

    throw v1

    .line 843
    :cond_1d
    :try_start_1d
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    sget-boolean v1, Lcom/android/phone/PhoneApp;->GSM_LOCAL_TONE:Z

    if-eqz v1, :cond_2c

    .line 845
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v3, 0x18

    invoke-virtual {v1, v3}, Landroid/media/ToneGenerator;->startTone(I)Z

    goto :goto_18

    .line 847
    :cond_2c
    const/4 v0, -0x1

    .line 848
    .local v0, toneDuration:I
    iget-boolean v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mShortTone:Z

    if-eqz v1, :cond_33

    .line 849
    const/16 v0, 0x78

    .line 851
    :cond_33
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    sget-object v1, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1, v0}, Landroid/media/ToneGenerator;->startTone(II)Z
    :try_end_48
    .catchall {:try_start_1d .. :try_end_48} :catchall_1a

    goto :goto_18
.end method

.method public startTone(C)V
    .registers 9
    .parameter "c"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 773
    const/4 v1, 0x1

    .line 776
    .local v1, generateTone:Z
    sget-object v5, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 824
    :cond_f
    :goto_f
    return-void

    .line 782
    :cond_10
    const/4 v2, 0x0

    .line 783
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    sget-boolean v5, Lcom/android/phone/PhoneApp;->ro_config_dsda:Z

    if-eqz v5, :cond_5a

    .line 784
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->getmActiveSubscription()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 790
    :goto_25
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/phone/TelephonyCapabilities;->useShortDtmfTones(Lcom/android/internal/telephony/Phone;Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mShortTone:Z

    .line 794
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 796
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "preferred_tty_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 806
    .local v0, TTYmode:I
    if-eq v0, v3, :cond_61

    const/4 v5, 0x3

    if-eq v0, v5, :cond_61

    move v1, v3

    .line 810
    .end local v0           #TTYmode:I
    :cond_4d
    :goto_4d
    if-eqz v1, :cond_f

    .line 812
    iget-boolean v3, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mShortTone:Z

    if-eqz v3, :cond_63

    .line 813
    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->sendShortDtmfToNetwork(C)V

    .line 819
    :goto_56
    invoke-virtual {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->startLocalToneIfNeeded(C)V

    goto :goto_f

    .line 786
    :cond_5a
    iget-object v5, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    goto :goto_25

    .restart local v0       #TTYmode:I
    :cond_61
    move v1, v4

    .line 806
    goto :goto_4d

    .line 816
    .end local v0           #TTYmode:I
    :cond_63
    const-string v3, "DTMFTwelveKeyDialer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send long dtmf for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/CallManager;->startDtmf(C)Z

    goto :goto_56
.end method

.method public stopDialerSession()V
    .registers 3

    .prologue
    .line 520
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 521
    :try_start_3
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_f

    .line 522
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 523
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 525
    :cond_f
    monitor-exit v1

    .line 526
    return-void

    .line 525
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public stopLocalToneIfNeeded()V
    .registers 3

    .prologue
    .line 888
    iget-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mShortTone:Z

    if-nez v0, :cond_10

    .line 892
    iget-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mLocalToneEnabled:Z

    if-eqz v0, :cond_10

    .line 893
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 894
    :try_start_b
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_11

    .line 900
    :goto_f
    monitor-exit v1

    .line 903
    :cond_10
    return-void

    .line 898
    :cond_11
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    goto :goto_f

    .line 900
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_17

    throw v0
.end method

.method public stopTone()V
    .registers 2

    .prologue
    .line 877
    iget-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mShortTone:Z

    if-nez v0, :cond_c

    .line 879
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->stopDtmf()V

    .line 880
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneIfNeeded()V

    .line 882
    :cond_c
    return-void
.end method
