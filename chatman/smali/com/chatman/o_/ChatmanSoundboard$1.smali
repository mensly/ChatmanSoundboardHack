.class Lcom/chatman/o_/ChatmanSoundboard$1;
.super Ljava/lang/Object;
.source "ChatmanSoundboard.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chatman/o_/ChatmanSoundboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chatman/o_/ChatmanSoundboard;


# direct methods
.method constructor <init>(Lcom/chatman/o_/ChatmanSoundboard;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chatman/o_/ChatmanSoundboard$1;->this$0:Lcom/chatman/o_/ChatmanSoundboard;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 205
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "se"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v7, 0x0

    .line 193
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v4, v7

    .line 194
    .local v1, "x":F
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x1

    aget v2, v4, v5

    .line 195
    .local v2, "y":F
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v3, v4, v5

    .line 196
    .local v3, "z":F
    iget-object v4, p0, Lcom/chatman/o_/ChatmanSoundboard$1;->this$0:Lcom/chatman/o_/ChatmanSoundboard;

    iget-object v5, p0, Lcom/chatman/o_/ChatmanSoundboard$1;->this$0:Lcom/chatman/o_/ChatmanSoundboard;

    invoke-static {v5}, Lcom/chatman/o_/ChatmanSoundboard;->access$0(Lcom/chatman/o_/ChatmanSoundboard;)F

    move-result v5

    invoke-static {v4, v5}, Lcom/chatman/o_/ChatmanSoundboard;->access$1(Lcom/chatman/o_/ChatmanSoundboard;F)V

    .line 197
    iget-object v4, p0, Lcom/chatman/o_/ChatmanSoundboard$1;->this$0:Lcom/chatman/o_/ChatmanSoundboard;

    mul-float v5, v1, v1

    mul-float v6, v2, v2

    add-float/2addr v5, v6

    mul-float v6, v3, v3

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-static {v4, v5}, Lcom/chatman/o_/ChatmanSoundboard;->access$2(Lcom/chatman/o_/ChatmanSoundboard;F)V

    .line 198
    iget-object v4, p0, Lcom/chatman/o_/ChatmanSoundboard$1;->this$0:Lcom/chatman/o_/ChatmanSoundboard;

    invoke-static {v4}, Lcom/chatman/o_/ChatmanSoundboard;->access$0(Lcom/chatman/o_/ChatmanSoundboard;)F

    move-result v4

    iget-object v5, p0, Lcom/chatman/o_/ChatmanSoundboard$1;->this$0:Lcom/chatman/o_/ChatmanSoundboard;

    invoke-static {v5}, Lcom/chatman/o_/ChatmanSoundboard;->access$3(Lcom/chatman/o_/ChatmanSoundboard;)F

    move-result v5

    sub-float v0, v4, v5

    .line 199
    .local v0, "delta":F
    iget-object v4, p0, Lcom/chatman/o_/ChatmanSoundboard$1;->this$0:Lcom/chatman/o_/ChatmanSoundboard;

    iget-object v5, p0, Lcom/chatman/o_/ChatmanSoundboard$1;->this$0:Lcom/chatman/o_/ChatmanSoundboard;

    invoke-static {v5}, Lcom/chatman/o_/ChatmanSoundboard;->access$4(Lcom/chatman/o_/ChatmanSoundboard;)F

    move-result v5

    const v6, 0x3f666666

    mul-float/2addr v5, v6

    add-float/2addr v5, v0

    invoke-static {v4, v5}, Lcom/chatman/o_/ChatmanSoundboard;->access$5(Lcom/chatman/o_/ChatmanSoundboard;F)V

    .line 200
    iget-object v4, p0, Lcom/chatman/o_/ChatmanSoundboard$1;->this$0:Lcom/chatman/o_/ChatmanSoundboard;

    invoke-static {v4}, Lcom/chatman/o_/ChatmanSoundboard;->access$4(Lcom/chatman/o_/ChatmanSoundboard;)F

    move-result v4

    const/high16 v5, 0x40200000    # 2.5f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 201
    iget-object v4, p0, Lcom/chatman/o_/ChatmanSoundboard$1;->this$0:Lcom/chatman/o_/ChatmanSoundboard;

    invoke-static {v4, v7}, Lcom/chatman/o_/ChatmanSoundboard;->access$6(Lcom/chatman/o_/ChatmanSoundboard;I)Z

    .line 202
    :cond_0
    return-void
.end method
