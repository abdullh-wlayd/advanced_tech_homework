<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>حاسبة الأرقام</title>

  <!-- Bootstrap CSS -->
  <link rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"/>

  <style>
    body {
      background-color: #f0f0f0;
      min-height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .btn-calc {
      background-color: #2d7a2d;
      color: white;
    }

    .btn-calc:hover {
      background-color: #245f24;
      color: white;
    }

    .result-value {
      color: #2d7a2d;
      font-weight: bold;
    }
  </style>
</head>

<body>

  <div class="card shadow p-4" style="width: 420px;">
    <h5 class="text-center mb-4">أدخل الأرقام المطلوبة</h5>

    <div class="row mb-3 text-center">
      <div class="col">
        <label class="form-label">Number 1</label>
        <input type="number" id="n1" class="form-control text-center" value="5"/>
      </div>
      <div class="col">
        <label class="form-label">Number 2</label>
        <input type="number" id="n2" class="form-control text-center" value="1"/>
      </div>
      <div class="col">
        <label class="form-label">Number 3</label>
        <input type="number" id="n3" class="form-control text-center" value="2"/>
      </div>
    </div>

    <button class="btn btn-calc w-100 mb-3" onclick="calculate()">
      احسب المعطيات
    </button>

    <ul class="list-group">
      <li class="list-group-item d-flex justify-content-between">
        <span class="result-value" id="res-add">-</span>
        <span class="fw-semibold">ADD (الجمع)</span>
      </li>
      <li class="list-group-item d-flex justify-content-between">
        <span class="result-value" id="res-multi">-</span>
        <span class="fw-semibold">MULTI (الضرب)</span>
      </li>
      <li class="list-group-item d-flex justify-content-between">
        <span class="result-value" id="res-max">-</span>
        <span class="fw-semibold">MAX (الأكبر)</span>
      </li>
      <li class="list-group-item d-flex justify-content-between">
        <span class="result-value" id="res-avg">-</span>
        <span class="fw-semibold">AVERAGE (المتوسط)</span>
      </li>
    </ul>

  </div>

  <script>
    function calculate() {
      const n1 = parseFloat(document.getElementById('n1').value) || 0;
      const n2 = parseFloat(document.getElementById('n2').value) || 0;
      const n3 = parseFloat(document.getElementById('n3').value) || 0;

      document.getElementById('res-add').textContent = n1 + n2 + n3;
      document.getElementById('res-multi').textContent = n1 * n2 * n3;
      document.getElementById('res-max').textContent = Math.max(n1, n2, n3);
      document.getElementById('res-avg').textContent =
        ((n1 + n2 + n3) / 3).toFixed(2);
    }

    calculate();
  </script>

</body>
</html>
